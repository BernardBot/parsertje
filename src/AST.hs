module AST where

import Data.Tree
import Data.Tree.Pretty

class AST t where
  subs  :: t -> [t]
  label :: t -> String

  toTree :: t -> Tree String
  toTree t = Node (label t) (map toTree (subs t))

  drawAST :: t -> String
  drawAST = drawVerticalTree . toTree
