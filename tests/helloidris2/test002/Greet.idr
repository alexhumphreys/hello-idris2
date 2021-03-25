module Main

import HelloIdris2.Greet

main : IO ()
main = do
  printLn $ greet "world"
  printLn $ greet "idris2"
