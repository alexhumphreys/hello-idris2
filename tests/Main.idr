module Main

import Test.Golden

%default covering

allTests : TestPool
allTests = MkTestPool "Name of the pool" [] Default
  [ "test001"
  , "test002" -- To add more tests, copy one of the test directories, then update this list
  ]

main : IO ()
main = runner
  [ testPaths "helloidris2" allTests
  ] where
    testPaths : String -> TestPool -> TestPool
    testPaths dir = record { testCases $= map ((dir ++ "/") ++) }
