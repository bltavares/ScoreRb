# Scorerb
Scorerb is a fuzzy string search algorithm.

## What it does

 * It tells how much a string matches another one
 * It can sort your string arrays from the the best scored 'til the end
 * It can't bring you a beer

## How to use it

It's simple:

 * require it

>	require "scorerb"

 * run bundle

>       bundle install


 * And ask for the score

> 
>	"Abc".score "A" # without fuzzines
>       
>       "Abc".score "azb" 0.2 # with fuzzines (0..1)
> 

## Credits

It's based on the [string_score](https://github.com/joshaven/string_score) from [Joshaven Potter](https://github.com/joshaven/).

Checkout the C# version also at [ScoreSharp](http://github.com/bltavares/scoresharp)

