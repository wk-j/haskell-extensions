
module Lib
    ( someFunc
    ) where

import System.Process
import Data.List
import Data.String.Utils

(|>) x y = y x

someFunc :: IO ()
someFunc =  do
    -- ghc --supported-languages
    ps <- readProcess "ghc" [ "--supported-languages" ] ""
    let extensions = split "\n" ps |> filter ((/=) "")

    let append x = "{-# LANGUAGE " ++ x ++ " #-}"
    mapM_ putStrLn (map append extensions)
