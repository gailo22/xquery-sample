xquery version "1.0";

let $books := doc('./data/books.xml')

for $b in $books
return {$b//book}