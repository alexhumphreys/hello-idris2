module HelloIdris2.Main

import HelloIdris2.Greet

export
multigreet : IO ()
multigreet = do
  printLn $ greet "once"
  printLn $ greet "again"

main : IO ()
main = printLn $ greet "idris2"
