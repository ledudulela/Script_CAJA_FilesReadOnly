#!/bin/bash
# auteur : ledudulela
# version: 1.0
# màj : 2015-12-13 15:40 
# util: change permission, en lecture écriture pour l'utilisateur
# dépendances: zenity
OLD_IFS="$IFS"
IFS='
'
arrFilePaths=( $CAJA_SCRIPT_SELECTED_FILE_PATHS )
IFS="$OLD_IFS"
for selectedFile in "${arrFilePaths[@]}"
do
	chmod -R u+w "$selectedFile"
done
if [ $? == 0 ]
then
	zenity --info --title="Permissions" --text="Opération terminée" --timeout=10
fi
exit
