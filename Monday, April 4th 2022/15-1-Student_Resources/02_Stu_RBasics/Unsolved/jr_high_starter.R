# Part I
students <- c("Luis", "Emilio", "Guillermo", "Omar", "Diego")

roll_call <- function (class){
  print(Sys.Date())
  # Create a for loop 
  for (student in class){
    print(student)
  }
}

# Call the function with the student vector as an argument.
roll_call(students)

# Part II
locker_combinations <- function (class){
  # Create the for loop and print the student name and locker combination.
  for (student in class){
    print(student)
    combination <- sample(33, 3)
    print(combination)
  }
}

# Call the function with the student vector as an argument.
locker_combinations(students)

# Part III
for (student in students){
  # Create a variable (substring)  that holds the second letter for each student.
  thirdChar <- substr(student, 3, 3)
  # Create an if statement to find the names of students where the 
  # second letter that is an "e". 
  if (thirdChar == "e"){
    combination <- sample(33:66, 3)
    print(c(student, combination))
  }
  
}
