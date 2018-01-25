# Conditional code
Here comes the juicy part. Suppose you only want to run a bit of code if some value is smaller or greater than some other value, and some other code should run if blah is blah blah blah blah. You get the idea.

## TL;DR

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

### Footnote: Ternaries

Something you should know: Other languages have something reffered to as **Ternaries.** This is basically a shorthand version of an if-else statement that you want to keep compact. **Lua does not have this.** Yes, you can bodge your own one, but just... don't. It's confusing as hell.

An example Ternary in **JavaScript, NOT Lua**:
```js
    return(condition ? true : false);
```

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
**soon:tm:**