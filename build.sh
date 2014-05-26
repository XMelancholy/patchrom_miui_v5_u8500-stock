#!/bin/bash

# Author: XianGxin

# ./build.sh b //make bootimg
# ./build.sh c //make clean
# ./build.sh f //make fullota
# ./build.sh z //make zipfile
# ./build.sh a //make clean + fullota.zip + boot.img




if [[ $# = 1 ]]; then
		cd ..;
		. build/envsetup.sh;
		cd u8500-stock;
	if [[ $? = 0 ]]; then
		case $1 in
		b)
			./kernel/tools/mkbootfs ./kernel/ramdisk > ./ramdisk.cpio;
			cat ramdisk.cpio | gzip > ramdisk.img;
			./kernel/tools/mkbootimg --kernel ./kernel/zImage --ramdisk ./ramdisk.img --cmdline "" --base 0x0 --pagesize 2048 --ramdisk_offset 0x02000000 -o boot.img;
			rm ramdisk.cpio ramdisk.img;
			rm stockrom/boot.img;
			mv boot.img stockrom/;
		;;
		bb)

			if [ -e out/Miui_V5_Bambook_u8500_$(date +%Y%m%d) ]; then
				./kernel/tools/mkbootfs ./kernel/ramdisk > ./ramdisk.cpio;
				cat ramdisk.cpio | gzip > ramdisk.img;
				./kernel/tools/mkbootimg --kernel ./kernel/zImage --ramdisk ./ramdisk.img --cmdline "" --base 0x0 --pagesize 2048 --ramdisk_offset 0x02000000 -o boot.img;
				rm ramdisk.cpio ramdisk.img;
				mv out/Miui_V5_Bambook_u8500_$(date +%Y%m%d).zip ./rom.zip;
				zip -d rom.zip boot.img;
				zip -m rom.zip boot.img;
				mv rom.zip out/Miui_V5_Bambook_u8500_$(date +%Y%m%d).zip;
			else
				make fullota;
				mv out/fullota.zip ./rom.zip;
				./kernel/tools/mkbootfs ./kernel/ramdisk > ./ramdisk.cpio;
				cat ramdisk.cpio | gzip > ramdisk.img;
				./kernel/tools/mkbootimg --kernel ./kernel/zImage --ramdisk ./ramdisk.img --cmdline "" --base 0x0 --pagesize 2048 --ramdisk_offset 0x02000000 -o boot.img;
				rm ramdisk.cpio ramdisk.img;
				zip -d rom.zip boot.img;
				zip -m rom.zip boot.img;
				mv rom.zip out/Miui_V5_Bambook_u8500_$(date +%Y%m%d).zip;
			fi
		;;
		c)
			make clean;
		;;
		f)
			if [ -e out/fullota.zip ]; then
				echo 'Have fullota.zip';
			else
				make fullota;
			fi
		;;
		z)
			if [ -e out/Miui_V5_Bambook_u8500_$(date +%Y%m%d) ]; then
				echo 'MV Miui_V5_Bambook_u8500.zip';
				mv out/fullota.zip out/Miui_V5_Bambook_u8500_$(date +%Y%m%d).zip;
			else
				if [ -e out/fullota.zip ]; then
					echo 'Have fullota.zip';
				else
					make clean;
					make fullota;
				fi
					echo 'Make Miui_V5_Bambook_u8500.zip';
					mv out/fullota.zip out/Miui_V5_Bambook_u8500_$(date +%Y%m%d).zip;
			fi
		;;
		a)
			make clean;
			./kernel/tools/mkbootfs ./kernel/ramdisk > ./ramdisk.cpio;
			cat ramdisk.cpio | gzip > ramdisk.img;
			./kernel/tools/mkbootimg --kernel ./kernel/zImage --ramdisk ./ramdisk.img --cmdline "" --base 0x0 --pagesize 2048 --ramdisk_offset 0x02000000 -o boot.img;
			rm ramdisk.cpio ramdisk.img;
			rm stockrom/boot.img;
			mv boot.img stockrom/;
			make fullota;
			mv out/fullota.zip out/Miui_V5_Bambook_u8500_$(date +%Y%m%d).zip;
			echo 'Make Miui_V5_Bambook_u8500.zip ok';
		;;
		*)
			echo 'ERROR: Unknow option';
			exit -1;
		;;
		esac
	else
		echo 'ERROR: Unknow option';
		exit -1;
	fi
else
	echo 'ERROR: ./build.sh ? (option)';
	exit -1;
fi


