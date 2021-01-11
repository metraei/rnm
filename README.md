# Roblox Number Module

Roblox Number Module is a module for working with numbers in Roblox.

#### Random `( n : number )`
Return a random number
```lua
rbx.random() -- result: 0 - 1
rbx.random( n ) -- result: 0 - n
rbx.random( n1 , n2 ) -- result: n1 - n2
rbx.random( n1 , n2 , n3 , n4 , ... ) -- result: n1 - n2  or  n3 - n4  or  ...
```

#### round `( n : number, g : number )`
Return a rounded number
```lua
rbx.round( 123.4567 ) -- result: 123
rbx.round( 123.9876 ) -- result: 124
rbx.round( 123.4567 , 10 ) -- result: 123.5
```

#### comma  `( n : number, r : bool )`
Return a string of numbers with commas, or a number without commas
```lua
rbx.round( 123456789 ) -- result: 123,456,789
rbx.round( "123,456,789", true ) -- result: 123456789
```

#### shorten `( n : number, d : number )`
Return a shorten version of the number
```lua
rbx.round( 1234 ) -- result: 1k
rbx.round( 1234, 1 ) -- result: 1.2k
rbx.round( -123456789 , 3 ) -- result: -123.456m
```
