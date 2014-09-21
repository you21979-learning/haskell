--【問9】点 (p, q) から直線 ax + by = c に下した垂線の交点を求める関数perpPointを作成してください
-- aとbが両方ゼロになると解なしですが、チェックせずに無視してください。

-- prepPoint 


-- ax + by = c
-- bx - ay = d
-- c * a + d * b
-- 
 
prepPoint (p, q) (a, b, c) = (x, y)
    where
        x = (a * c + b * d) / (a * a + b * b)
        y = (c * b - a * d) / (a * a + b * b)
        d = b * p - a * q

main = do
    print $ prepPoint (0, 2) (1, -1, 0)
