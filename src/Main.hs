module Main where

import Parser

main :: IO ()
main = do
  line <- getLine
  case parseExpr line of
    Left err -> print err
    Right expr -> print expr
  main
