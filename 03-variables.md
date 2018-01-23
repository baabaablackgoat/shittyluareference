# Variables
Whatever you need your variables for, usually, they're meant to store data, and to keep it accessible for later.

## Assigning variables
On the previous pages, you've seen me assigning several variables by themselves, all alone, usually something like this:

```lua
variable_name = "variable_value"
``` 

But there's more ways to do this, and there's some rules to follow.

By using the comma, you can assign multiple variables at once. This does NOT work like in Javascript, where `a,b = 5` would set both a AND b to 5. In Lua, b would now be nil - see below why. Instead, you do this:

```lua
a,b = "value_of_a", "value_of_b"
print(a,b) --returns "value_of_a    value_of_b"
```

As mentioned before, variables not given a value will be `nil`:
```lua
a,b,c = "value_a", "value_b"
print(a,b,c) --returns "value_a    value_b    nil"
```

And if you enter too many values, they are simply discarded.

```lua
a,b = "value_a", "value_b", "value_c"
print(a,b) --returns "value_a    value_b"
```

It is important to note that **all assignments in one statement occur at once.** Using this, you can for example easily swap variables:
```lua
a,b = 1,2  --1, 2
a,b = b,a  
print(a,b) --2, 1
```

This however also implies that there is no Left-to-Right order!
```lua
a,a = 1,2
print(a) --returns 1
```
