(: List of compositions having a particular Arohana subsequence :)
for $songs in collection ("Bhatkhande-Database")//swarlipi
let $title := $songs/INFO/TITLE/text()
let $arohana := $songs/RAAG/AROHANA/text()
return if (contains($arohana, "s-R-g")) then
  $title
