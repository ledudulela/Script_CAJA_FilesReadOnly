#!/bin/bash
# auteur : ledudulela
# version: 1.0
# màj : 2015-12-13 20:40 
# util: change permission, en lecture seule pour tous
# dépendances: zenity
OLD_IFS="$IFS"
IFS='
'
arrFilePaths=( $CAJA_SCRIPT_SELECTED_FILE_PATHS )
IFS="$OLD_IFS"
for selectedFile in "${arrFilePaths[@]}"
do
	chmod -R a-w "$selectedFile"
done
if [ $? == 0 ]
then
	zenity --info --title="Permissions" --text="Opération terminée" --timeout=10
fi
exit
