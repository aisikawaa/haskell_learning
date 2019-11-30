type Radius = Double
type Height = Double
type Width = Double

data Shape = Circle Radius | Square Height | Rectangle Height Width deriving Show
perimeter :: Shape -> Double
perimeter (Circle r) = 2*pi*r
perimeter (Square h) = 4*h
perimeter (Rectangle) = 2*h + 2*w
area :: Shape -> Double
area (Circle r) = pi*r^2
area (Square h) = h^2
area (Rectangle h w) = h*w
