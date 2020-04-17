#!/bin/bash

#iTunes Caches
sudo mv -f /Users/$USER/Library/Application\ Support/MobileSync/Backup/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/iTunes/iPhone\ Software\ Updates/* /Users/$USER/.Trash/ > /dev/null 2>&1

#Xcode Caches
sudo mv -f /Users/$USER/Library/Developer/Xcode/DerivedData/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Developer/Xcode/Archives/* /Users/$USER/.Trash/ > /dev/null 2>&1

#System Caches
sudo mv -f /private/var/log/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Logs/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Logs/fsck_hfs.log /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Library/Logs/DiagnosticReports/*.* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /private/var/log/DiagnosticMessages/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /private/var/tmp/com.apple.messages /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Caches/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /private/var/db/diagnostics/Special/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /private/var/db/diagnostics/Persist/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /private/var/db/diagnostics/Signpost/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /private/var/db/diagnostics/HighVolume/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /private/var/db/diagnostics/timesync/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Library/Logs/DiagnosticReports/ProxiedDevice-Bridge/*.ips /Users/$USER/.Trash/ > /dev/null 2>&1

#Safari Caches
sudo mv -f /Users/$USER/Library/Containers/com.apple.Safari/Data/Library/Caches/com.apple.Safari/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /private/var/folders/ry/*/*/com.apple.Safari/com.apple.Safari/com.apple.metal/*/libraries.data /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /private/var/folders/ry/*/*/com.apple.Safari/com.apple.Safari/com.apple.metal/*/libraries.maps /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Containers/io.te0.WebView/Data/Library/Caches/WebKit /Users/$USER/.Trash/ > /dev/null 2>&1

#Chrome Caches
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/GPUCache/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/Storage/ext/*/def/GPUCache/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Caches/Google/Chrome/PnaclTranslationCache/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/*-journal /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/databases/*-journal /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/Visited\ Links /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/Top\ Sites /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/History\ Provider\ Cache /Users/*USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/Current\ Tabs /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/Network\ Action\ Predictor /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/*.ldb /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/*.log /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/Extension\ State/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/Session\ Storage/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/Current\ Session /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Application\ Support/Google/Chrome/*/Storage/ext/* /Users/$USER/.Trash/ > /dev/null 2>&1

#Others Caches
sudo mv -f /Users/$USER/Library/Containers/com.apple.QuickTimePlayerX/Data/Library/Caches/* /Users/$USER/.Trash/ > /dev/null 2>&1
sudo mv -f /Users/$USER/Library/Containers/com.apple.AppStore/Data/Library/Caches/* /Users/$USER/.Trash/ > /dev/null 2>&1

#Clean Download History
sudo sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent' > /dev/null 2>&1

#Clean Terminal History
history -c

echo done
#sudo rm -rf /Users/$USER/.Trash/*


