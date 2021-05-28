module HelloIdris2.Greet -- module name must be the same as file name, and upper case

||| Given a name, this function will say hello
export
greet : String -> String
greet name = "hello " ++ name
