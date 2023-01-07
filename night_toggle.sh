
a=$(gsettings get org.gnome.settings-daemon.plugins.color night-light-enabled)
if [ $a == "true" ]
then
#echo $a
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false
else
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
fi
#gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
