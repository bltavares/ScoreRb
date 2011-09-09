# Scorerb
Scorerb is a fuzzy string search algorithm.



[![Build Status](https://secure.travis-ci.org/bltavares/scorerb.png)](http://travis-ci.org/bltavares/scorerb)
_Stable on ruby ~> 1.9.2, need more tests under other versions_

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
>       ["abc","AB","a"].score "A"
> 

## Options

### String
        "Hello".score "He", fuzzines = 0 

### Array
        [1,2,3].score "1", :fuzz => 0, :to_s => false 

## Credits

It's based on the [string_score](https://github.com/joshaven/string_score) from [Joshaven Potter](https://github.com/joshaven/).

Checkout the C# version also at [ScoreSharp](http://github.com/bltavares/scoresharp)

