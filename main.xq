(: XQuery main module :)

import module namespace http = "http://expath.org/ns/http-client";

declare function local:tiny-url-create ($url as xs:string) 
as empty-sequence()
{
    (: http:sent-request(
    <http:request
        href="http://tiny-url.com/api-create.php?url?{$url}"
        method="get" />)[2] :)
        for $a in (1 to 10)
        return {$a}
};

(: local:tiny-url-create("http://samba-xquery.com/"); :)


for $b in (1 to 10)
return {$b}