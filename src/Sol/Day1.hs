module Sol.Day1 (solution1, solution2) where

import Data.List (sort)

type Elf = [Int]

parse :: [String] -> [Elf]
parse = go [] []
    where go curr acc [] = acc ++ [curr]
          go curr acc ("":ls) = go [] (acc ++ [curr]) ls
          go curr acc (cal:ls) = go (curr ++ [read cal]) acc ls


solution1 :: String -> IO ()
solution1 input = do
    let elves = parse $ lines input
        sol = maximum $ map sum elves
    putStrLn $ show sol

solution2 :: String -> IO ()
solution2 input = do
    let elves = parse $ lines input
        sol = sum . take 3 . reverse . sort . map sum $ elves
    putStrLn $ show sol
