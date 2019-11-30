import Data.List

myLast :: [a] -> a
myLast = head . reverse

myMin :: Ord a => [a] -> a
myMin = head . sort

myMax :: Ord a => [a] -> a
myMax = myLast . sort

--すべてのリストの要素で、ある特性がTrueであるかどうかのテスト
myAll :: (a -> Bool) -> [a] -> Bool
myAll testFunc = (foldr (&&) True) . (map testFunc)

--リストないの少なくとも１つの要素で、ある特性がTrueとなるかテスト。
myAny :: (a -> Bool) -> [a] -> Bool
myAny testFunc = (foldr (||) True) . (map testFunc)
