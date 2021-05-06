module Main where

import Types
import Parser
import Pretty

main :: IO ()
main = do
  filePath <- getLine
  parseFromFile filePath

parseRepl :: IO ()
parseRepl = do
  line <- getLine
  case parse line of
    Left err -> print err
    Right expr -> putStr (drawVerticalAST expr) >> print expr
  parseRepl

parseFromFile :: FilePath -> IO ()
parseFromFile filePath = do
  file <- readFile filePath
  case parse file of
    Left err -> print err
    Right expr -> putStr (drawVerticalAST expr) >> print expr
