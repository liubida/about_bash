#!/bin/bash
#Description: 
# download national geographic photo of the day and set it as background

#wait for network connection to be established

[[ -n $1 ]] && sleep $1

resolution=$(xrandr |grep -o 'current [^,]*'|tr -d " "|sed 's:current::')

rss=`wget -q -O - http://feeds.nationalgeographic.com/ng/photography/photo-of-the-day/`

sleep 2

img_url=$(echo $rss|grep -o "http://[^\"]*exposure[^\"]*"|head -1)

img_url=$(echo $img_url|sed "s:360x270:$resolution:")

file_path=/home/liubida/Dropbox/Photos/national_geographic_photo_of_the_day

day=`date +%Y%m%d`

img=${file_path}/${day}.jpg

rm -f $img

wget -q -O $img $img_url

sleep 3

[[ -f ${img} ]] && gsettings set org.gnome.desktop.background picture-uri ""
sleep 3
[[ -f ${img} ]] && gsettings set org.gnome.desktop.background picture-uri "file://${img}"

exit 0
