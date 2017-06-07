
module Lib
    ( someFunc
    ) where

import System.Process
import Data.String.Utils

(|>) x y = y x

someFunc :: IO ()
someFunc =  do
    ps <- readProcess "ghc" [ "--supported-languages" ] ""
    let languages = ps |> split "\n" |> filter ("" /=)

    let append lang = "{-# LANGUAGE " ++ lang ++ " #-}"
    languages |> mapM_ (putStrLn . append)
