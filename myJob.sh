sed -e 's#/a/a#/f/f#g' -e 's#mkdir a#mkdir f#g' ../a/createFolders > createFolders.sh
chmod +x createFolders.sh
./createFolders.sh

sed 's#N328/d#N328/f#g' ../d/run.job > run.job

sed -e 's#a#f#g' -e '###' ../a/sedReplace.sh > sedReplace.sh
chmod +x sedReplace.sh
./sedReplace.sh

sed 's#cd a#cd f#g' ../a/srcRunAll.sh > srcRunAll.sh
chmod +x srcRunAll.sh
source srcRunAll.sh
