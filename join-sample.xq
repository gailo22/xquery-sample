xquery version "1.0";

for $item in doc("./data/order.xml")//item
let $name := doc("./data/catalog.xml")//product[number = $item/@num]/name
return <item num="{$item/@num}"
             name="{$name}"
             quan="{$item/@quantity}"/>