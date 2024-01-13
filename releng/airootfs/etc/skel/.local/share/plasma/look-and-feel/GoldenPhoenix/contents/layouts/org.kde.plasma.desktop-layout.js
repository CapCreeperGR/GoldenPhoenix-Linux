/*******Panel Top*********/
paneltop = new Panel
paneltop.hiding = "none"
paneltop.location = "top"
paneltop.alignment = "center"
paneltop.height = 40
paneltop.offset = 0

startMenu = paneltop.addWidget("org.kde.plasma.kickoff")
startMenu.currentConfigGroup = ["General"]
startMenu.writeConfig("icon", userDataPath()+"/.local/share/plasma/look-and-feel/GoldenPhoenix/contents/icons/start.svg")
thermalMonitor = paneltop.addWidget("org.kde.olib.thermalmonitor")
thermalMonitor.currentConfigGroup = ["General"]
thermalMonitor.writeConfig("sensors", "[{\"name\":\"CPU\",\"sensorId\":\"cpu/all/averageTemperature\"},{\"name\":\"GPU\",\"sensorId\":\"gpu/gpu1/temperature\"}]")
paneltop.addWidget("org.kde.plasma.panelspacer")
inlineClock = paneltop.addWidget("org.kde.plasma.betterinlineclock")
inlineClock.currentConfigGroup = ["Appearence"]
inlineClock.writeConfig("dateFormat", "qtDate")
inlineClock.writeConfig("fixedFont", "true")
inlineClock.writeConfig("fontFamily", "Noto Sans")
inlineClock.writeConfig("fontSize", "15")
inlineClock.writeConfig("enabledCalendarPlugins", "/usr/lib/qt/plugins/plasmacalendarplugins/astronomicalevents.so")
paneltop.addWidget("org.kde.plasma.panelspacer")

var systraprev = paneltop.addWidget("org.kde.plasma.systemtray")
var SystrayContainmentId = systraprev.readConfig("SystrayContainmentId")
const systray = desktopById(SystrayContainmentId)
systray.currentConfigGroup = ["General"]
systray.writeConfig("iconSpacing", 6)

paneltop.addWidget("org.kde.plasma.marginsseparator")
            /****************************/
let allDesktops = desktops()
const width = screenGeometry(allDesktops).width
panelbottom = new Panel
panelbottom.location = "bottom"
panelbottom.height = 66
panelbottom.offset = 0
panelbottom.alignment = "center"
panelbottom.panelVisibility = "2"
for (a = 1; a < width+1; a++){
}
panelbottom.maximumLength = Number(a)
panelbottom.minimumLength = 100
panelbottom.hiding = "windowscover"
panelbottom.addWidget("org.kde.plasma.marginsseparator")
panelbottom.addWidget("org.kde.plasma.icontasks")
panelbottom.addWidget("org.kde.plasma.marginsseparator")

let topPanelID = "Panel"+" "+paneltop.id
let bottomPanelID = "Panel"+" "+panelbottom.id

const config = ConfigFile('plasmashellrc')
config.group = 'PlasmaViews'

const bottomPanelConfig = ConfigFile(config, bottomPanelID)
bottomPanelConfig.writeEntry('floating', 1)

const topPanelConfig = ConfigFile(config, topPanelID)
topPanelConfig.writeEntry('floating', 1)

panelbottom.reloadConfig()



let desktopsArray = desktopsForActivity(currentActivity());
for( var j = 0; j < desktopsArray.length; j++) {
var desktopByClock = desktopsArray[j]
}
const NumX = Number((screenGeometry(desktopByClock).width)-340)
const NumY = Number((screenGeometry(desktopByClock).height)-294)
var analogclock = desktopByClock.addWidget("com.github.prayag2.minimalistclock", NumX, NumY)

plasma.loadSerializedLayout(layout);
