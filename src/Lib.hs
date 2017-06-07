
module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc =  do 
    let exts = [ "DatatypeContexts"
                , "DefaultSignatures"
                , "DeriveDataTypable"
                , "DeriveGeneric"
                , "DeriveFunctor"
                , "DeriveFoldable"
                , "DeriveTraversable"
                , "GeneralizedNewtypeDriving"
                , "DuplicateRecordFields"
                , "ExistentialQuantification"
                , "FlexibleContexts"
                , "FlexibleInstances"
                , "FunctionalDependencies"
                , "GADTs"
                , "ImplicitParams"
                , "KindSignatures"
                , "MultiParamTypeClasses"
                , "NoMonomorphismRestriction"
                , "OverlappingInstances"
                , "Rank2Types"
                , "RankNTypes"
                , "ScopedTypeVariables"
                , "TemplateHaskell"
                , "TupleSections"
                , "TypeFamilies"
                , "UndecidableInstances"
                , "ViewPatterns" ]

    let append x = "{-# LANGUAGE " ++ x ++ " #-}"
    mapM_ putStrLn (map append exts)