declare function local:NgayO($ngayden as xs:date?, $ngaydi as xs:date?) as xs:decimal?{
let $string := xs:string(xs:date($ngaydi) - xs:date($ngayden))
let $string := substring-before($string, "D")
let $string := substring-after($string, "P")
return if($string = "") then(
    let $day := 1
    return $day
    ) else(
    let $day := xs:decimal($string)
    return $day
    )
};
<text>{local:NgayO(xs:date("2012-01-20"), xs:date("2012-02-20"))}</text>