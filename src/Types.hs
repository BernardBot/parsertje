module Types where

import Text.Parsec
import Text.Parsec.Indent

import Control.Monad.Identity

type StreamP = String
type UserStateP = ()
type MonadP = IndentT Identity

type Parser a = IndentParser StreamP UserStateP a 
