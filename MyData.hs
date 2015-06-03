-- MyData.hs
-- Data type for metric units

data MetricUnit = Metre | Litre | Kilogram deriving (Show, Eq)

siSymbol :: MetricUnit -> String
-- using patterns:
-- siSymbol Metre = "m"
-- siSymbol Litre = "L"
-- siSymbol Kilogram = "kg"

-- using guards: 
siSymbol unit 
    | unit == Metre = "m"
    | unit == Litre = "L"
    | unit == Kilogram = "kg"
