# Haskell Play

* Download ```Stack``` by ```curl -sSL https://get.haskellstack.org/ | sh```
* ```stack setup``` from the root of this project

* To run a script ```stack runhaskell ./app/hello.hs```
* To launch interactive shell ```stack ghci```. To quit ```:q```

# Haskell Notes

## Every object has a type

In Haskell there is a main function and every object has a type. The type of main is IO (). This means main will cause side effects.

## Compiler is smart enough to infer types for functions
```
f :: Int -> Int -> Int
f x y = x*x + y*y

main = print (f 2 3) # works!

main = print (f 2.3 4.2) # fails as 4.2 isn't an Int
```
The solution is to not declare a type for ```f``` but let Haskell infer the most general type for us.
```
f x y = x*x + y*y

main = print (f 2.3 4.2) # it works!
```

## Parametric Polymorphism
Instead of having a forced type like in C and having to declare a function for int, long, float, double, etc., we declare only one function like in a dynamically typed language. E.g.
```
let f x y = x*x + y*y

:type f
f :: Num a => a -> a -> a
```
Num is a type class. A type class can be understood as a set of types. Num contains only types which behave like numbers. More precisely, Num is class containing types which implement a specific list of functions, and in particular (+) and (*).

Num a => a -> a -> a means: Let a be a type belonging to the Num type class. This is a function from type a to (a -> a).

Haskell no function really has two arguments. Instead all functions have only one argument. But we will note that taking two arguments is equivalent to taking one argument and returning a function taking the second argument as a parameter.

## Strings
In Haskell strings are list of Char.

## Tuples
The type of couple is (a,b). Elements in a tuple can have different types. Lists are different to tuples because all elements in Lists must have the same Type.


# Upto
http://yannesposito.com/Scratch/en/blog/Haskell-the-Hard-Way

Deal with parentheses