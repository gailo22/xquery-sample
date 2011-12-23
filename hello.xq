xquery version "1.0";

declare namespace g = "http://www.gailo.com"; 

declare function g:hello-string() as item()+ {
    for $a in (1 to 5)
        return {$a}
};

declare function g:hello-character() as item()+ {
    let $sequence := ('a', 'b', 'c', 'd', 'e', 'f')
    return $sequence
};
  
for $i in (g:hello-string(), g:hello-character())
return 
<results>
{
    for $j in {$i}
    order by name($j) descending
    return 
    <result>{$j}</result>
}
</results>

    
