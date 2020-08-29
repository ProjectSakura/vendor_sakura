# Specify colors utilized in the terminal
red='\033[0;31m'             #  red
grn='\033[0;32m'             #  green
ylw='\033[0;33m'             #  yellow
blu='\033[0;34m'             #  blue
ppl='\033[0;35m'             #  purple
cya='\033[0;36m'             #  cyan

echo -e ${blu}"=========================================================================="
echo -e ${ylw}"* ╭━━━╮╱╱╱╱╱╱╱╱╱╱╱╭╮╱╭━━━╮╱╱╭╮                                            "
echo -e ${ylw}"* ┃╭━╮┃╱╱╱╱╭╮╱╱╱╱╭╯╰╮┃╭━╮┃╱╱┃┃                                            "
echo -e ${ylw}"* ┃╰━╯┣━┳━━╋╋━━┳━┻╮╭╯┃╰━━┳━━┫┃╭┳╮╭┳━┳━━╮                                  "
echo -e ${ylw}"* ┃╭━━┫╭┫╭╮┣┫┃━┫╭━┫┃╱╰━━╮┃╭╮┃╰╯┫┃┃┃╭┫╭╮┃                                  "
echo -e ${ylw}"* ┃┃╱╱┃┃┃╰╯┃┃┃━┫╰━┫╰╮┃╰━╯┃╭╮┃╭╮┫╰╯┃┃┃╭╮┃                                  "
echo -e ${ylw}"* ╰╯╱╱╰╯╰━━┫┣━━┻━━┻━╯╰━━━┻╯╰┻╯╰┻━━┻╯╰╯╰╯                                  "
echo -e ${ylw}"* ╱╱╱╱╱╱╱╱╭╯┃                                                             "
echo -e ${ylw}"* ╱╱╱╱╱╱╱╱╰━╯                                                             "
echo -e ${cya}"* THANK YOU FOR BUILDING PROJECT SAKURA                                   "
echo -e ${blu}"=========================================================================="
echo -e ${cya}"You can use the below generated json to push OTA."
echo " "
echo "{"
echo '"response": ['
echo "{"
echo ' "datetime":' "\"$(grep ro\.build\.date\.utc $OUT/system/build.prop | cut -d= -f2)\","
echo ' "filename":' "\"$(basename $(ls $OUT/ProjectSakura*.zip))\","
echo ' "id":' "\"$((cat $OUT/ProjectSakura*.zip.md5sum) | cut -d ' ' -f1)\","
echo ' "romtype":'"\"nightly\","
echo ' "size":' "$(stat -c%s $OUT/ProjectSakura*.zip)",
echo ' "url":' "\"https://master.dl.sourceforge.net/project/projectsakura/$LINEAGE_BUILD/$(basename $(ls $OUT/ProjectSakura*.zip))\","
echo ' "version":' "\"2.Q\""
echo "}"
echo "]"
echo "}"
echo " "
echo -e ${grn}"BUILD IS DONE!"
