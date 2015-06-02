-- converter_typed.hs
-- Convert between metric and imperial using datatypes for everything

data MetricUnit = Metre 
                | Litre
                | Kilogram
                  deriving (Show, Eq)

data ImperialUnit = Yard 
                  | Gallon
                  | Pound 
                    deriving (Show) 

data Measurement = MetricMeasurement Double MetricUnit 
                 | ImperialMeasurement Double ImperialUnit
                   deriving (Show) 

convert :: Measurement -> Measurement
convert (MetricMeasurement value unit) 
    | unit == Metre = ImperialMeasurement (1.0936*value) Yard 
-- and so on...
