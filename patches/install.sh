echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="core core tools/releasetools tools/releasetools"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/realme/RMX1821/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
