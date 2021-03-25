module HelloIdris2.Greet -- module name must be the same as file name, and upper case

export
greet : String -> String
greet name = "hello " ++ name
