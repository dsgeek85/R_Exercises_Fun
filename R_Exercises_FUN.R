## Difference exercises to master R ### 

# Write a function that calculates number a to the power of b, but let b have a default value of 2.


powerof<- function(a, b=2) {
     a ^ b
}
powerof(8)
powerof(2,3)
powerof(2,4)

#Re-write the function from exercise 1 so that a has a default value of b+1 already from the formals
#.. (from the argument definition.)

powerof_v2<- function(a = b + 1, b =2){
    a ^ b
}
powerof_v2(2,3)
powerof_v2()


# Write a function div() that checks if the first number divides the second.
div <-function(x, y){
  if (x %% y == 0){
    print("x divides y perfectly")
  } else {
    print("There is a remainder")
  }
}

div(3,3)
div(4,3)

