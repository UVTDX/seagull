import Data.Array

-- imagining our utopia
universe :: Array (Int, Int) Int
universe = array ((1,1), (12,12)) [((row, col), 0) | row <- [1..12], col <- [1..12]]


-- crafting the lands
spawn :: Array (Int, Int) Int -> IO ()
spawn arr = mapM_ putStrLn [show [arr ! (row, col) | col <- [1..12]] | row <- [1..12]]

-- idek fr
main :: IO ()
main = do
  spawn universe


-- randomly set alive points
-- check if a point is alive
-- return set of living neighbors
-- kill function
-- spawn the next generation

