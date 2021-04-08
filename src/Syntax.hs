module Syntax where

import AST

data Expr
  = Expr
  deriving Show

instance AST Expr where
  subs Expr = []

  label Expr = "expr"
