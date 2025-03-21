which p4 >& /dev/null
if [ $? -eq 0 ]; then
    alias p4-list-changelists-since="p4 changes -e"
    alias p4-list-conflicts="p4 resolve -N"
    alias p4-last-changelist="p4 changes -m1"
fi
