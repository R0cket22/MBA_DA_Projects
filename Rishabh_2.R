#if else 
# check whether the number is positive
number = -10
#if 
# syntax : 
#if(condition) {Output}
if (number > 0){
  print("The number is positive")
  
}else {print("The number is negative")}


#question 1 

age= 22

if(age >= 18) {
  print("The person is eligible for voting!")
}else{
  print("The person is not eligible for voting!")
}

#question 2 

number = 12

if (number %%2 == 0 ){
  print ("Number is even!")

}else {
  print("Number is odd!")
}


#else if
# gradinf of a student - If the marks if the student is greater than 80 
# the the grade will be A, if the marks are b/w 60 to 80 then student 
# grade is B, else F

Marks = 70
if (Marks>80){
  print("Grade is A")
}else if (Marks >= 60 & Marks <= 80 ){
  print("Grade is B")
}else {
  print("Grade is F")
}
