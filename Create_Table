CREATE TABLE OpenOrders 
(
    PurchasingOrder NVARCHAR(100) NOT NULL,  -- Identifier for the purchase order. Not necessarily unique for each row.
    ItemLine NVARCHAR(50) NOT NULL,          -- Specific line/item of the purchase order. Not NULL.
    Material NVARCHAR(100) NOT NULL,         -- Description or identifier for the material. Not NULL.
    Vendor NVARCHAR(100) NOT NULL,           -- Vendor's name or identifier. Not NULL.
    [Create Date] DATE NOT NULL,             -- The date when the order was created. Not NULL.
    [Delivery Date] DATE NULL,               -- The expected delivery date of the order. Can be NULL.
    LoadDate DATE NOT NULL                   -- The date when the order was loaded into the system. Not NULL.
);
