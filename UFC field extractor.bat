grep fighters %1  | head -n 1 | jq -c .[].fighters | sed 's/^^..\^|..$//g' |  sed 's/\",\"/ vs /' | sed 's/-/ /g' 
grep fighters %1  | head -n 1 | jq -c .[].fightDescription
grep -i "<title>" %1
grep -i "live in" %1
grep -i "pm et" %1
