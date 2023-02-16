(
SELECT 'Terje' AS Name
UNION
SELECT 'Per' AS Name
UNION
SELECT 'Pål' AS Name
)
INTERSECT
SELECT 'Terje' AS Name

/*
3: ideene bak
   relasjonsalgebra - mengdelære - mengde på norsk = set på engelsk
     pluss, minus, gange med mengder
   video scott w
   funksjoner   
   aggregeringer 
*/