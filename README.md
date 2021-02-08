# Roblox Number Module

Roblox Number Module is a module for working with numbers in Roblox.

#### Random `( n : number )`
Return a random number
```lua
nM.random() -- result: 0 - 1
nM.random( n ) -- result: 0 - n
nM.random( n1 , n2 ) -- result: n1 - n2
nM.random( n1 , n2 , n3 , n4 , ... ) -- result: n1 - n2  or  n3 - n4  or  ...
```

#### round `( n : number, g : number )`
Return a rounded number
```lua
nM.round( 123.4567 ) -- result: 123
nM.round( 123.9876 ) -- result: 124
nM.round( 123.4567 , 10 ) -- result: 123.5
```

#### comma  `( n : number / string )`
Return a string of numbers with commas, or a number without commas
```lua
nM.round( 123456789 ) -- result: 123,456,789
nM.round( "123,456,789" ) -- result: 123456789
```

#### shorten `( n : number, d : number )`
Return a shorten version of the number
```lua
nM.round( 1234 ) -- result: 1k
nM.round( 1234, 1 ) -- result: 1.2k
nM.round( -123456789 , 3 ) -- result: -123.456m
```

#### toInt ` ( n : number / string ) `
Return a converted number to integer, or the first integer in a string
```lua
nM.toInt( "Lorem ipsum 12.345 dolor sit amet.") -- result: 12
nM.toInt( 12.345 ) -- result: 12
```

#### toNum ` ( n : number / string ) `
Return the first number in a string, or self
```lua
nM.toNum( "Lorem ipsum 12.345 dolor sit amet.") -- result: 12.345
nM.toNum( 12.345 ) -- result: 12.345
```



