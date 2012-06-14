NAME=asus-oled

git-buildpackage:
	git-buildpackage --git-upstream-branch=master --git-debian-branch=debian

clean:
	dh_clean