{-# LANGUAGE DeriveDataTypeable #-}

module Syntax where

import Data.Data

import Types

data Expr
  = Expr
  deriving (Show, Data)
