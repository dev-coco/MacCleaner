#!/bin/bash

#iTunes Caches
sudo rm -rf /Users/$USER/Library/Application\ Support/MobileSync/Backup/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/iTunes/iPhone\ Software\ Updates/* > /dev/null 2>&1

#Xcode Caches
sudo rm -rf /Users/$USER/Library/Developer/Xcode/DerivedData/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Developer/Xcode/Archives/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Developer/Xcode/iOS\ Device\ Logs/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Developer/CoreSimulator/Devices/* > /dev/null 2>&1

#System Caches
sudo rm -rf /private/var/log/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Logs/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Logs/fsck_hfs.log > /dev/null 2>&1
sudo rm -rf /Library/Logs/DiagnosticReports/*.* > /dev/null 2>&1
sudo rm -rf /private/var/log/DiagnosticMessages/* > /dev/null 2>&1
sudo rm -rf /private/var/tmp/com.apple.messages > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Caches/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Caches/CloudKit > /dev/null 2>&1
sudo rm -rf /private/var/db/diagnostics/Special/* > /dev/null 2>&1
sudo rm -rf /private/var/db/diagnostics/Persist/* > /dev/null 2>&1
sudo rm -rf /private/var/db/diagnostics/Signpost/* > /dev/null 2>&1
sudo rm -rf /private/var/db/diagnostics/HighVolume/* > /dev/null 2>&1
sudo rm -rf /private/var/db/diagnostics/timesync/* > /dev/null 2>&1
sudo rm -rf /Library/Logs/DiagnosticReports/ProxiedDevice-Bridge/*.ips > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/CrashReporter/*  > /dev/null 2>&1

#Safari Caches
sudo rm -rf /Users/$USER/Library/Containers/com.apple.Safari/Data/Library/Caches/com.apple.Safari/* > /dev/null 2>&1
sudo rm -rf /private/var/folders/ry/*/*/com.apple.Safari/com.apple.Safari/com.apple.metal/*/libraries.data > /dev/null 2>&1
sudo rm -rf /private/var/folders/ry/*/*/com.apple.Safari/com.apple.Safari/com.apple.metal/*/libraries.maps > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Containers/io.te0.WebView/Data/Library/Caches/WebKit > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Safari/History.db* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Safari/RecentlyClosedTabs.plist > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Safari/CloudHistoryRemoteConfiguration.plist > /dev/null 2>&1

#Chrome Caches
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/GPUCache/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/Storage/ext/*/def/GPUCache/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Caches/Google/Chrome/PnaclTranslationCache/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/*-journal > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/databases/*-journal > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/Visited\ Links > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/Top\ Sites > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/History\ Provider\ Cache /Users/*USER/.Trash/ > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/Current\ Tabs > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/Network\ Action\ Predictor > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/*.ldb > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/*.log > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/Extension\ State/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/Session\ Storage/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/Current\ Session > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Google/Chrome/*/Storage/ext/* > /dev/null 2>&1

#Clean Download History
sudo sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent' > /dev/null 2>&1

#Clean Terminal History
sudo rm -rf /Users/$USER/.bash_sessions/* > /dev/null 2>&1
history -c

#Applications Caches
sudo rm -rf /Users/$USER/Library/Containers/com.apple.QuickTimePlayerX/Data/Library/Caches/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Containers/com.apple.AppStore/Data/Library/Caches/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Containers/com.bitdefender.BitdefenderVirusScanner/Data/Library/Application\ Support/Bitdefender\ Virus\ Scanner/antivirus.bundle > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Containers/com.bitdefender.BitdefenderVirusScanner/Data/Library/Caches/com.bitdefender.BitdefenderVirusScanner/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Application\ Support/Combo\ Cleaner > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Containers/com.apple.news/Data/Library/Caches/* > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Containers/dev-coco.MusicPlayer/Data/Library/Caches/WebKit > /dev/null 2>&1
sudo rm -rf /Users/$USER/Library/Containers/com.apple.Notes/Data/Library/Caches/* > /dev/null 2>&1
sudo rm -rf /private/var/folders/*/*/*/com.apple.desktoppicture/* > /dev/null 2>&1
sudo rm -rf /private/var/folders/*/*/*/dev-coco.MusicPlayer > /dev/null 2>&1
sudo rm -rf /private/var/folders/*/*/*/com.apple.Preview > /dev/null 2>&1
sudo rm -rf /private/var/folders/*/*/*/com.apple.Notes > /dev/null 2>&1
sudo rm -rf /private/var/folders/*/*/*/com.bitdefender.BitdefenderVirusScanner > /dev/null 2>&1
sudo rm -rf /private/var/folders/*/*/*/com.apple.Notes > /dev/null 2>&1
sudo rm -rf /private/var/folders/*/*/*/com.apple.Safari > /dev/null 2>&1
sudo rm -rf /private/var/folders/*/*/*/com.apple.Safari.CacheDeleteExtension/WebKit/MediaCache > /dev/null 2>&1
sudo rm -rf /Library/Caches/Desktop\ Pictures/*/* > /dev/null 2>&1

sudo rm -rf /Users/$USER/.Trash/*  > /dev/null 2>&1
echo done
