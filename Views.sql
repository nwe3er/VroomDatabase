
							-- view to list reviews 
                            
CREATE VIEW `list_reviews` (`review` , `list_id`) AS
    SELECT 
        `review`.`review` AS `review`,
        `review`.`list_id` AS `list_id`
    FROM
        `review`;
        
-- Queries for list_review (view) --

# list reviews for list_id 1854
SELECT 
    review
FROM
    vroom.list_reviews
WHERE
    list_id = 1854;



						-- view to list ratings 
                        
CREATE VIEW `list_ratings` (`rating` , `list_id`) AS
    SELECT 
        `review`.`rating` AS `rating`,
        `review`.`list_id` AS `list_id`
    FROM
        `review`;
        
        
-- Queries for list_review (view) --

# list all the ratings for list_id 1367
SELECT 
    rating
FROM
    vroom.list_ratings
WHERE
    list_id = 1367;

# show average rating for listing 1367
SELECT 
    AVG(rating)
FROM
    vroom.list_ratings
WHERE
    list_id = 1367;

# all list_id where ratings is = 5
SELECT 
    list_id
FROM
    vroom.list_ratings
WHERE
    rating = 5;




