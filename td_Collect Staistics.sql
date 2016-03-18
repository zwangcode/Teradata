COLLECTSTATS
COLUMNProductSubcategoryKey,
COLUMNPARTITION
ONdimproduct;
COLLECTSTATS
COLUMNProductSubcategoryKey,
COLUMNProductCategoryKey,
COLUMNenglishproductsubcategoryname,
COLUMNPARTITION
ONDimProductSubcategory;
COLLECTSTATS
COLUMNProductCategoryKey,
COLUMN
PARTITION
ONDimProductCategory;
HELPSTATS DimProductSubcategory