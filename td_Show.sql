DATABASE adventure_dw;
SHOW
SELECT *
FROM  DimProduct AS p
  INNER JOIN
  DimProductSubcategory AS psc
  ON
  p.ProductSubcategoryKey = psc.ProductSubcategoryKey ;
HELP STATS DIMPRODUCT;
HELP TABLE DIMPRODUCT;
SHOW VIEW DBC.TABLES;
HELP VIEW DBC.TABLES;
HELP COLUMN DIMPRODUCT.PRODUCTSUBCATEGORYKEY;