				-- Filer for Vehicle --

# show all the cars with the color red 
SELECT 
    vehicle_id, make, model
FROM
    vroom.vehicle
WHERE
    exterior_color = 'aqua';

# show blue cars with 8 seats 
SELECT 
    vehicle_id, make, model
FROM
    vroom.vehicle
WHERE
    max_passenger = 6 AND exterior_color = 'blue';
    

# Automatic cars less than 100000 miles sorted by year
SELECT 
    vehicle_id, make, model, vehicle_year
FROM
    vroom.vehicle
WHERE
    transmission = 'Automatic'
        AND mileage < 100000
ORDER BY vehicle_year ASC;


	-- Filer for Availability --
    
# list of all the available listings      
SELECT 
    list_id
FROM
    vroom.availability
WHERE
    is_available = 1;
