sitemap demo label="Demo House"
{
	Frame {
		Group item=gFF label="First Floor" icon="firstfloor"
		Group item=gGF label="Ground Floor" icon="groundfloor"
		Group item=gC label="Cellar" icon="cellar"
		Group item=Outdoor icon="garden"
	}
    Frame label="Select Level" {
          Selection item=General_Level label="LT1 Level" mappings=[0=a0, 1=a1, 2=a2, 3=a3, 4=a4, 5=a5, 10=a10, 20=a20, 30=a30, 40=a40, 50=a50, 60=a60, 70=a70, 80=a80, 90=a90, 100=a100]
    }

	Frame label="Weather" {
		Text item=Weather_Temperature valuecolor=[Weather_LastUpdate=="Uninitialized"="lightgray",Weather_LastUpdate>90="lightgray",>25="orange",>15="green",>5="orange",<=5="blue"] {
			Frame {
				Text item=Weather_Temp_Max valuecolor=[>25="orange",>15="green",>5="orange",<=5="blue"]
				Text item=Weather_Temp_Min valuecolor=[>25="orange",>15="green",>5="orange",<=5="blue"]
				Text item=Weather_Humidity
				Text item=Weather_Humidex
				Text item=Weather_LastUpdate visibility=[Weather_LastUpdate>30] valuecolor=[Weather_LastUpdate>120="orange", Weather_LastUpdate>300="red"]
			}
			Frame {
				Switch item=Weather_Chart_Period label="Chart Period" mappings=[0="Hour", 1="Day", 2="Week"]
				Chart item=Weather_Chart period=h refresh=6000 visibility=[Weather_Chart_Period==0, Weather_Chart_Period=="Uninitialized"]
				Chart item=Weather_Chart period=D refresh=30000 visibility=[Weather_Chart_Period==1]
				Chart item=Weather_Chart period=W refresh=30000 visibility=[Weather_Chart_Period==2]
			}
		}
	}
	Frame label="Date" {
		Text item=Date
	}
	Frame label="Demo" {
		Text label="Group Demo" icon="firstfloor" {
			Switch item=Lights mappings=[OFF="All Off"]
			Group item=Heating
			Group item=Windows
			Text item=Temperature
		}
		Text label="Widget Overview" icon="chart" {
			Frame label="Binary Widgets" {
				Switch item=DemoSwitch label="Toggle Switch"
				Switch item=DemoSwitch label="Button Switch" mappings=[ON="On"]
			}
			Frame label="Discrete Widgets" {
				Selection item=Scene_General label="Scene Selection" mappings=[0=off, 1=TV, 2=Dinner, 3=Reading]
				Switch item=Scene_General label="Scene" mappings=[1=TV, 2=Dinner, 3=Reading]
				Setpoint item=Temperature_Setpoint minValue=16 maxValue=28 step=0.5
			}
			Frame label="Percent-based Widgets" {
				Slider item=DimmedLight switchSupport
				Colorpicker item=RGBLight icon="slider"
				Switch item=DemoShutter
				Slider item=DemoBlinds
			}
			Frame label="Map/Location" {
				Mapview item=DemoLocation height=10
			}

		}
		Text label="Multimedia" icon="video" {
			Frame label="Radio Control" {
				Selection item=Radio_Station mappings=[0=off, 1=HR3, 2=SWR3, 3=FFH]
				Slider item=Volume
			}
			Frame label="Multimedia Widgets" {
				Image url="http://localhost:8080/images/splash-ipad-h.png" label="openHAB" {
					Text label="http://www.openHAB.org" icon="icon"
				}
				Video url="http://demo.openhab.org/Hue.m4v"
				Webview url="http://heise-online.mobi/" height=8
			}
		}
	}
}
