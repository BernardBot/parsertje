{-# LANGUAGE DeriveDataTypeable #-}

module Syntax where

import Data.Data

data Expr
  = Expr
  deriving (Show, Data)
