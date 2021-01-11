# Roblox Number Module

Roblox Number Module is a module for working with numbers in Roblox.

#### Random `rnm.random( n : number )`
```lua
rbx.random() -- result: 0 - 1
rbx.random( n ) -- result: 0 - 123
rbx.random( n1 , n2 ) -- result: n1 - n2
rbx.random( n1 , n2 , n3 , n4 , ... ) -- result: n1 - n2  or  n3 - n4  or  ...
```

#### round `rnm.random( n : number, g : number )`
```lua
rbx.round( 123.4567 ) -- result: 123
rbx.round( 123.9876 ) -- result: 124
rbx.round( 123.4567 , 10 ) -- result: 123.5
```
