#
# Regular cron jobs for the asus-oled package
#
0 4	* * *	root	[ -x /usr/bin/asus-oled_maintenance ] && /usr/bin/asus-oled_maintenance
