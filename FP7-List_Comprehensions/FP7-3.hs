sp :: [Int] -> [Int] -> Int

sp xs ys = sum[xs!!i * ys !!i | i <- [0..n-1]]
            where n = length xs