(: List of compositions having Meend :)
for $songs in collection ("Bhatkhande-Database")//swarlipi
let $title := $songs/INFO/TITLE/text()
let $contents := $songs/SHEET/LINES/LINE/ROW/COL/CONTENT/text()
let $notes := (for $song in $songs
  return $song/SHEET/LINES/LINE/ROW/COL/CONTENT/text())
return if (contains(string-join($notes , ""),"q")) then
  $title
