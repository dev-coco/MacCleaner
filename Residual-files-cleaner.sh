#uninstall zoom
sudo rm -rf /Users/$USER/Library/Preferences/ZoomChat.plist
sudo rm -rf /Users/$USER/Library/Internet*Plug-Ins/ZoomUsPlugIn.plugin

#uninstall avast
sudo rm -rf /Library/Application\ Support/AvastHUB
sudo rm -rf /Library/LaunchAgents/com.avast.userinit.plist
sudo rm -rf /Library/LaunchAgents/com.avast.hub.plist
sudo rm -rf /Library/LaunchDaemons/com.avast.hub.schedule.plist
sudo rm -rf /Library/LaunchDaemons/com.avast.hub.xpc.plist
sudo rm -rf /Library/LaunchDaemons/com.avast.init.plist
sudo rm -rf /Library/LaunchDaemons/com.avast.update.plist
sudo rm -rf /Library/Logs/Avast
sudo rm -rf /Library/Logs/AvastHUB

#sudo rm -rf /Users/$USER/Library/Cookies/com.avast.AAFM.binarycookies
#sudo rm -rf /Users/$USER/Library/Cookies/com.piriform.ccleaner.binarycookies
#The shell does not have permission to delete it, even if sudo is used. You can use Finder to find file and delete it.
