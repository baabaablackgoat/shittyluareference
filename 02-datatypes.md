# 02 - Lua Datatypes
## TL;DR
- Number - your average number. Lua can easily do arithmetics with this. You don't need float or int.
- String - your average block of text of any length. Needs to be "wrapped" in 'quotes', or else it's a variable.
- Boolean - [Yes? Or No?](https://www.youtube.com/watch?v=yHhimTlvWTI), also properly known as true or false. Don't put this in quotes.
- Table - an aggregate datatype. Supports having multiple values in itself at once, like Arrays. {"Wrap em","in curly","brackets."} 
- Functions - does stuff you want it to do. Make them by delcaring a variable and set that to a `function()`.
- nil - literally nothing. The absence of data. NOT ZERO! Other languages call this NULL/null. 

## The long (huehue) version
### Hold up fam!
Lua is, like for example JavaScript, smart about variables and it's datatypes. You don't need to literally tell it what datatype it's going to get. 

`HEY LUA, THIS IS A STRING! "FUCK YOU!"` Not only is this rude, this isn't either actual code, nor would this be needed.

This is how Java does it:`String str = "foo";`

And this is how we achieve the same thing with lua: `str = "foo"`

Just keep the basic rules in your head that we'll establish later, and it will understand what you want from it.

### Numbers
You know what a number is, don't you? Well, take exactly the concept you already know from your math classes and apply it here.

In Lua, **a number can be literally any number**\* (\*some restrictions apply) you want it to be. It doesn't matter if this is a decimal value (commonly called float in other languages) or not (usually called an integer), if it's positive or negative. All numbers are always considered a floating point value.

This allows for easy arithmetics with numbers in Lua. The classic operands like +, -, *, and / all apply, but there's some more neat stuff that are all integrated into Lua. We'll probably learn more about that later.

```lua
a_number = 420
another_number = 69.1337
another_one = -3.1415
can_i_join = no you idiot --this won't work.
```

### Strings
No, we're not talking about actual threads of yarn. Instead, a string in programming is **any length of text or characters**, including numbers.

Wait, what? Yes, numbers can also be strings. However, using mathematics on this type of data won't be just as easy. You'll need to make it into a number first.

You can also join two or more strings together, making a potentially SUPER LARGE STRING!!!! No, but seriously, adding two strings is like adding two sentences. Values inside the strings won't be added together like usual. See below for an example.

To make a variable a string, it needs to be encased in double or single quotes. If you use apostrophes - single quotes - in your string, you really wanna use double quotes, or you'll have to do escaping. And that's annoying.

```lua
a_string = "Hello, world!"
another_string = "foo"
yet_another_one = 'bar'
print (another_string .. yet_another_one) --returns "foobar". The two dots join the strings together. + won't work here.
number_juan = "1"
number_too = "2"
print (number_juan .. number_too) --returns "12", NOT 3
bad_string = 'they're'        ' --see how the color changed? Ignore that last quote on the far right, that one is just for formatting.
this_works = 'they\'re' --Using \ escapes troublesome characters.
```

### Boolean
Deal or no deal? Seal. 

This one is self explanatory. Booleans come in the very varied flavours true and `false`.
