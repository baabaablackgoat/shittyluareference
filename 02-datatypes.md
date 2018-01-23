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

### Footnote: Numbers and Strings

Strings and numbers can be, if applicable, converted into one another using only one line each: `tonumber()` turns a string, if possible, to a number, and `tostring()` does the exact opposite.

```lua
stringy = "3"
actualstring="fuck"
county = 5
print(stringy+county) --8 - this will actually work. Learn more about coercion in 04-math
print(actualstring+county) --error - datatypes don't match, and fuck can't be made into a number!
print(tonumber(stringy)+county) --8
print(stringy+tostring(county)) --"35"
tonumber("nah") --Obviously, this won't work.
```

### Boolean and matching comparison
Deal or no deal? Seal. 

This one is self explanatory. Booleans come in the very varied flavours `true` and `false`. Basically an easier way of saying 0 or 1.

To work with these operators, we need to learn about `==` and `~=`. These translate to "is equal to" and "is NOT equal to".

It is important that you use two equals signs. Single equals sign means assigning a variable, and double equals sign means comparing it to another. Got it?

```lua
print(false) --obviously returns false.
print (false == true) --False is not equal to true, the comparison fails. Returns false.
print (false == false) --False is indeed equal to true! Returns true.
print (false ~= true) --False does not match true, comparison succeeds. True.
```
### Tables
Come closer, come here, and watch as amazing things shall appear!

...I can't rhyme for shit.

Long story short, Tables are an **aggregate data container.** This means that multiple values can exist in them at once. Opposed to other languages like for example Javascript, not only do these containers support Arrays - values seperated by a comma, but the same syntax is also used for Objects with key-value pairs!

Tables are created by enclosing the values in curly brackets, and seperating each element with a comma.

Also, yes, nesting tables is a thing.

```lua
three = 3
im_a_table = {"input 1", 2, three} --You can use as many types at once as you wish, as long as you know how to handle this properly later on.
nesting = {"some value",{"i'm nested, look at me!", "woah!", "amazing!"}, "foo"} --Multiple dimensionssssssssssssssssssss
key_value_pairs = {im_a_key = "I'm the value", ["another_key"] = "with yet another value"} --both syntaxes work
```

### Functions
If you ever need to run a bit of code over and over and over again and don't want to copypaste it all over the place, then worry not!
Functions are here to save your butt.

Functions in Lua are assigned to a variable, and can then be run by "calling" this variable. Think of it like a parcel that you can drop anywhere you like, with the added feature that you can give the parcel a label it can do stuff with - input variables.
Make sure you indent your code, and don't forget the end keyword to close your function

TL;DR: Snippet of code that sometimes gets input from somewhere else and then runs.

Also, beware of recursion. You'll learn about this eventually for sure. 

```lua
memeception = function()
    print ("ayylmao")
end
memeception() --This calls the function and will print out "ayylmao"

printme = function(input)
    print (input)
end
printme("whatever") --will print out "whatever" it is given in the brackets
```

### nil
First and foremost: nil is NOT zero. Instead, nil is the closest thing you can get to absolute nothingness.

Basically, nil means that there's nothing here. Not even a data type.

You can usually use this to check if something has recieved input or not.

```lua
print(nil == 0) --false!
print(i_was_never_declared == nil) --true - this variable wasn't declared.
```

### Footnote: Checking the datatype
It is very easy to find out what datatype a variable is. Lua has it's own function for this: `type()`.

```lua
str = "42"
num = 42
table = {"foo","bar","bez"}
print(type(str)) --will print "string"
print(type(num)) --will prin "number"

```

http://lua-users.org/wiki/LuaTypesTutorial
