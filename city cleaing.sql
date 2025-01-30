
SELECT * FROM Cities
order by City
--- Every Cit present in each sate which is wrong (London must be at England only and so on)


--- Update city with the right state and id
UPDATE Cities
SET State = 'England'  , City_ID = 1
WHERE City = 'Birmingham' AND State != 'England'

UPDATE  Cities
SET State = 'England' , City_ID = 25
WHERE City = 'London' AND State != 'England'

UPDATE  Cities
SET State = 'England' , City_ID = 5
WHERE City = 'Bristol' AND State != 'England'


UPDATE  Cities
SET State = 'Scotland' , City_ID = 11
WHERE City = 'Edinburgh' AND State != 'Scotland'

UPDATE  Cities
SET State = 'Scotland' , City_ID = 15
WHERE City = 'Glasgow' AND State != 'Scotland'

UPDATE  Cities
SET State = 'England' , City_ID = 17
WHERE City = 'Leeds' AND State != 'England'

UPDATE  Cities
SET State = 'England' , City_ID = 21
WHERE City = 'Liverpool' AND State != 'England'

UPDATE  Cities
SET State = 'England' , City_ID = 29
WHERE City = 'Manchester' AND State != 'England'

UPDATE  Cities
SET State = 'England' , City_ID = 33
WHERE City = 'Newcastle' AND State != 'England'

UPDATE  Cities
SET State = 'England' , City_ID = 37
WHERE City = 'Sheffield' AND State != 'England'

SELECT DISTINCT City_ID , City , State
FROM Cities
--- all cities are cleaned now (10 City with 2 Sates)


