#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
 
if [ $2 = "out/framework" ];then
	echo "make framework2.jar"

	rm -fr "framework2.jar.out/smali/com/stericsson"
	mkdir -p framework2.jar.out/smali/com/stericsson
	mv "out/framework/smali/com/stericsson" "framework2.jar.out/smali/com"

fi
