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