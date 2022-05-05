								-- Insertion Queries --

# insertion onto person table 
INSERT INTO `vroom`.`person`
(`user_id`,
`login_password`,
`zip_code`,
`dob`,
`phone_number`,
`first_name`,
`last_name`)
VALUES
(7234567,
'asdfgl',
75042,
'1998-06-16',
'765-987-8577',
'AAAAAA',
'AAAAAAA');

								-- Deletion Queries --	
                                
# delete test person insertion above ^^^^^
DELETE FROM person 
WHERE
    user_id = 7234567;

# Verify restrict constraint on delete 
DELETE FROM person 
WHERE
    user_id = 129;
    
    
								-- Update Queries --    
# update rating to 5 for listing 1867
UPDATE `vroom`.`review` 
SET 
    `rating` = 4
WHERE
    `list_id` = 1867;