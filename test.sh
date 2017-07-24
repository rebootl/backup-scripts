BACKUP_LIST="backup-test.list"

LIST=""

grep -v "^#\|^\s*$" "$BACKUP_LIST" > backup-TMP.list

#| while read -r line; do
#    LIST="${LIST}${line}\n"
#done < "$BACKUP_LIST"


#echo -e "$LIST"
