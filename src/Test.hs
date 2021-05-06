module Test where

import Test.QuickCheck
import Text.PrettyPrint.HughesPJ

import Syntax
import Parser
import Pretty

checkParser :: Expr -> Bool
checkParser ast =
  case parse $ render $ pretty ast of
    Left _ -> False
    Right a -> ast == a
