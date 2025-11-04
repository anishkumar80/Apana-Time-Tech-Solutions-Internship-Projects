USE apanatime_dataset1;
SHOW TABLES;
DESCRIBE clean_dataset;

SELECT COUNT(*) AS total_rows FROM clean_dataset;

/* ==============================================================
							Coal Prices
================================================================= */


-- ********************* Coal_RB_4800_FOB_London_Close_USD ***************************
SELECT
    MIN(Coal_RB_4800_FOB_London_Close_USD) AS Min_val,
    MAX(Coal_RB_4800_FOB_London_Close_USD) AS Max_value,
    AVG(Coal_RB_4800_FOB_London_Close_USD) AS Mean_value,
    STDDEV(Coal_RB_4800_FOB_London_Close_USD) AS Standard_Deviation,
    VARIANCE(Coal_RB_4800_FOB_London_Close_USD) AS Variance_val,
    (MAX(Coal_RB_4800_FOB_London_Close_USD) - MIN(Coal_RB_4800_FOB_London_Close_USD)) AS Range_val
FROM clean_dataset;

--           MODE
SELECT Coal_RB_4800_FOB_London_Close_USD, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Coal_RB_4800_FOB_London_Close_USD
ORDER BY Total_Occur DESC
LIMIT 1;

--          MEDIAN
SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Coal_RB_4800_FOB_London_Close_USD) AS MedianValue FROM clean_dataset;

--        SKEWNESS
SELECT
	SUM(pow(Coal_RB_4800_FOB_London_Close_USD - (SELECT AVG(Coal_RB_4800_FOB_London_Close_USD) FROM clean_dataset), 3)) /
    (count(Coal_RB_4800_FOB_London_Close_USD) * pow((SELECT STDDEV(Coal_RB_4800_FOB_London_Close_USD) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Coal_RB_4800_FOB_London_Close_USD) * (COUNT(Coal_RB_4800_FOB_London_Close_USD) + 1) / ((COUNT(Coal_RB_4800_FOB_London_Close_USD) - 1) * (COUNT(Coal_RB_4800_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_4800_FOB_London_Close_USD) - 3))) *
    SUM(POW(Coal_RB_4800_FOB_London_Close_USD - (SELECT AVG(Coal_RB_4800_FOB_London_Close_USD) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Coal_RB_4800_FOB_London_Close_USD) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Coal_RB_4800_FOB_London_Close_USD) - 1), 2) / ((COUNT(Coal_RB_4800_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_4800_FOB_London_Close_USD) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************



-- ***************** Coal_RB_5500_FOB_London_Close_USD ******************************
SELECT
    MIN(Coal_RB_5500_FOB_London_Close_USD) AS Min_val,
    MAX(Coal_RB_5500_FOB_London_Close_USD) AS Max_value,
    AVG(Coal_RB_5500_FOB_London_Close_USD) AS Mean_value,
    STDDEV(Coal_RB_5500_FOB_London_Close_USD) AS Standard_Deviation,
    VARIANCE(Coal_RB_5500_FOB_London_Close_USD) AS Variance_val,
    (MAX(Coal_RB_5500_FOB_London_Close_USD) - MIN(Coal_RB_5500_FOB_London_Close_USD)) AS Range_val
FROM clean_dataset;

--           MODE
SELECT Coal_RB_5500_FOB_London_Close_USD, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Coal_RB_5500_FOB_London_Close_USD
ORDER BY Total_Occur DESC
LIMIT 1;


--      MEDIAN


--      SKEWNESS
SELECT
	SUM(pow(Coal_RB_5500_FOB_London_Close_USD - (SELECT AVG(Coal_RB_5500_FOB_London_Close_USD) FROM clean_dataset), 3)) /
    (count(Coal_RB_5500_FOB_London_Close_USD) * pow((SELECT STDDEV(Coal_RB_5500_FOB_London_Close_USD) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Coal_RB_5500_FOB_London_Close_USD) * (COUNT(Coal_RB_5500_FOB_London_Close_USD) + 1) / ((COUNT(Coal_RB_5500_FOB_London_Close_USD) - 1) * (COUNT(Coal_RB_5500_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_5500_FOB_London_Close_USD) - 3))) *
    SUM(POW(Coal_RB_5500_FOB_London_Close_USD - (SELECT AVG(Coal_RB_5500_FOB_London_Close_USD) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Coal_RB_5500_FOB_London_Close_USD) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Coal_RB_5500_FOB_London_Close_USD) - 1), 2) / ((COUNT(Coal_RB_5500_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_5500_FOB_London_Close_USD) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************



-- ************************ Coal_RB_5700_FOB_London_Close_USD ****************************
SELECT
    MIN(Coal_RB_5700_FOB_London_Close_USD) AS Min_val,
    MAX(Coal_RB_5700_FOB_London_Close_USD) AS Max_value,
    AVG(Coal_RB_5700_FOB_London_Close_USD) AS Mean_value,
    STDDEV(Coal_RB_5700_FOB_London_Close_USD) AS Standard_Deviation,
    VARIANCE(Coal_RB_5700_FOB_London_Close_USD) AS Variance_val,
    (MAX(Coal_RB_5700_FOB_London_Close_USD) - MIN(Coal_RB_5700_FOB_London_Close_USD)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Coal_RB_5700_FOB_London_Close_USD, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Coal_RB_5700_FOB_London_Close_USD
ORDER BY Total_Occur DESC
LIMIT 1;


--       MEDIAN


--		SKEWNESS
SELECT
	SUM(pow(Coal_RB_5700_FOB_London_Close_USD - (SELECT AVG(Coal_RB_5700_FOB_London_Close_USD) FROM clean_dataset), 3)) /
    (count(Coal_RB_5700_FOB_London_Close_USD) * pow((SELECT STDDEV(Coal_RB_5700_FOB_London_Close_USD) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Coal_RB_5700_FOB_London_Close_USD) * (COUNT(Coal_RB_5700_FOB_London_Close_USD) + 1) / ((COUNT(Coal_RB_5700_FOB_London_Close_USD) - 1) * (COUNT(Coal_RB_5700_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_5700_FOB_London_Close_USD) - 3))) *
    SUM(POW(Coal_RB_5700_FOB_London_Close_USD - (SELECT AVG(Coal_RB_5700_FOB_London_Close_USD) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Coal_RB_5700_FOB_London_Close_USD) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Coal_RB_5700_FOB_London_Close_USD) - 1), 2) / ((COUNT(Coal_RB_5700_FOB_London_Close_USD) - 2) * (COUNT(Coal_RB_5700_FOB_London_Close_USD) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************




-- ***************  Coal_RB_6000_FOB_CurrentWeek_Avg_USD *******************************
SELECT
    MIN(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS Min_val,
    MAX(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS Max_value,
    AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS Mean_value,
    STDDEV(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS Standard_Deviation,
    VARIANCE(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS Variance_val,
    (MAX(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - MIN(Coal_RB_6000_FOB_CurrentWeek_Avg_USD)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Coal_RB_6000_FOB_CurrentWeek_Avg_USD, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Coal_RB_6000_FOB_CurrentWeek_Avg_USD
ORDER BY Total_Occur DESC
LIMIT 1;


--		MEDIAN


--		SKEWNESS
SELECT
	SUM(pow(Coal_RB_6000_FOB_CurrentWeek_Avg_USD - (SELECT AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) FROM clean_dataset), 3)) /
    (count(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) * pow((SELECT STDDEV(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) * (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) + 1) / ((COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 1) * (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 2) * (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 3))) *
    SUM(POW(Coal_RB_6000_FOB_CurrentWeek_Avg_USD - (SELECT AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 1), 2) / ((COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 2) * (COUNT(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************


-- **************** Coal_India_5500_CFR_London_Close_USD **********************
SELECT
    MIN(Coal_India_5500_CFR_London_Close_USD) AS Min_val,
    MAX(Coal_India_5500_CFR_London_Close_USD) AS Max_value,
    AVG(Coal_India_5500_CFR_London_Close_USD) AS Mean_value,
    STDDEV(Coal_India_5500_CFR_London_Close_USD) AS Standard_Deviation,
    VARIANCE(Coal_India_5500_CFR_London_Close_USD) AS Variance_val,
    (MAX(Coal_India_5500_CFR_London_Close_USD) - MIN(Coal_India_5500_CFR_London_Close_USD)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Coal_India_5500_CFR_London_Close_USD, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Coal_India_5500_CFR_London_Close_USD
ORDER BY Total_Occur DESC
LIMIT 1;

--		MEDIAN


--		SKEWNESS
SELECT
	SUM(pow(Coal_India_5500_CFR_London_Close_USD - (SELECT AVG(Coal_India_5500_CFR_London_Close_USD) FROM clean_dataset), 3)) /
    (count(Coal_India_5500_CFR_London_Close_USD) * pow((SELECT STDDEV(Coal_India_5500_CFR_London_Close_USD) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Coal_India_5500_CFR_London_Close_USD) * (COUNT(Coal_India_5500_CFR_London_Close_USD) + 1) / ((COUNT(Coal_India_5500_CFR_London_Close_USD) - 1) * (COUNT(Coal_India_5500_CFR_London_Close_USD) - 2) * (COUNT(Coal_India_5500_CFR_London_Close_USD) - 3))) *
    SUM(POW(Coal_India_5500_CFR_London_Close_USD - (SELECT AVG(Coal_India_5500_CFR_London_Close_USD) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Coal_India_5500_CFR_London_Close_USD) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Coal_India_5500_CFR_London_Close_USD) - 1), 2) / ((COUNT(Coal_India_5500_CFR_London_Close_USD) - 2) * (COUNT(Coal_India_5500_CFR_London_Close_USD) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************




/*  =======================================================================================
								Oil Prices
=========================================================================================== */

-- ******************* Price_WTI  **********************************************************************
SELECT
    MIN(Price_WTI) AS Min_val,
    MAX(Price_WTI) AS Max_value,
    AVG(Price_WTI) AS Mean_value,
    STDDEV(Price_WTI) AS Standard_Deviation,
    VARIANCE(Price_WTI) AS Variance_val,
    (MAX(Price_WTI) - MIN(Price_WTI)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_WTI, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_WTI
ORDER BY Total_Occur DESC
LIMIT 1;

--			MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_WTI - (SELECT AVG(Price_WTI) FROM clean_dataset), 3)) /
    (count(Price_WTI) * pow((SELECT STDDEV(Price_WTI) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_WTI) * (COUNT(Price_WTI) + 1) / ((COUNT(Price_WTI) - 1) * (COUNT(Price_WTI) - 2) * (COUNT(Price_WTI) - 3))) *
    SUM(POW(Price_WTI - (SELECT AVG(Price_WTI) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_WTI) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_WTI) - 1), 2) / ((COUNT(Price_WTI) - 2) * (COUNT(Price_WTI) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************




--  ****************** Price_Brent_Oil  **************************************************************8
SELECT
    MIN(Price_Brent_Oil) AS Min_val,
    MAX(Price_Brent_Oil) AS Max_value,
    AVG(Price_Brent_Oil) AS mean_Brent,
    STDDEV(Price_Brent_Oil) AS Standard_Deviation,
    VARIANCE(Price_Brent_Oil) AS Variance_val,
    (MAX(Price_Brent_Oil) - MIN(Price_Brent_Oil)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_Brent_Oil, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_Brent_Oil
ORDER BY Total_Occur DESC
LIMIT 1;

--			MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_Brent_Oil - (SELECT AVG(Price_Brent_Oil) FROM clean_dataset), 3)) /
    (count(Price_Brent_Oil) * pow((SELECT STDDEV(Price_Brent_Oil) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_Brent_Oil) * (COUNT(Price_Brent_Oil) + 1) / ((COUNT(Price_Brent_Oil) - 1) * (COUNT(Price_Brent_Oil) - 2) * (COUNT(Price_Brent_Oil) - 3))) *
    SUM(POW(Price_Brent_Oil - (SELECT AVG(Price_Brent_Oil) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_Brent_Oil) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_Brent_Oil) - 1), 2) / ((COUNT(Price_Brent_Oil) - 2) * (COUNT(Price_Brent_Oil) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************





-- ***************** Price_Dubai_Brent_Oil  ****************************************************************
SELECT
    MIN(Price_Dubai_Brent_Oil) AS Min_val,
    MAX(Price_Dubai_Brent_Oil) AS Max_value,
    AVG(Price_Dubai_Brent_Oil) AS Mean_value,
    STDDEV(Price_Dubai_Brent_Oil) AS Standard_Deviation,
    VARIANCE(Price_Dubai_Brent_Oil) AS Variance_val,
    (MAX(Price_Dubai_Brent_Oil) - MIN(Price_Dubai_Brent_Oil)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_Dubai_Brent_Oil, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_Dubai_Brent_Oil
ORDER BY Total_Occur DESC
LIMIT 1;

--			MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_Dubai_Brent_Oil - (SELECT AVG(Price_Dubai_Brent_Oil) FROM clean_dataset), 3)) /
    (count(Price_Dubai_Brent_Oil) * pow((SELECT STDDEV(Price_Dubai_Brent_Oil) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_Dubai_Brent_Oil) * (COUNT(Price_Dubai_Brent_Oil) + 1) / ((COUNT(Price_Dubai_Brent_Oil) - 1) * (COUNT(Price_Dubai_Brent_Oil) - 2) * (COUNT(Price_Dubai_Brent_Oil) - 3))) *
    SUM(POW(Price_Dubai_Brent_Oil - (SELECT AVG(Price_Dubai_Brent_Oil) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_Dubai_Brent_Oil) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_Dubai_Brent_Oil) - 1), 2) / ((COUNT(Price_Dubai_Brent_Oil) - 2) * (COUNT(Price_Dubai_Brent_Oil) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************





/* =================================================
							Company Prices
=================================================== */

-- ***************** Price_ExxonMobil  *****************************************************************
SELECT
   MIN(Price_ExxonMobil) AS Min_val,
    MAX(Price_ExxonMobil) AS Max_value,
    AVG(Price_ExxonMobil) AS Mean_value,
    STDDEV(Price_ExxonMobil) AS Standard_Deviation,
    VARIANCE(Price_ExxonMobil) AS Variance_val,
    (MAX(Price_ExxonMobil) - MIN(Price_ExxonMobil)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_ExxonMobil, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_ExxonMobil
ORDER BY Total_Occur DESC
LIMIT 1;

-- 		  MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_ExxonMobil - (SELECT AVG(Price_ExxonMobil) FROM clean_dataset), 3)) /
    (count(Price_ExxonMobil) * pow((SELECT STDDEV(Price_ExxonMobil) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_ExxonMobil) * (COUNT(Price_ExxonMobil) + 1) / ((COUNT(Price_ExxonMobil) - 1) * (COUNT(Price_ExxonMobil) - 2) * (COUNT(Price_ExxonMobil) - 3))) *
    SUM(POW(Price_ExxonMobil - (SELECT AVG(Price_ExxonMobil) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_ExxonMobil) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_ExxonMobil) - 1), 2) / ((COUNT(Price_ExxonMobil) - 2) * (COUNT(Price_ExxonMobil) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************





-- ******************* Price_Shenhua  ******************************************************************
SELECT
    MIN(Price_Shenhua) AS Min_val,
    MAX(Price_Shenhua) AS Max_value,
    AVG(Price_Shenhua) AS Mean_value,
    STDDEV(Price_Shenhua) AS Standard_Deviation,
    VARIANCE(Price_Shenhua) AS Variance_val,
    (MAX(Price_Shenhua) - MIN(Price_Shenhua)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_Shenhua, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_Shenhua
ORDER BY Total_Occur DESC
LIMIT 1;

--			MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_Shenhua - (SELECT AVG(Price_Shenhua) FROM clean_dataset), 3)) /
    (count(Price_Shenhua) * pow((SELECT STDDEV(Price_Shenhua) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_Shenhua) * (COUNT(Price_Shenhua) + 1) / ((COUNT(Price_Shenhua) - 1) * (COUNT(Price_Shenhua) - 2) * (COUNT(Price_Shenhua) - 3))) *
    SUM(POW(Price_Shenhua - (SELECT AVG(Price_Shenhua) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_Shenhua) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_Shenhua) - 1), 2) / ((COUNT(Price_Shenhua) - 2) * (COUNT(Price_Shenhua) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************




/* ==============================================
						Market Indices
================================================ */

-- ******************* Price_All_Share  ************************************************************
SELECT
    MIN(Price_All_Share) AS Min_val,
    MAX(Price_All_Share) AS Max_value,
    AVG(Price_All_Share) AS Mean_value,
    STDDEV(Price_All_Share) AS Standard_Deviation,
    VARIANCE(Price_All_Share) AS Variance_val,
    (MAX(Price_All_Share) - MIN(Price_All_Share)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_All_Share, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_All_Share
ORDER BY Total_Occur DESC
LIMIT 1;

--		MEDIAN

--		SKEWNESS
SELECT
	SUM(pow(Price_All_Share - (SELECT AVG(Price_All_Share) FROM clean_dataset), 3)) /
    (count(Price_All_Share) * pow((SELECT STDDEV(Price_All_Share) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_All_Share) * (COUNT(Price_All_Share) + 1) / ((COUNT(Price_All_Share) - 1) * (COUNT(Price_All_Share) - 2) * (COUNT(Price_All_Share) - 3))) *
    SUM(POW(Price_All_Share - (SELECT AVG(Price_All_Share) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_All_Share) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_All_Share) - 1), 2) / ((COUNT(Price_All_Share) - 2) * (COUNT(Price_All_Share) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************





-- *************** Price_Mining  **************************************************************
SELECT
    MIN(Price_Mining) AS Min_val,
    MAX(Price_Mining) AS Max_value,
    AVG(Price_Mining) AS Mean_value,
    STDDEV(Price_Mining) AS Standard_Deviation,
    VARIANCE(Price_Mining) AS Variance_val,
    (MAX(Price_Mining) - MIN(Price_Mining)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_Mining, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_Mining
ORDER BY Total_Occur DESC
LIMIT 1;

--			MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_Mining - (SELECT AVG(Price_Mining) FROM clean_dataset), 3)) /
    (count(Price_Mining) * pow((SELECT STDDEV(Price_Mining) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_Mining) * (COUNT(Price_Mining) + 1) / ((COUNT(Price_Mining) - 1) * (COUNT(Price_Mining) - 2) * (COUNT(Price_Mining) - 3))) *
    SUM(POW(Price_Mining - (SELECT AVG(Price_Mining) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_Mining) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_Mining) - 1), 2) / ((COUNT(Price_Mining) - 2) * (COUNT(Price_Mining) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************






/* =====================================================
						LNG, Gas & Energy
======================================================== */

-- ******************* Price_LNG_Japan_Korea_Marker_PLATTS  *************************************
SELECT
    MIN(Price_LNG_Japan_Korea_Marker_PLATTS) AS Min_val,
    MAX(Price_LNG_Japan_Korea_Marker_PLATTS) AS Max_value,
    AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS Mean_value,
    STDDEV(Price_LNG_Japan_Korea_Marker_PLATTS) AS Standard_Deviation,
    VARIANCE(Price_LNG_Japan_Korea_Marker_PLATTS) AS Variance_val,
    (MAX(Price_LNG_Japan_Korea_Marker_PLATTS) - MIN(Price_LNG_Japan_Korea_Marker_PLATTS)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_LNG_Japan_Korea_Marker_PLATTS, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_LNG_Japan_Korea_Marker_PLATTS
ORDER BY Total_Occur DESC
LIMIT 1;

--		MEDIAN

--		SKEWNESS
SELECT
	SUM(pow(Price_LNG_Japan_Korea_Marker_PLATTS - (SELECT AVG(Price_LNG_Japan_Korea_Marker_PLATTS) FROM clean_dataset), 3)) /
    (count(Price_LNG_Japan_Korea_Marker_PLATTS) * pow((SELECT STDDEV(Price_LNG_Japan_Korea_Marker_PLATTS) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) * (COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) + 1) / ((COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) - 1) * (COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) - 2) * (COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) - 3))) *
    SUM(POW(Price_LNG_Japan_Korea_Marker_PLATTS - (SELECT AVG(Price_LNG_Japan_Korea_Marker_PLATTS) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_LNG_Japan_Korea_Marker_PLATTS) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) - 1), 2) / ((COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) - 2) * (COUNT(Price_LNG_Japan_Korea_Marker_PLATTS) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************





--  ********************** Price_Natural_Gas  ***************************************************
SELECT
    MIN(Price_Natural_Gas) AS Min_val,
    MAX(Price_Natural_Gas) AS Max_value,
    AVG(Price_Natural_Gas) AS Mean_value,
    STDDEV(Price_Natural_Gas) AS Standard_Deviation,
    VARIANCE(Price_Natural_Gas) AS Variance_val,
    (MAX(Price_Natural_Gas) - MIN(Price_Natural_Gas)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_Natural_Gas, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_Natural_Gas
ORDER BY Total_Occur DESC
LIMIT 1;

--			MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_Natural_Gas - (SELECT AVG(Price_Natural_Gas) FROM clean_dataset), 3)) /
    (count(Price_Natural_Gas) * pow((SELECT STDDEV(Price_Natural_Gas) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_Natural_Gas) * (COUNT(Price_Natural_Gas) + 1) / ((COUNT(Price_Natural_Gas) - 1) * (COUNT(Price_Natural_Gas) - 2) * (COUNT(Price_Natural_Gas) - 3))) *
    SUM(POW(Price_Natural_Gas - (SELECT AVG(Price_Natural_Gas) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_Natural_Gas) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_Natural_Gas) - 1), 2) / ((COUNT(Price_Natural_Gas) - 2) * (COUNT(Price_Natural_Gas) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************




-- ******************************** Price_ICE  ***************************************************
SELECT
    MIN(Price_ICE) AS Min_val,
    MAX(Price_ICE) AS Max_value,
    AVG(Price_ICE) AS Mean_value,
    STDDEV(Price_ICE) AS Standard_Deviation,
    VARIANCE(Price_ICE) AS Variance_val,
    (MAX(Price_ICE) - MIN(Price_ICE)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_ICE, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_ICE
ORDER BY Total_Occur DESC
LIMIT 1;

-- 			MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_ICE - (SELECT AVG(Price_ICE) FROM clean_dataset), 3)) /
    (count(Price_ICE) * pow((SELECT STDDEV(Price_ICE) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_ICE) * (COUNT(Price_ICE) + 1) / ((COUNT(Price_ICE) - 1) * (COUNT(Price_ICE) - 2) * (COUNT(Price_ICE) - 3))) *
    SUM(POW(Price_ICE - (SELECT AVG(Price_ICE) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_ICE) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_ICE) - 1), 2) / ((COUNT(Price_ICE) - 2) * (COUNT(Price_ICE) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************




-- ******************** Price_Dutch_TTF  *********************************************************
SELECT
    MIN(Price_Dutch_TTF) AS Min_val,
    MAX(Price_Dutch_TTF) AS Max_value,
    AVG(Price_Dutch_TTF) AS Mean_value,
    STDDEV(Price_Dutch_TTF) AS Standard_Deviation,
    VARIANCE(Price_Dutch_TTF) AS Variance_val,
    (MAX(Price_Dutch_TTF) - MIN(Price_Dutch_TTF)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_Dutch_TTF, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_Dutch_TTF
ORDER BY Total_Occur DESC
LIMIT 1;

--			MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_Dutch_TTF - (SELECT AVG(Price_Dutch_TTF) FROM clean_dataset), 3)) /
    (count(Price_Dutch_TTF) * pow((SELECT STDDEV(Price_Dutch_TTF) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_Dutch_TTF) * (COUNT(Price_Dutch_TTF) + 1) / ((COUNT(Price_Dutch_TTF) - 1) * (COUNT(Price_Dutch_TTF) - 2) * (COUNT(Price_Dutch_TTF) - 3))) *
    SUM(POW(Price_Dutch_TTF - (SELECT AVG(Price_Dutch_TTF) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_Dutch_TTF) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_Dutch_TTF) - 1), 2) / ((COUNT(Price_Dutch_TTF) - 2) * (COUNT(Price_Dutch_TTF) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************




/* =====================================================
						Exchange Rates
======================================================== */


-- ***************** Price_ZAR_USD  **************************************************************
SELECT
    MIN(Price_ZAR_USD) AS Min_val,
    MAX(Price_ZAR_USD) AS Max_value,
    AVG(Price_ZAR_USD) AS Mean_value,
    STDDEV(Price_ZAR_USD) AS Standard_Deviation,
    VARIANCE(Price_ZAR_USD) AS Variance_val,
    (MAX(Price_ZAR_USD) - MIN(Price_ZAR_USD)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_ZAR_USD, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_ZAR_USD
ORDER BY Total_Occur DESC
LIMIT 1;

--		MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_ZAR_USD - (SELECT AVG(Price_ZAR_USD) FROM clean_dataset), 3)) /
    (count(Price_ZAR_USD) * pow((SELECT STDDEV(Price_ZAR_USD) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_Dutch_TTF) * (COUNT(Price_Dutch_TTF) + 1) / ((COUNT(Price_Dutch_TTF) - 1) * (COUNT(Price_Dutch_TTF) - 2) * (COUNT(Price_Dutch_TTF) - 3))) *
    SUM(POW(Price_Dutch_TTF - (SELECT AVG(Price_Dutch_TTF) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_Dutch_TTF) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_Dutch_TTF) - 1), 2) / ((COUNT(Price_Dutch_TTF) - 2) * (COUNT(Price_Dutch_TTF) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************





-- ************************ Price_Indian_en_exg_rate  ****************************************************
SELECT
    MIN(Price_Indian_en_exg_rate) AS Min_val,
    MAX(Price_Indian_en_exg_rate) AS Max_value,
    AVG(Price_Indian_en_exg_rate) AS Mean_value,
    STDDEV(Price_Indian_en_exg_rate) AS Standard_Deviation,
    VARIANCE(Price_Indian_en_exg_rate) AS Variance_val,
    (MAX(Price_Indian_en_exg_rate) - MIN(Price_Indian_en_exg_rate)) AS Range_val
FROM clean_dataset;

--            MODE
SELECT Price_Indian_en_exg_rate, COUNT(*) AS Total_Occur FROM clean_dataset
GROUP BY Price_Indian_en_exg_rate
ORDER BY Total_Occur DESC
LIMIT 1;

--			MEDIAN

--			SKEWNESS
SELECT
	SUM(pow(Price_Indian_en_exg_rate - (SELECT AVG(Price_Indian_en_exg_rate) FROM clean_dataset), 3)) /
    (count(Price_Indian_en_exg_rate) * pow((SELECT STDDEV(Price_Indian_en_exg_rate) FROM clean_dataset), 3)) AS Skewness
FROM clean_dataset;


--			KURTOSIS
SELECT
    (COUNT(Price_Indian_en_exg_rate) * (COUNT(Price_Indian_en_exg_rate) + 1) / ((COUNT(Price_Indian_en_exg_rate) - 1) * (COUNT(Price_Indian_en_exg_rate) - 2) * (COUNT(Coal_RB_4800_FOB_London_Close_USD) - 3))) *
    SUM(POW(Price_Indian_en_exg_rate - (SELECT AVG(Price_Indian_en_exg_rate) FROM clean_dataset), 4)) /
    POW((SELECT STDDEV(Price_Indian_en_exg_rate) FROM clean_dataset), 4) -
    (3 * POW((COUNT(Price_Indian_en_exg_rate) - 1), 2) / ((COUNT(Price_Indian_en_exg_rate) - 2) * (COUNT(Price_Indian_en_exg_rate) - 3))) AS Kurtosis_Val
FROM clean_dataset;
-- ************************************************************************************************************