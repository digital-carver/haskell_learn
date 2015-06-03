-- MyData.hs
-- Data type for metric units

data MetricUnit = Metre | Litre | Kilogram deriving (Show, Eq)

siSymbol :: MetricUnit -> String
-- si_symbol Metre = "m"
-- si_symbol Litre = "L"
-- si_symbol Kilogram = "kg"

siSymbol unit 
    | unit == Metre = "m"
    | unit == Litre = "L"
    | unit == Kilogram = "kg"
