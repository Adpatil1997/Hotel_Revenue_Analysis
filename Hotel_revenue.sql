WITH HOTELS AS 
(SELECT * FROM DBO.['2018$']
UNION
SELECT * FROM DBO.['2019$']
UNION
SELECT * FROM DBO.['2020$'])

SELECT * FROM HOTELS
LEFT JOIN DBO.market_segment$
ON HOTELS.market_segment=market_segment$.market_segment
LEFT JOIN DBO.meal_cost$
ON meal_cost$.meal=HOTELS.meal


