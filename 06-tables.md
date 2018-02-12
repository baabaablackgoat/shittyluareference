# Tables
## TL;DR
Tables always are key/value pairs, but can be created like "arrays" by just ignoring the key input.
```lua
--"array" - will automatically insert keys incrementing from 1
table = {"foo", "bar", "bez"} 
--"object"
table = {[42]=420,hello="world",owo="what's this"}
```



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

With the syntax we just learned, we can also edit values - just like we edit variables. Say we want to change that silly joke about sexual innuendos. Not a problem:
```lua
table[3] = 420
```

And boom, we now have a weed joke in there. Funny and original. /s

### "Objects" - Key/Value pairs
There's one thing you should know about tables. Any table you create is automatically a key-value pair association. Now, you might very reasonably ask "what the hell does that mean?"

Well, basically, every entry you put into a table has a "key" - the value you identify the "item" with. If you don't specify the key, it defaults to counting up from 1. (Remember, 1-indexed.) 

So a table created like this:
```lua
sometable = {"foo","bar","bez"}
```
kind of looks like this:
```
key | value
___________
  1 | "foo"
  2 | "bar"
  3 | "bez"
```

You can, of course, change the way the keys are named, making tables usable like you'd know them from JavaScript Objects, for example. This is how it works:
```lua
anothertable = {hello="world", [69]=420, key="value"}
```
That will somewhat look like this (maybe the order will be sorted alphabetically)
```
key   |    value
________________
hello |  "world"
   69 |      420
  key |  "value"
```

Also, yes, apparently, the numbers in the keys need square brackets. And I have no idea why yet.

**Keep in mind that the keys in every table have to be unique.** If you have the same key twice, they'll overwrite each other.

### Stuff you can do with them

You can always add new values into tables like this:
```lua
sometable = {"hello"}
table.insert(sometable,2,"world") --inserts the value "world" on position/index 2 into table sometable
--sometable is now {"hello", "world"}
sometable[foo]="bar"
--sometable now is {1="hello", 2="world", foo="bar"}
```

hey i still need to add stuff here
