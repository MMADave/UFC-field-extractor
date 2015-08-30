<snippet>
  <content>
# UFC field extractor
Dependencies are jq.
#Usage
1. Download event page http://www.ufc.com/event/UFC191 for example.
2. Run the script supplying the file name: 
.'UFC field extractor.bat' UFC191

Output:
```
Demetrious Johnson vs John Dodson
Andrei Arlovski vs Frank Mir
Anthony Johnson vs Jimi Manuwa
Jan Blachowicz vs corey anderson
paige vanzant vs Alex Chambers
Ross Pearson vs paul felder
Francisco Rivera vs John Lineker
clay collard vs Tiago Trator
Joe Riggs vs ron stallings
joaquim silva vs nazareno malegarie

R:\grep fighters .\UFC191.1    | head -n 1   | jq -c .[].fightDescription

"Flyweight Championship Belt"
"Main Card"
"Main Card"
"Main Card"
"Women's Strawweight Bout"
"FOX Sports 1"
"Bantamweight Bout"
"FOX Sports 1"
"UFC Fight Pass Early Prelims"
"UFC Fight Pass Early Prelims"

R:\grep -i "<title" .\UFC191.1
    <titleUFC 191: Johnson vs. Dodson 2</title

R:\grep -i "live in" .\UFC191.1

R:\grep -i "pm et" .\UFC191.1
                                10PM/7PM ETPT
                                8PM/5PM ETPT
                                7PM/4PM ETPT
                <span id="footer-event-time" class="time"9PM/6PM ETPT</span
```

</content>
  <tabTrigger></tabTrigger>
</snippet>