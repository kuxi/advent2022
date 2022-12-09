module Main (main) where

import System.Environment (getArgs)

import qualified Sol.Day1 as Day1

processArgs :: IO (Int, Int)
processArgs = do
    args <- getArgs
    case args of
        [argday, argphase] -> return (read argday, read argphase)
        _ -> error "Invalid arguments, require day and phase"

main :: IO ()
main = do
    (argday, argphase) <- processArgs
    input <- getContents
    case (argday, argphase) of
        (1, 1) -> Day1.solution1 input
        (1, 2) -> Day1.solution2 input
        (_, _) -> putStrLn $ "Unknown day \"" ++ (show argday) ++ "\" and phase \"" ++ (show argphase) ++ "\""
    
