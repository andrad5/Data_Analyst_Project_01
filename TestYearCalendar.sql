SELECT DISTINCT CalendarYear
  FROM [AdventureWorksDW].[dbo].[DimDate]
  WHERE 
  LEFT (CalendarYear,4) >= YEAR(GETDATE()) -4
  ORDER BY CalendarYear ASC