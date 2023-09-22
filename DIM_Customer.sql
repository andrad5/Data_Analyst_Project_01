--Filtro DIM_Customer
--Tabelas nao utilizadas foram comentadas
SELECT 
  c.customerkey AS CustomerKey,
   -- ,[GeographyKey]
   -- ,[CustomerAlternateKey]
   -- ,[Title]
   -- ,[MiddleName]

      c.firstName AS [Firts Name],
	  c.lastName AS [Last Name],

   --Concatenando Primeiro nome com segundo nome
	  c.firstName + ' ' + lastName as [Full Name],

   -- ,[NameStyle]
   -- ,[BirthDate]
   -- ,[MaritalStatus]
   -- ,[Suffix]
   
   -- se F entao Female, se M entao Male
      CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
	
  --  ,[EmailAddress]
  --  ,[YearlyIncome]
  --  ,[TotalChildren]
  --  ,[NumberChildrenAtHome]
  --  ,[EnglishEducation]
  --  ,[SpanishEducation]
  --  ,[FrenchEducation]
  --  ,[EnglishOccupation]
  --  ,[SpanishOccupation]
  --  ,[FrenchOccupation]
  --  ,[HouseOwnerFlag]
  --  ,[NumberCarsOwned]
  --  ,[AddressLine1]
  --  ,[AddressLine2]
  --  ,[Phone]
  --  ,[CommuteDistance]

      c.datefirstpurchase AS DateFirstPurchase, 

  --Busca cidade a partir da tabela DimGeography
  g.city AS [Customer City]
FROM 

-- c == dbo.DimCustomer // g == dbo.DimGeography
  [AdventureWorksDW].[dbo].[DimCustomer] as c
--
  LEFT JOIN dbo.DimGeography AS g ON g.geographykey = c.geographykey 

 -- Lista ordenada por CustomerKey
 -- classificada em modo ascendente
ORDER BY 
  CustomerKey ASC 
