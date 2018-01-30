# Tables
## TL;DR

## The long version
So, we've said before that tables are basically their own datatype for all kinds of aggregate datatypes, but we never elaborated on what the hell this means.

In a nutshell, tables are similar to things like Arrays and Objects from JavaScript. You get to make a list of data with a specific order. One variable gets several values. 

We create a table with the constructor `{}`. Huh?! Constructor? Well, basically, this means that when Lua interprets this, it constructs a table for us with the data we give to it.

This is an example of a table other languages call an Array - a simple list of items.
```lua
helloworld = "Hello, World!"
table = {"Some value", "Another value", 69, helloworld}
```

But this seems pointless, doesn't it? Usually, we only want one of the items in that list at once, right?
Well, have no fear. With the following syntax, you can easily access the n-th element of an array-like table:

```lua
print(table[n])
--so, basically:
print(table[3]) --prints out 69
```

`<rant>`
For some goddamn reason that I complained about in 05 already, **Lua uses 1-indexing**. This means that when you have a list of stuff (so usually a table), it starts counting from one. Seems reasonable, right? Well, almost every other language you'll ever learn will start by counting from zero. 
`</rant>`