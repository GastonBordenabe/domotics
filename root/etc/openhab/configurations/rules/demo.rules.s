import org.openhab.core.library.types.*
import org.openhab.core.persistence.*
import org.openhab.model.script.actions.*

var Number counter = 1
var Timer timer = null

/**
 * This is a demo rule which simulates a real dimmer by reacting to increase/decrease commands 
 * and posting an updated state on the bus 
 */
rule "Dimmed Light"
	when
		Item DimmedLight received command
	then
		var Number percent = 0
		if(DimmedLight.state instanceof DecimalType) percent = DimmedLight.state as DecimalType 
			
		if(receivedCommand==INCREASE) percent = percent + 5
		if(receivedCommand==DECREASE) percent = percent - 5

		if(percent<0)   percent = 0
		if(percent>100) percent = 100
		postUpdate(DimmedLight, percent);
end

/**
 * This rule demonstrates how a NumberItem can be used to easily control the local sound system.
 * A selection widget in the UI provides easy access for this
 */
rule "Select Radio Station"
	when
		Item Radio_Station received command
	then
		switch(receivedCommand) {
			case 0 : playStream(null)
			case 1 : playStream("http://metafiles.gl-systemhaus.de/hr/hr3_2.m3u")
			case 2 : playStream("http://mp3-live.swr3.de/swr3_m.m3u")
			case 3 : playStream("http://edge.live.mp3.mdn.newmedia.nacamar.net/radioffh/livestream.mp3.m3u")
		}
end

/**
 * This rules controls the volume on the local host
 */
rule "Volume control"
	when
		Item Volume received command
	then
		if(receivedCommand instanceof PercentType) {
			setMasterVolume(receivedCommand as PercentType)
		} else {
			if(receivedCommand==INCREASE) increaseMasterVolume(20)
			if(receivedCommand==DECREASE) decreaseMasterVolume(20)	
		}
		postUpdate(Volume, masterVolume * 100)
end

/**
 * The following rules help initializing the demo items with some helpful states.
 */
rule "Initialize light states"
	when
		System started
	then
		Lights?.members.forEach(light|
			postUpdate(light, if(Math::random > 0.7) ON else OFF)
		)
end

rule "Initialize heating states"
	when 
		System started
	then
		Heating?.members.forEach(heating|
			postUpdate(heating, if(Math::random > 0.8) ON else OFF)
		)
		postUpdate(Temperature_Setpoint, 22)
end

rule "Initialize contact states"
	when 
		System started
	then
		Windows?.members.forEach(window|
			postUpdate(window, if(Math::random > 0.5) OPEN else CLOSED)
		)
end

rule "Initialize Location"
	when 
		System started
	then
		DemoLocation.postUpdate(new PointType("52.5200066,13.4049540"))
end

rule "Set random room temperatures"
	when 
		System started or
		Time cron "0 0/5 * * * ?"
	then
		Temperature?.members.forEach(temperature|
			postUpdate(temperature, 20.0 + (25.0 - (Math::random * 50.0).intValue) / 10.0)
		)
end

rule "Update max and min temperatures"
when
	Item Weather_Temperature changed or
	Time cron "0 0 0 * * ?" or
	System started
then	
	postUpdate(Weather_Temp_Max, Weather_Temperature.maximumSince(now.toDateMidnight).state)
	postUpdate(Weather_Temp_Min, Weather_Temperature.minimumSince(now.toDateMidnight).state)
	logInfo("Weather", "Temperature evolved of " + Weather_Temperature.deltaSince(now.minusMinutes(2)) + " degrees.")
end

/** shows how to use sensor values from the past */
rule "Persistence Demo"
when
	Time cron "0 * * * * ?"
then	
	if(Weather_Temperature.changedSince(now.minusMinutes(1))) {
		logInfo("PersistenceDemo", "2 minutes ago, the temperature was " + Weather_Temperature.historicState(now.minusMinutes(2)) + " degrees.")
	}
end

/** 
 * shows how to check recent switch states - very helpful to avoid executing something too often, just
 * because somebody presses a button too often (e.g. sending a notification, if the doorbell button is pressed)
 */
rule "Persistence Demo 2"
when
	Item DemoSwitch received command
then
	if(!DemoSwitch.changedSince(now.minusSeconds(5))) {
		logInfo("PersistenceDemo2", "You did not press this button during the last 5 seconds!")
	}
end

rule "Timer Demo"
when
	Item Light_GF_Corridor_Ceiling received command
then
	if(receivedCommand==ON) {
		if(timer==null) {
			// first ON command, so create a timer to turn the light off again
			timer = createTimer(now.plusSeconds(10)) [|
				sendCommand(Light_GF_Corridor_Ceiling, OFF)
			]
		} else {
			// subsequent ON command, so reschedule the existing timer
			timer.reschedule(now.plusSeconds(10))
		}
	} else if(receivedCommand==OFF) {
		// remove any previously scheduled timer
		if(timer!=null) {
			timer.cancel
			timer = null
		}	
	}
end

// Creates an item that stores the last update time of this item
rule "Records last weather update time"
when
  Item Weather_Temperature received update
then
  postUpdate(Weather_LastUpdate, new DateTimeType())
end

// This rule will be used to test Scale transformation service
rule "Compute humidex"
when
        Item Weather_Temperature changed or
	Item Weather_Humidity changed
then
	var Number T = Weather_Temperature.state as DecimalType
	var Number H = Weather_Humidity.state as DecimalType	
	var Number x = 7.5 * T/(237.7 + T)
	var Number e = 6.112 * Math::pow(10, x.doubleValue) * H/100
	var Number humidex = T + (new Double(5) / new Double(9)) * (e - 10)
	postUpdate(Weather_Humidex, humidex)
end
