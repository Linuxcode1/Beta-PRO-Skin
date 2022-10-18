#!/bin/sh
#########################################################
version=5.4
description="NitroAdvanceFHD" !!!

#########################################################

#########################################################
PACKAGE_DIR='TeamNitro/main/skins'
MY_FILE="NitroAdvanceFHD.tar.gz"

#########################################################
MY_MAIN_URL="https://raw.githubusercontent.com/biko-73/"
MY_URL=$MY_MAIN_URL$PACKAGE_DIR'/'$MY_FILE
MY_TMP_FILE="/tmp/"$MY_FILE

MY_SEP='============================================================='
echo $MY_SEP
echo 'Downloading '$MY_FILE' ...'
echo $MY_SEP
echo ''
wget -T 2 $MY_URL -P "/tmp/"
rm -rf "/usr/share/enigma2/NitroAdvanceFHD"

if [ -f $MY_TMP_FILE ]; then

	echo ''
	echo $MY_SEP
	echo 'Extracting ...'
	echo $MY_SEP
	echo ''
	tar -xf $MY_TMP_FILE -C /
	MY_RESULT=$?

	rm -f $MY_TMP_FILE > /dev/null 2>&1

	echo ''
	echo ''
	
# ------------------------------------------------------------------------------------------------------------
