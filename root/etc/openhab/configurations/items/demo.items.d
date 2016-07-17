Group All
Group gGF 		(All)
Group gFF 		(All)
Group gC 		(All)
Group Outdoor 	(All)
Group Shutters 	(All)
Group Weather 	(All)
Group Status 	(All)

Group GF_Living 	"Living Room" 	<video> 	(gGF)
Group GF_Kitchen 	"Kitchen" 		<kitchen> 	(gGF)
Group GF_Toilet 	"Toilet" 		<bath> 		(gGF)
Group GF_Corridor 	"Corridor" 		<corridor> 	(gGF)

Group FF_Bath 		"Bathroom" 		<bath> 		(gFF)
Group FF_Office 	"Office" 		<office> 	(gFF)
Group FF_Child 		"Child's Room" 	<boy1> 		(gFF)
Group FF_Bed 		"Bedroom" 		<bedroom> 	(gFF)
Group FF_Corridor 	"Corridor" 		<corridor> 	(gFF)

/* active groups */
Group:Switch:OR(ON, OFF) 		Lights 		"All Lights [(%d)]" 								(All)
Group:Switch:OR(ON, OFF) 		Heating 	"No. of Active Heatings [(%d)]" 	<heating> 		(All)
Group:Number:AVG 				Temperature	"Avg. Room Temperature [%.1f °C]" 	<temperature>	(Status)
Group:Contact:OR(OPEN, CLOSED) 	Windows 	"Open windows [(%d)]"				<contact>		(All)


/* Lights */
Dimmer DimmedLight           		"Patio"         (GF_Living, Lights) {mqtt=">[broker1:LT1/get/duty:command:*:default],<[broker1:LT1/send/duty:state:REGEX(.*,(.*),.*)]"}
Number display_table           		"Patio [%d %%]" (GF_Living, Lights) {mqtt="<[broker1:LT1/send/duty:state:REGEX(.*,(.*),.*)]"}

Dimmer Dimmed2           		"Salon"         (GF_Living, Lights) {mqtt=">[broker1:LT2/get/duty:command:*:default],<[broker1:LT2/send/duty:state:REGEX(.*,(.*),.*)]"}
Number display_LT2           		"Salon [%d %%]" (GF_Living, Lights) {mqtt="<[broker1:LT2/send/duty:state:REGEX(.*,(.*),.*)]"}

Dimmer Dimmed3           		"Ingreso"         (GF_Living, Lights) {mqtt=">[broker1:LT3/get/duty:command:*:default],<[broker1:LT3/send/duty:state:REGEX(.*,(.*),.*)]"}
Number display_LT3           		"Ingreso [%d %%]" (GF_Living, Lights) {mqtt="<[broker1:LT3/send/duty:state:REGEX(.*,(.*),.*)]"}

Dimmer Dimme4           		"Baño"         (GF_Living, Lights) {mqtt=">[broker1:LT4/get/duty:command:*:default],<[broker1:LT4/send/duty:state:REGEX(.*,(.*),.*)]"}
Number display_LT4           		"Baño [%d %%]" (GF_Living, Lights) {mqtt="<[broker1:LT4/send/duty:state:REGEX(.*,(.*),.*)]"}



Color  coloralgo                    "COLOR"    (GF_Living, Lights)
Selection Radio_Station "Radio Stations"       (GF_Living, Lights)

Number General_Level    "General Level" {mqtt=">[broker1:LT1/get/duty:command:*:default]"}


Switch Light_GF_Corridor_Ceiling 	"Ceiling" 		(GF_Corridor, Lights)
Switch Light_GF_Kitchen_Ceiling 	"Ceiling" 		(GF_Kitchen, Lights)
Switch Light_GF_Kitchen_Table 		"Table" 		(GF_Kitchen, Lights)
Switch Light_GF_Corridor_Wardrobe 	"Wardrobe"	 	(GF_Corridor, Lights)
Switch Light_GF_Toilet_Ceiling 		"Ceiling" 		(GF_Toilet, Lights)
Switch Light_GF_Toilet_Mirror 		"Mirror" 		(GF_Toilet, Lights)
Switch mySwitch                     "mySwitch"      (GF_Living, Lights)      {mqtt=">[broker1:LT1/get/duty:command:ON:11.3],>[broker1:LT1/get/duty:command:OFF:37.3]"}


Switch Light_FF_Bath_Ceiling 		"Ceiling" 		(FF_Bath, Lights)
Switch Light_FF_Bath_Mirror 		"Mirror" 		(FF_Bath, Lights)
Switch Light_FF_Corridor_Ceiling 	"Corridor" 		(FF_Corridor, Lights)
Switch Light_FF_Office_Ceiling 		"Ceiling" 		(FF_Office, Lights)
Switch Light_FF_Child_Ceiling 		"Ceiling" 		(FF_Child, Lights)
Switch Light_FF_Bed_Ceiling 		"Ceiling" 		(FF_Bed, Lights)

Switch Light_C_Corridor_Ceiling 	"Ceiling" 		(gC, Lights)
Switch Light_C_Staircase 			"Staircase" 	(gC, Lights)
Switch Light_C_Washing_Ceiling 		"Washing" 		(gC, Lights)
Switch Light_C_Workshop 			"Workshop" 		(gC, Lights)

Switch Light_Outdoor_Garage 		"Garage" 		(Outdoor, Lights)
Switch Light_Outdoor_Terrace 		"Terrace" 		(Outdoor, Lights)
Switch Light_Outdoor_Frontdoor 		"Frontdoor"		(Outdoor, Lights)

/* Heating */
Switch Heating_GF_Corridor 	"GF Corridor" 	<heating>	(GF_Corridor, Heating)
Switch Heating_GF_Toilet 	"Toilet"	 	<heating>	(GF_Toilet, Heating)
Switch Heating_GF_Living 	"Livingroom" 	<heating>	(GF_Living, Heating)
Switch Heating_GF_Kitchen 	"Kitchen" 		<heating>	(GF_Kitchen, Heating)

Switch Heating_FF_Bath 		"Bath" 			<heating>	(FF_Bath, Heating)
Switch Heating_FF_Office 	"Office" 		<heating>	(FF_Office, Heating)
Switch Heating_FF_Child 	"Child's Room" 	<heating>	(FF_Child, Heating)
Switch Heating_FF_Bed 		"Bedroom" 		<heating>	(FF_Bed, Heating)

/* Rollershutters */
Switch Shutter_all (Shutters)

Rollershutter Shutter_GF_Toilet 		"Toilet"		(GF_Toilet, Shutters)
Rollershutter Shutter_GF_Kitchen 		"Kitchen"		(GF_Kitchen, Shutters)
Rollershutter Shutter_GF_Living 		"Livingroom"	(GF_Living, Shutters)

Rollershutter Shutter_FF_Bed 			"Bedroom"		(FF_Bed, Shutters)
Rollershutter Shutter_FF_Bath 			"Bath"			(FF_Bath, Shutters)
Rollershutter Shutter_FF_Office_Window	"Office Window"	(FF_Office, Shutters)
Rollershutter Shutter_FF_Office_Door 	"Office Door"	(FF_Office, Shutters)

/* Indoor Temperatures */
Number Temperature_GF_Corridor 	"Temperature [%.1f °C]"	<temperature>	(Temperature, GF_Corridor)
Number Temperature_GF_Toilet 	"Temperature [%.1f °C]"	<temperature>	(Temperature, GF_Toilet)
Number Temperature_GF_Living 	"Temperature [%.1f °C]"	<temperature>	(Temperature, GF_Living)

/* Number MyTemp                   "MyTemp [%.1f °F]"      <temperature>    (Temperature, GF_Living) {mqtt="<[broker1:temperature/farenheit:state:REGEX(.*,(.*),.*)]"} */

Number Temperature_GF_Kitchen 	"Temperature [%.1f °C]"	<temperature>	(Temperature, GF_Kitchen)
Number Temperature_FF_Bath 		"Temperature [%.1f °C]"	<temperature>	(Temperature, FF_Bath)
Number Temperature_FF_Office 	"Temperature [%.1f °C]"	<temperature>	(Temperature, FF_Office)
Number Temperature_FF_Child 	"Temperature [%.1f °C]"	<temperature>	(Temperature, FF_Child)
Number Temperature_FF_Bed 		"Temperature [%.1f °C]"	<temperature>	(Temperature, FF_Bed)

/* Windows */
Contact Window_GF_Frontdoor 	"Frontdoor [MAP(en.map):%s]"		(GF_Corridor, Windows)
Contact Window_GF_Kitchen 		"Kitchen [MAP(en.map):%s]"			(GF_Kitchen, Windows)
Contact Window_GF_Living 		"Terrace door [MAP(en.map):%s]"		(GF_Living, Windows)
Contact Window_GF_Toilet 		"Toilet [MAP(en.map):%s]"			(GF_Toilet, Windows)

Contact Window_FF_Bath 			"Bath [MAP(en.map):%s]"				(FF_Bath, Windows)
Contact Window_FF_Bed 			"Bedroom [MAP(en.map):%s]"			(FF_Bed, Windows)
Contact Window_FF_Office_Window "Office Window [MAP(en.map):%s]"	(FF_Office, Windows)
Contact Window_FF_Office_Door 	"Balcony Door [MAP(en.map):%s]"		(FF_Office, Windows)

Contact Garage_Door 			"Garage Door [MAP(en.map):%s]"		(Outdoor, Windows)

Group Weather_Chart													(Weather)
Number Weather_Temperature 		"Outside Temperature [%.1f °C]"	<temperature> (Weather_Chart) { http="<[http://weather.yahooapis.com/forecastrss?w=638242&u=c:60000:XSLT(yahoo_weather_temperature.xsl)]" }
Number Weather_Humidity 		"Outside Humidity [%.1f %%]"	<temperature> (Weather) { http="<[http://weather.yahooapis.com/forecastrss?w=638242&u=c:60000:XSLT(yahoo_weather_humidity.xsl)]" }
Number Weather_Humidex			"Humidex [SCALE(humidex.scale):%s]" 			(Weather)
Number Weather_Temp_Max 		"Todays Maximum [%.1f °C]"	<temperature> (Weather_Chart)
Number Weather_Temp_Min 		"Todays Minimum [%.1f °C]"	<temperature> (Weather_Chart)
Number Weather_Chart_Period		"Chart Period"
DateTime Weather_LastUpdate		"Last Update [%1$ta %1$tR]"	<clock>

/* NTP binding demo item */
DateTime		Date			"Date [%1$tA, %1$td.%1$tm.%1$tY]"	<calendar>	{ ntp="Europe/Berlin:de_DE" }

/* Demo items */
Switch DemoSwitch				"Switch"
Dimmer DimmedLight				"Dimmer [%d %%]"		<slider>
Color  RGBLight					"RGB Light"				<slider>
Rollershutter DemoShutter	 	"Roller Shutter"
Dimmer DemoBlinds			 	"Blinds [%d %%]"		<rollershutter>
Number Scene_General			"Scene"					<sofa>
Number Radio_Station			"Radio"					<network>
Dimmer Volume 					"Volume [%.1f %%]"
Number Temperature_Setpoint		"Temperature [%.1f °C]" <temperature>

String UnknownDevices    "Unknown Devices in Range: [%s]" { bluetooth="?" }
Number NoOfPairedDevices "Paired Devices in Range: [%d]"  { bluetooth="!" }

/* Locations */
Location DemoLocation			"Brandenburg Gate Berlin"
