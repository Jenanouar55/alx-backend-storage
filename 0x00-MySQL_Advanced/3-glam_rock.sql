-- SQL script to list all bands with Glam rock as their main style, ranked by their longevity
-- Assumes the use of the 'metal_bands' table with columns: band_name, style, formed, split

SELECT 
    band_name,
    IFNULL(YEAR(2022) - formed, 0) - IFNULL(YEAR(2022) - split, 0) AS lifespan
FROM 
    metal_bands
WHERE 
    style = 'Glam rock'
ORDER BY 
    lifespan DESC;
