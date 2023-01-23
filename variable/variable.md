# variable

## Define

There are three methods to define variables:

1. var=var
2. var='var'
3. var="var"

For bash, there dont have variable type, for different time, it convert auto.

Carefully, when we define variable:

```bash
var = xx(x)
var=xx  (v)
```

## Useage

there are two ways to use vairables:

1. $variable 
2. $variable (recomment)


## Delete variable

you can delete varialbe with `unset` :

```bash
var='var' # define
unset var # delet
``` 

## ReadOnly variable

Two ways: 

1. `readonly var=xx`
2. `declare var=xx`

## String 

as same as other type variable, three methods to creat string variable. 

but there is a different between '' and ""  : define by "" can auto convert:

```bash
var="hello\nworld"
var='hello\nworld'
```

by the way, you can by get the length of string :

```bash
str="abcdefh"
echo ${#str}
```

