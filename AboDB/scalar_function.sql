CREATE FUNCTION CalculateIncome()  
RETURNS decimal(10,1)  
BEGIN  
RETURN(SELECT SUM(abogebuehr)  
        FROM aboart  
        WHERE AboartID > 0 )  
END