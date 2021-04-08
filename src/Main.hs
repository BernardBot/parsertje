module Main where

import Parser
import AST

main :: IO ()
main = do
  filePath <- getLine
  parseFromFile filePath

parseRepl :: IO ()
parseRepl = do
  line <- getLine
  case parseExpr line of
    Left err -> print err
    Right expr -> putStr (drawAST expr) >> print expr
  parseRepl

parseFromFile :: FilePath -> IO ()
parseFromFile filePath = do
  file <- readFile filePath
  case parseExpr file of
    Left err -> print err
    Right expr -> putStr (drawAST expr) >> print expr

