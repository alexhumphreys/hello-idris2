module HelloIdris2.Main

import HelloIdris2.Greet

||| Call greet twice
export
multigreet : IO ()
multigreet = do
  printLn $ greet "once"
  printLn $ greet "again"

||| The entrypoint of the app
main : IO ()
main = printLn $ greet "idris2"
