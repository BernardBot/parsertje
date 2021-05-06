{-# LANGUAGE DeriveDataTypeable #-}

module Syntax where

import Data.Data

import Test.QuickCheck

data Expr
  = Expr
  deriving (Eq,Show,Data)

instance Arbitrary Expr where
  arbitrary = return Expr
