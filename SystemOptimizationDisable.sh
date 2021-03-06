#!/bin/bash

#Unload System Optimization
launchctl unload -w /Users/$USER/Library/LaunchAgents/com.dev-coco.MacCleaner.plist
rm -rf /Users/$USER/Library/LaunchAgents/com.dev-coco.MacCleaner.plist

#Enable Performance Mode
SystemVersion=`sw_vers -productVersion`
if [ $SystemVersion = 10.0 ] | [ $SystemVersion = 10.0.1 ] | [ $SystemVersion = 10.0.2 ] | [ $SystemVersion = 10.0.3 ] |  [ $SystemVersion = 10.0.4 ] | [ $SystemVersion = 10.1 ] | [ $SystemVersion = 10.1.1 ] | [ $SystemVersion = 10.1.2 ] | [ $SystemVersion = 10.1.3 ] | [ $SystemVersion = 10.1.4 ] | [ $SystemVersion = 10.1.5 ] | [ $SystemVersion = 10.2 ] | [ $SystemVersion = 10.2.0 ] | [ $SystemVersion = 10.2.1 ] | [ $SystemVersion = 10.2.2 ] | [ $SystemVersion = 10.2.3 ] | [ $SystemVersion = 10.2.4 ] | [ $SystemVersion = 10.2.5 ] | [ $SystemVersion = 10.2.6 ] | [ $SystemVersion = 10.2.7 ] | [ $SystemVersion = 10.2.8 ] | [ $SystemVersion = 10.3 ] | [ $SystemVersion = 10.3.0 ] | [ $SystemVersion = 10.3.1 ] | [ $SystemVersion = 10.3.2 ] | [ $SystemVersion = 10.3.3 ] | [ $SystemVersion = 10.3.4 ] | [ $SystemVersion = 10.3.5 ] | [ $SystemVersion = 10.3.6 ] | [ $SystemVersion = 10.3.7 ] | [ $SystemVersion = 10.3.8 ] | [ $SystemVersion = 10.3.9 ] | [ $SystemVersion = 10.4 ] | [ $SystemVersion = 10.4.0 ] | [ $SystemVersion = 10.4.1 ] | [ $SystemVersion = 10.4.2 ] | [ $SystemVersion = 10.4.3 ] | [ $SystemVersion = 10.4.4 ] | [ $SystemVersion = 10.4.5 ] | [ $SystemVersion = 10.4.6 ] | [ $SystemVersion = 10.4.7 ] | [ $SystemVersion = 10.4.8 ] | [ $SystemVersion = 10.4.9 ] | [ $SystemVersion = 10.4.10 ] | [ $SystemVersion = 10.4.11 ] | [ $SystemVersion = 10.5 ] | [ $SystemVersion = 10.5.0 ] | [ $SystemVersion = 10.5.1 ] | [ $SystemVersion = 10.5.2 ] | [ $SystemVersion = 10.5.3 ] | [ $SystemVersion = 10.5.4 ] | [ $SystemVersion = 10.5.5 ] | [ $SystemVersion = 10.5.6 ] | [ $SystemVersion = 10.5.7 ] | [ $SystemVersion = 10.5.8 ] | [ $SystemVersion = 10.6 ] | [ $SystemVersion = 10.6.1 ] | [ $SystemVersion = 10.6.2 ] | [ $SystemVersion = 10.6.3 ] | [ $SystemVersion = 10.6.4 ] | [ $SystemVersion = 10.6.5 ] | [ $SystemVersion = 10.6.6 ] | [ $SystemVersion = 10.6.7 ] | [ $SystemVersion = 10.6.8 ] | [ $SystemVersion = 10.7 ] | [ $SystemVersion = 10.7.1 ] | [ $SystemVersion = 10.7.2 ] | [ $SystemVersion = 10.7.3 ] | [ $SystemVersion = 10.7.4 ] | [ $SystemVersion = 10.7.5 ] | [ $SystemVersion = 10.8 ] | [ $SystemVersion = 10.8.1 ] | [ $SystemVersion = 10.8.2 ] | [ $SystemVersion = 10.8.3 ] | [ $SystemVersion = 10.8.4 ] | [ $SystemVersion = 10.8.5 ] | [ $SystemVersion = 10.9 ] | [ $SystemVersion = 10.9.1 ] | [ $SystemVersion = 10.9.2 ] | [ $SystemVersion = 10.9.3 ] | [ $SystemVersion = 10.9.4 ] | [ $SystemVersion = 10.9.5 ] | [ $SystemVersion = 10.10 ] | [ $SystemVersion = 10.10.1 ] | [ $SystemVersion = 10.10.2 ] | [ $SystemVersion = 10.10.3 ] | [ $SystemVersion = 10.10.4 ] | [ $SystemVersion = 10.10.5 ]
then
   serverinfo --setperfmode 0
else
   sudo nvram boot-args="$(nvram boot-args 2>/dev/null | sed -e $'s/boot-args\t//;s/serverperfmode=1//')"
fi

#————————————————————If you like, you can manually set the following content.————————————————————
#Enable GPU Auto Switch
#pmset -a GPUSwitch 2

#Restore Dock Delay
#defaults delete com.apple.dock autohide-time-modifier; killall Dock

#Enable Spotlight
#sudo mdutil -a -i on
#sudo launchctl load -w /System/Library/LaunchAgents/com.apple.Spotlight.plist
#sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist

