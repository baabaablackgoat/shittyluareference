# Conditional code
Here comes the juicy part. Suppose you only want to run a bit of code if some value is smaller or greater than some other value, and some other code should run if blah is blah blah blah blah. You get the idea.

## TL;DR
```lua
if condition then stuff() elseif morestuff() else ayylmao() end

while condition do foo() end

repeat bar() until condition

for i = start, stop, step do bez() end--stop occurs on greater than check

for stuff in some_table do baa() end

while true do code() break end --aborts the loop

::target:: --for goto

goto target
```

## The long version

### If/ElseIf/Else
The most commonly known one is the **if/elseif/else** statement.

*An if/elseif/else ternary always needs an if statement, but elseif and else are completely optional.*

Have a look at the example below:

```lua
fn_remove = function(input)
    if input == "kebab" then
        print("remove kebab from premises")
    elseif input == "awp" then
        print("drop awp pls")
    else
        print("ayylmao")
    end
end

fn_remove("kebab") --remove kebab from premises
fn_remove("awp") --drop awp pls
fn_remove("something else") --ayylmao
```

Now, first of all, you don't have to indent the code like this. It just makes it considerably more readable, so I highly suggest you do this.

Let's break this down:
At the very top, we create a variable called fn_remove, and we make it a function that can handle one input we will refer to as `input` in the function.

Inside the function, we create an `if` statement with it's keyword. The following bit `input == "kebab"` checks if the input is indeed "kebab".  The check stops with the keyword then. Should this check succeed, then "remove kebab from premises" will be printed out. If it doesn't, this bit of code is skipped.

The `elseif` statement then checks if the input is "awp". I think you get the idea. You can have as many elseif cases as you desire. However - these will only run if no previous check in the if statement has succeded. If Input was kebab, then the awp check will never occur.

Now the `else`. If none of the previous checks have succeded, you can make your code use this statement.

The keyword `end` closes the if statement, and the second `end` closes the function.

### While
If you want to run some code until some other condition is met, you'll love the while loop.

It will repeat it's code over and over as long as the condition you give to it returns true. If it's false, the loop "breaks".

```lua
i = 2
while i < 100 do
    i = i^2
end
```

The example above would continue to square the variable `i` until the result is greater or equal to 100, breaking the while loop.

### Repeat
Sometimes, you want some loop to end if a statement suddenly turns true. You can either use the `not` keyword, or the repeat loop.

It will repeat its contents over and over until the statement given at the end returns true, breaking the loop.

```lua
i = 2
repeat
    i = i^2
until i >= 100
``` 
This example will do the same as the while example - Squaring i until it reaches 100 or more.

### for
For can be used in two cases: A numeric loop, and an iteration loop. Let's talk about the numeric loop first.

__Numeric for__

A numeric for statement is, just like while and repeat, a loop statement. However, this one loops itself for a set amount of time, because you give it a variable with some rules to work with.

The variable you give the for statement gets up to three properties. The first property is mandatory and is the variable name with a starting number value. The second property is your limit, and is mandatory too. As soon as the variable declared in the first variable is **greater than this value**, the for loop will exit. The third property is not always needed, and defines by how much the variable will increment with each iteration of the code.

Basically, every time the code in the for loop has finished executing, the program will jump back to the start, and increment the variable you gave it according to the other properties you passed to it.

In general, keep this in mind: **Start, Stop, Step.** Step can be neglected and will then be assumed as +1 / iteration.
```lua
for i = 1,5 do--You don't need the step bit, it's then assumed as 1
    print(i) --prints out 1,2,3,4,5.
end 

for i = 0,100,5 do--Starts with i=0, adds 5 with each iteration, stops at >100.
    print(i) --will print out 0,5,10,...100
end
```
Side note: Usually, programmers use the variable i to iterate with for loops and counting steps. You don't have to do this yourself, the variable name can be anything.

__Iterating for__

As soon as we get more used to tables, this might come in handy. Using for combined with an iterable object (so, basically, a table) will run the code on every element of the table, one by one. This is really useful for key/value pairs.

Creating an iterable for statement requires the keyword `in`. Take a look at the example below, I think it explains it way better than any words could.

```lua
hey_im_a_table = {"foo","bar","bez"}
for key,value in ipairs(hey_im_a_table) do --key is the "position" in the table. Programmers call this the index.
    print(value)
end
--We'll talk about ipairs() later. For now, just know that it basically adds an index to the table.
```

Side note: Something you should know about Lua, which makes me really angry. All other sensible programming languages use 0-indexing. This basically means that the first element is the element 0 considering code logic, and the 2nd is element 1, etc... **Lua completely ignores this programming standard and starts counting from 1, like in everyday use.**

Sure, you might say that this is a good thing, but if you get used to programming, keep in mind that Lua tries way too hard to be hipster.

### We're done here: `break`

Sometimes, you want to get out of a loop early if some condition has met. In Lua, we use break for this.

`break` will, once Lua gets to "read" this bit of code, instantly stop the loop, and continue with the code below itself.

The following isn't exactly the nicest code, but it gets the point across:
```lua
for i=1,1000 do
    if i >= 100 then break end --The loop will forcibly close when i is greater or equal to 100.
    print(i) --would usually print out 1-1000, but instead prints out 1-99.
end
```

### You have activated my skip card: Lua's hacky `continue`

Lua likes to ignore programming standards, as we already established. This is probably why Lua doesn't have a `continue` statement like many other languages. 

In Lua, instead, we use goto statements.

A goto statement consists of two bits. The goto itself and the target line the code is supposed to jump to once the goto runs.
Target lines are defined by writing a word inbetween pairs of doubledots. So, basically this: ``::hello::``, and jumppads are defined by writing goto followed with the name of the target line. So, jumping to our target up there would look like this: `goto hello`

Using this knowledge, we can simulate a continue - skipping the current iteration of a loop.
We just put the jump target at the bottom of the loop.

```lua
while true do --hue hue, infinite loop
    if some_condition then goto continue end
    --lots of code you usually want to run
    --even more code
    --wait i don't want to run, skip :b:ls
    ::continue::
end
```

### Footnote: Hacky ternaries

Because this shitty workaround some page is trying to advertise to me is confusing as fuck, I won't try to explain it just yet. Maybe i'll update this page once I do.