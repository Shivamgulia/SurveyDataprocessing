SELECT 
    AVG(FOODQUALITY) AS AVG_FOODQUALITY,
    AVG(SPEEDSATISFACTION) AS AVD_SPEEDSATISFACTION,
    AVG(OVERALLSATISFACTION) AS AVF_OVERALLSATISFACTION,
    CORR(FOODQUALITY, OVERALLSATISFACTION) AS FOODQUALITY_OVERALLSATISFACTION_RELATIONSHIP,
    CORR(SPEEDSATISFACTION, FOODQUALITY) AS SPEEDSATISFACTION_FOODQUALITY_RELATIONSHIP
FROM 
    CLEANEDDATA
WHERE 
    OVERALLSATISFACTION IS NOT NULL 
    AND FOODQUALITY IS NOT NULL 
    AND SPEEDSATISFACTION IS NOT NULL