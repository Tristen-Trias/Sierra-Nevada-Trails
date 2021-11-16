--SELECT t_name
--    FROM Trail
--    INNER JOIN Difficulty on t_diffkey = d_diffkey
--
--    WHERE(
--        d_name = "Medium"
--    );

--DELETE FROM Trail
--    WHERE(
--        t_length < 1
--    );

--SELECT t_name
--    FROM Trail;

--SELECT l_name, count(*)
--    FROM Location
--    INNER JOIN Trail ON l_name = t_location
--    GROUP BY l_name;

UPDATE Trail
    SET t_diffkey = 2
    WHERE(
        t_length > 5 AND
        t_length < 10
    );

SELECT d_name, count(*)
    FROM Difficulty
    INNER JOIN Trail ON d_diffkey = t_diffkey
    GROUP BY d_name;