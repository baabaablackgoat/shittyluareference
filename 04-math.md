# Math and Numbers

## Floating Doubles and You
Okay, as we already established, any number in Lua is a so-called float. But what does this mean?

Lua uses the so-called double precision floating point values. Without delving into technicality, this means a single Number value can represent any rounded value between -2^52 and 2^52-1. So from about -1 quadrillion to 1 quadrillion, or 10^15.

But what happens if we get a value that has to be very accurate on the decimal level? For example, you can't possibly store the value of 1/3 as a decimal, it's literally endless: 0.33333333333333333333333333333333[...]

Instead, two values are chosen: the one closest below it and the one closest above it. Depending on the mode you run Lua in, it then chooses either of the two. 

TL;DR: **Math operations can only be exact to some extent. Long decimal values can and will be inaccurate.** 