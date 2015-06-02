-- converter.hs
-- Convert between metric and imperial

convert :: (Double, [Char]) -> (Double, [Char])

convert (value, unit)
    | unit == "m" = (value * 1.09361, "yd")
    | unit == "L" = (value * 0.264172, "gal")
    | unit == "kg" = (value * 2.20462, "lb")
    | otherwise = error "Unit must be one of 'm', 'L' or 'kg'"


