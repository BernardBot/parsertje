module Types where

import Text.Parsec
import Text.Parsec.Indent

import Control.Monad.Identity

import Data.Data
import Data.Generics.Aliases

import Data.Tree
import Data.Tree.Pretty

------------
-- Parser --
------------

type StreamP = String
type UserStateP = ()
type MonadP = IndentT Identity

type Parser a = ParsecT StreamP UserStateP MonadP a 

--------------------
-- Pretty Printer --
--------------------

toTree :: Data a => a -> Tree String
toTree =
  (\ a -> Node (showConstr $ toConstr a) (gmapQ toTree a)) `extQ`
  (\ a -> Node a [])

drawAST :: Data a => a -> String
drawAST = drawTree . toTree

drawVerticalAST :: Data a => a -> String
drawVerticalAST = drawVerticalTree . toTree
