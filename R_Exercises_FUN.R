## Difference exercises to master R ### 
#
# Write a function that calculates number a to the power of b, but let b have a default value of 2.
#
#
powerof<- function(a, b=2) {
     a ^ b
}
powerof(8)
powerof(2,3)
powerof(2,4)
#
#Re-write the function from exercise 1 so that a has a default value of b+1 already from the formals
#.. (from the argument definition.)
#
powerof_v2<- function(a = b + 1, b =2){
    a ^ b
}
powerof_v2(2,3)
powerof_v2()
#
#
# Write a function div() that checks if the first number divides the second.
div <-function(x, y){
  if (x %% y == 0){
    print("x divides y perfectly")
  } else {
    print("There is a remainder")
  }
}
#
div(3,3)
div(4,3)
#
##OR
#
divides <- function(x, y) {
  ifelse(y %% x == 0, TRUE, FALSE)
}
divides(3,3)
divides(4,3)
## Note there is a difference between "ifelse" and "else if"
## ifelse is similar to the "if" function in excel
#
# Write an infix function %div% that checks if the left-hand side divides the right-hand side.
#
'%div%'<-function(x,y){
  ifelse(x%%y == 0, TRUE, FALSE)
}
infix(3,5)
infix(6,3)
infix(3,3)
#
#
# Write a function that changes the value of pi in the R global environment to whatever 
#.. you specify as the argument. Note: it is not recommended to re-define the value of “pi”
#.. in a real-life R program.


change<-function(x,pi){
  ifelse(pi, x, x)
}
change("i love this",pi)
change(pi,pi)
change(5,pi)
## OR 
chpi <- function(x) {
  pi <<- x
}
# Will give an error Error in chpi(pi) : cannot change value of locked binding for 'pi'


#Write an infix (binary) function that checks if the left hand side (lhs) is in the range
#.. between the maximum and minimum of the rhs.

