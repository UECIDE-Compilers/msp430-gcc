

build:

install: install-${DEB_HOST_ARCH}

install-linux-amd64:
	wget -c http://energia.nu/files/msp430_tools_linux64_05_2015.tar.bz2
	rm -rf tmp
	mkdir -p tmp
	tar -C tmp -jxf msp430_tools_linux64_05_2015.tar.bz2
	mkdir -p ${DESTDIR}/compilers/msp430-gcc
	cp -R tmp/msp430/* ${DESTDIR}/compilers/msp430-gcc
	cp config/compiler.txt ${DESTDIR}/compilers/msp430-gcc

install-linux-i386:
	wget -c http://energia.nu/files/msp430_tools_linux32_05_2015.tar.bz2
	rm -rf tmp
	mkdir -p tmp
	tar -C tmp -jxf msp430_tools_linux32_05_2015.tar.bz2
	mkdir -p ${DESTDIR}/compilers/msp430-gcc
	cp -R tmp/msp430/* ${DESTDIR}/compilers/msp430-gcc
	cp config/compiler.txt ${DESTDIR}/compilers/msp430-gcc

install-windows-amd64:
	wget -c http://energia.nu/files/msp430_tools_windows_05_2015.zip
	rm -rf tmp
	mkdir -p tmp
	unzip -d tmp msp430_tools_windows_05_2015.zip
	mkdir -p ${DESTDIR}/compilers/msp430-gcc
	cp -R tmp/msp430/* ${DESTDIR}/compilers/msp430-gcc
	cp config/compiler.txt ${DESTDIR}/compilers/msp430-gcc

install-windows-i386:
	wget -c http://energia.nu/files/msp430_tools_mac_05_2015.zip
	rm -rf tmp
	mkdir -p tmp
	unzip -d tmp msp430_tools_mac_05_2015.zip
	mkdir -p ${DESTDIR}/compilers/msp430-gcc
	cp -R tmp/msp430/* ${DESTDIR}/compilers/msp430-gcc
	cp config/compiler.txt ${DESTDIR}/compilers/msp430-gcc

install-darwin-amd64:
	wget -c http://energia.nu/files/msp430_tools_mac_05_2015.zip
	rm -rf tmp
	mkdir -p tmp
	unzip -d tmp msp430_tools_mac_05_2015.zip
	mkdir -p ${DESTDIR}/compilers/msp430-gcc
	cp -R tmp/msp430/* ${DESTDIR}/compilers/msp430-gcc
	cp config/compiler.txt ${DESTDIR}/compilers/msp430-gcc



#	wget -c http://energia.nu/files/msp430_tools_mac_05_2015.zip
#	wget -c http://energia.nu/files/arm_tools_mac.zip
#	wget -c http://energia.nu/files/msp430_tools_linux32_05_2015.tar.bz2
#	wget -c http://energia.nu/files/arm_tools_linux32.tar.bz2
#	wget -c http://energia.nu/files/arm_tools_linux64.tar.bz2
#	wget -c http://energia.nu/files/msp430_tools_windows_05_2015.tar.bz2
#	wget -c http://energia.nu/files/arm_tools_windows.tar.bz2
#
#	wget -c http://energia.nu/files/tools-common-macosx.tar.bz2
#	wget -c http://energia.nu/files/tools-common-linux32.tar.bz2
#	wget -c http://energia.nu/files/tools-common-linux64.tar.bz2
#	wget -c http://energia.nu/files/tools-common-windows.tar.bz2

packages:
	upkg-buildpackage -B -alinux-amd64
	upkg-buildpackage -B -alinux-i386
#	upkg-buildpackage -B -alinux-armhf
#	upkg-buildpackage -B -alinux-armel
	upkg-buildpackage -B -adarwin-amd64
	upkg-buildpackage -B -awindows-amd64
	upkg-buildpackage -B -awindows-i386

