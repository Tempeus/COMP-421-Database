SELECT S.vaccdate, COUNT(
        CASE
            WHEN (S.vialnum IS NOT NULL
                AND S.hinsurenum IS NOT NULL
                AND S.vaccdate = (
                    SELECT MIN(vaccdate)
                    FROM SLOT
                    WHERE SLOT.vialnum IS NOT NULL AND SLOT.hinsurenum = S.hinsurenum
                ))
                THEN 1
            END
    ) AS NUMOFVACC
FROM SLOT AS S
GROUP BY S.vaccdate
;
