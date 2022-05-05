-- number of Users on Vroom 
SELECT 
    COUNT(*)
FROM
    person;

-- Number of vehicles 
SELECT 
    COUNT(*)
FROM
    vehicle;

-- Number of reports relating to accidents
SELECT 
    report_reason, COUNT(*)
FROM
    report
WHERE
    report_reason = ' Accident';

-- validates user_id and password and prints true if credentials is contained in the DB
SELECT 
    CASE
        WHEN
            EXISTS( SELECT 
                    1
                FROM
                    person
                WHERE
                    user_id = 10218
                        AND login_password = '2ea73d5c9aae45eedc7befb437810dd94d2847c6')
        THEN
            TRUE
        ELSE FALSE
    END;
    
    
# revenue for the first 6 months (15% per transaction)
SELECT 
    SUM(Amount * .15) revenue
FROM
    contract;
