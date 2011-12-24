xquery version "1.0";

let $books := doc('./data/books.xml')

(: using sql like :)
(:
for $b in $books//book
where $b/author = 'Chris Wallace'
return $b/title
:)


(: using xpath :)
return $books//book[author = 'Chris Wallace']/title

