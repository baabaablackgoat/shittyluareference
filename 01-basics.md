# 01 - The basics

## I have no idea what I'm doing.

## What the hell is Lua?
Quick answer: a programming language. Long answer: 
Lua is supposed to be a lightweight language that works anywhere that supports/runs C - that's the language it compiles down into.
It's meant to be a simple but powerful language with few rules to remember.

https://www.lua.org/about.html

## Just give me the fucking docs.
https://www.lua.org/manual/5.3/

## Okay, I know a little about programming, what's the syntax?
Just like python, indentation defines loops. Don't throw semicolons around like in other languages. EOL means EOA.

## I have no idea what programming is. How does this work?
Okay. Since you're starting programming, you're probably aware what CMD (Windows) or the Terminal (Mac) is. If you use Linux, you know this shit anyways. This has literally nothing to do with any of this, except for the fact that it might give you an understanding how to "talk" with your computer when you don't use a visual UI.

Basically, in "high level languages" like Lua, you tell your computer to do action X by giving it a block of text that is somewhat readable. The computer interprets this language and turns it into actual machine code. On the contrary here, there's "low level languages" like Assembly, something that's hardly readable, but the actual metal bits of the computer can understand/translate it into it's native language way faster.
This doesn't necessairly mean that Assembly is always faster and therefore better. Quite the contrary, well written high-level scripts can easily run faster than mediocre Assembly. 

Let's get you started with some actual Lua code. Try looking at the following statements and see if you understand what they could mean. 

```
print ("Hello")
```
This one's straightforward. It `print`s out the word Hello, which we will refer to as String (a datatype we'll learn more about later) from now on, to the output it's bound to - usually, the console window. 

```
themeaningoflife = 42
print(themeaningoflife*5)
```
This one is somewhat easy too. We take a word and declare it as a variable. Kind of like in math class with "If x+1=y, what is 8/pi?"
The variable gets the number value 42.
The second statement will `print` out the result of 42 multiplied by 5 - so 210.

Not so hard, right?

## Okay, I want to have """FUN""". Ha. Where do I try this out?
Chances are you found out about Lua using ComputerCraft or OpenComputers, both minecraft mods. Well, then congratulations, you got alot to experiment with. If you want to stick to "normal" usage, use the [live demo](https://www.lua.org/demo.html) on the Lua Homepage or [install it to your machine.](https://www.lua.org/download.html)

Windows: here's a guide to build Lua on your machine. http://lua-users.org/wiki/BuildingLuaInWindowsForNewbies
