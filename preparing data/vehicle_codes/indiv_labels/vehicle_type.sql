--vehicle_type

UPDATE UK_accidents.dbo.vehicles
SET vehicle_type = CASE WHEN vehicle_type = 1   THEN REPLACE(vehicle_type, 1  , 'Pedal cycle')
                        WHEN vehicle_type = 2   THEN REPLACE(vehicle_type, 2  , 'Motorcycle 50cc and under')
		                WHEN vehicle_type = 3   THEN REPLACE(vehicle_type, 3  , 'Motorcycle 125cc and under')
		                WHEN vehicle_type = 4   THEN REPLACE(vehicle_type, 4  , 'Motorcycle over 125cc and up to 500cc')
		                WHEN vehicle_type = 5   THEN REPLACE(vehicle_type, 5  , 'Motorcycle over 500cc')
		                WHEN vehicle_type = 8   THEN REPLACE(vehicle_type, 8  , 'Taxi/Private hire car')
		                WHEN vehicle_type = 9   THEN REPLACE(vehicle_type, 9  , 'Car')
		                WHEN vehicle_type = 10  THEN REPLACE(vehicle_type, 10 , 'Minibus (8 - 16 passenger seats)')
		                WHEN vehicle_type = 11  THEN REPLACE(vehicle_type, 11 , 'Bus or coach (17 or more pass seats)')
		                WHEN vehicle_type = 16  THEN REPLACE(vehicle_type, 16 , 'Ridden horse')
		                WHEN vehicle_type = 17  THEN REPLACE(vehicle_type, 17 , 'Agricultural vehicle')
		                WHEN vehicle_type = 18  THEN REPLACE(vehicle_type, 18 , 'Tram')
		                WHEN vehicle_type = 19  THEN REPLACE(vehicle_type, 19 , 'Van / Goods 3.5 tonnes mgw or under')
		                WHEN vehicle_type = 20  THEN REPLACE(vehicle_type, 20 , 'Goods over 3.5t. and under 7.5t')
		                WHEN vehicle_type = 21  THEN REPLACE(vehicle_type, 21 , 'Goods 7.5 tonnes mgw and over')
		                WHEN vehicle_type = 22  THEN REPLACE(vehicle_type, 22 , 'Mobility scooter')
		                WHEN vehicle_type = 23  THEN REPLACE(vehicle_type, 23 , 'Electric motorcycle')
		                WHEN vehicle_type = 90  THEN REPLACE(vehicle_type, 90 , 'Other vehicle')
		                WHEN vehicle_type = 97  THEN REPLACE(vehicle_type, 97 , 'Motorcycle - unknown cc')
		                WHEN vehicle_type = 98  THEN REPLACE(vehicle_type, 98 , 'Goods vehicle - unknown weight')
		                WHEN vehicle_type = 99  THEN REPLACE(vehicle_type, 99 , 'Unknown vehicle type (self rep only)')
		                WHEN vehicle_type = 103 THEN REPLACE(vehicle_type, 103, 'Motorcycle - Scooter (1979-1998)')
		                WHEN vehicle_type = 104 THEN REPLACE(vehicle_type, 104, 'Motorcycle (1979-1998)')
		                WHEN vehicle_type = 105 THEN REPLACE(vehicle_type, 105, 'Motorcycle - Combination (1979-1998)')
		                WHEN vehicle_type = 106 THEN REPLACE(vehicle_type, 106, 'Motorcycle over 125cc (1999-2004)')
		                WHEN vehicle_type = 108 THEN REPLACE(vehicle_type, 108, 'Taxi (excluding private hire cars) (1979-2004)')
		                WHEN vehicle_type = 109 THEN REPLACE(vehicle_type, 109, 'Car (including private hire cars) (1979-2004)')
		                WHEN vehicle_type = 110 THEN REPLACE(vehicle_type, 110, 'Minibus/Motor caravan (1979-1998)')
		                WHEN vehicle_type = 113 THEN REPLACE(vehicle_type, 113, 'Goods over 3.5 tonnes (1979-1998)')
		                ELSE NULL 
		                END