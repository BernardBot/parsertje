module Pretty where

import Data.Data
import Data.Generics.Aliases

import Data.Tree
import Data.Tree.Pretty

import Text.PrettyPrint.HughesPJ

import Syntax

pretty :: Expr -> Doc
pretty Expr = text "expr"

toTree :: Data a => a -> Tree String
toTree =
  (\ a -> Node (showConstr $ toConstr a) (gmapQ toTree a)) `extQ`
  (\ a -> Node a [])

drawAST :: Data a => a -> String
drawAST = drawTree . toTree

drawVerticalAST :: Data a => a -> String
drawVerticalAST = drawVerticalTree . toTree
