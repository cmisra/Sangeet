(: Frequency distribution of notes and raag for each composition :)
file:write("D:/result.csv",
for $song in collection("Bhatkhande-Database")//swarlipi
let $raag := $song/RAAG/RAAG_NAME/text()
let $contents := $song/SHEET/LINES/LINE/ROW/COL/CONTENT/text()
let $joined_str := string-join(data($contents), ',')
let $joined_str := replace($joined_str, "<sup>|</sup>|@|u|l|\)|\(|-|,|\s+", "")
let $notes := (115,82,114,71,103,109,77,112,68,100,78,110)
let $code_points := string-to-codepoints($joined_str)
let $result := (
  for $i in $notes
    return count(index-of($code_points, $i))
  )
let $result := normalize-space(string-join($result, ","))
let $result := concat($result, ",", $raag, "&#10;")
return $result
)
