-- 3.1

SELECT  P.Street, P.City, P.Type, P.Rent, S.Fname, S.Lname, S.Position 
FROM propertyforrent P, staff S
WHERE S.StaffNo = P.StaffNo;

-- 3.2
SELECT P.Street, P.City, P.Type, P.Rent, B.BranchNo 
FROM propertyforrent P, branch B 
WHERE P.BranchNo = B.BranchNo;

-- 4
SELECT P.PropertyNo, S.Fname, S.Lname, B.Street, B.City
FROM staff AS S
INNER JOIN branch AS B
ON S.BranchNo = B.BranchNo
INNER JOIN propertyforrent AS P
ON B.BranchNo = P.BranchNo;

-- 5
SELECT V.PropertyNo, V.ClientNo, V.Date, V.Comment
FROM viewing AS V
INNER JOIN propertyforrent AS R
ON V.PropertyNo = R.PropertyNo
INNER JOIN client AS C
ON C.ClientNo = V.ClientNo
