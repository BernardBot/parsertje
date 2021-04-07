module Main where

import Parser

main :: IO ()
main = do
  line <- getLine
  case parseExpr line of
    Left err -> print err
    Right expr -> print expr
  main

parseFromFile :: FilePath -> IO ()
parseFromFile filePath = do
  file <- readFile filePath
  case parseExpr file of
    Left err -> print err
    Right expr -> print expr
