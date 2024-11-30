
-- Create table InvoiceDetals
-- Invoice id is ID primary key in Invoice table

CREATE TABLE InvoicesDetails
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	Invoice_ID INT NOT NULL FOREIGN KEY REFERENCES Invoices(ID),
	Material NVARCHAR(255) NOT NULL,
	Price MONEY NOT NULL,
	[Order QTY] int not null,
	[Delivered QTY] int not null,
    Loaddt DATETIME2 DEFAULT GETDATE()
) 

CREATE INDEX IDX_InvoicesDetails_Invoice_ID ON InvoicesDetails(Invoice_ID); -- index on invoice_id due to connection with invoice table

CREATE INDEX IDX_InvoicesDetails_Material ON InvoicesDetails(Material); -- index on material due to often search by material

CREATE INDEX IDX_InvoicesDetails_Loaddt ON InvoicesDetails(Loaddt); -- index on date for fast filtering

--How to drop index? 
-- DROP INDEX IF EXISTS IDX_InvoicesDetails_Invoice_ID ON InvoicesDetails;
