# Specify colors utilized in the terminal
red='\033[0;31m'             #  red
grn='\033[0;32m'             #  green
ylw='\033[0;33m'             #  yellow
blu='\033[0;34m'             #  blue
ppl='\033[0;35m'             #  purple
cya='\033[0;36m'             #  cyan

echo "# GENERATING OTA JSON #"
echo "{"
echo '"response": ['
echo "{"
echo ' "datetime":' "\"$(grep ro\.build\.date\.utc $OUT/system/build.prop | cut -d= -f2)\","
echo ' "filename":' "\"$(basename $(ls $OUT/ProjectSakura*.zip))\","
echo ' "id":' "\"$((md5sum $OUT/ProjectSakura*.zip) | cut -d ' ' -f1)\","
echo ' "romtype":'"\"monthly\","
echo ' "size":' "$(stat -c%s $OUT/ProjectSakura*.zip)",
echo ' "support":' "false,"
echo ' "url":' "\"https://master.dl.sourceforge.net/project/projectsakura/$LINEAGE_BUILD/$(basename $(ls $OUT/ProjectSakura*.zip))\","
echo ' "updater":' "true,"
echo ' "version":' "\"9.4\""
echo "}"
echo "]"
echo "}"
echo " "
echo -e ${grn}"DONE!"
