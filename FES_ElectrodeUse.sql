--  Produces ordered table of counts of each electrode type within current FES patients
-- 'Electrodes' table is the source data, and is in the format:
--
--
-- | Pathology   | ElectrodeType |
-- |-------------|---------------|
-- | (String)    | (String)      |
-- | .           | .             |
-- | .           | .             |


-- Replace blank ElectrodeType fields with 'Unknown'
UPDATE Electrodes
SET ElectrodeType = "Unknown"
WHERE ElectrodeType =""
;

--Show table of Count of users of each electrode type, highest first
SELECT ElectrodeType, COUNT (ElectrodeType) AS Users
FROM Electrodes
GROUP BY ElectrodeType
ORDER BY Users DESC ,ElectrodeType 
;
