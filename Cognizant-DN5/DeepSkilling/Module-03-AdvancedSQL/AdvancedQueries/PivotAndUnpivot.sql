--pivot
USE OnlineRetailStore;
GO

SELECT *
FROM
(
    SELECT
        c.Region,
        od.Quantity
    FROM Customers c
    JOIN Orders o
        ON c.CustomerID = o.CustomerID
    JOIN OrderDetails od
        ON o.OrderID = od.OrderID
) AS SourceTable

PIVOT
(
    SUM(Quantity)
    FOR Region IN
    (
        [North],
        [South],
        [East],
        [West]
    )
) AS PivotTable;
--unpivot
SELECT Region, TotalQuantity
FROM
(
    SELECT
        [North],
        [South],
        [East],
        [West]
    FROM
    (
        SELECT *
        FROM
        (
            SELECT
                c.Region,
                od.Quantity
            FROM Customers c
            JOIN Orders o
                ON c.CustomerID = o.CustomerID
            JOIN OrderDetails od
                ON o.OrderID = od.OrderID
        ) AS SourceTable

        PIVOT
        (
            SUM(Quantity)
            FOR Region IN
            (
                [North],
                [South],
                [East],
                [West]
            )
        ) AS PivotTable
    ) AS P
) AS Data

UNPIVOT
(
    TotalQuantity FOR Region IN
    (
        [North],
        [South],
        [East],
        [West]
    )
) AS UnpivotTable;