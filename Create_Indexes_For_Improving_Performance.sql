-- Create table for invoice details
-- Invoice_ID is the primary key in the Invoices table, linking the details to the invoice

CREATE TABLE InvoicesDetails
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	Invoice_ID INT NOT NULL FOREIGN KEY REFERENCES Invoices(ID),  -- Reference to Invoice table
	Material NVARCHAR(255) NOT NULL,  -- Material details of the invoice
	Price MONEY NOT NULL,  -- Price of the material
	[Order QTY] INT NOT NULL,  -- Quantity ordered
	[Delivered QTY] INT NOT NULL,  -- Quantity delivered
  Loaddt DATETIME2 DEFAULT GETDATE()  -- Load date (defaults to current date and time)
)

-- Create index on Invoice_ID to optimize join operations with the Invoices table
CREATE INDEX IDX_InvoicesDetails_Invoice_ID ON InvoicesDetails(Invoice_ID);

-- Create index on Material to improve search performance when querying by material
CREATE INDEX IDX_InvoicesDetails_Material ON InvoicesDetails(Material);

-- Create index on Loaddt to improve filtering by date for faster queries
CREATE INDEX IDX_InvoicesDetails_Loaddt ON InvoicesDetails(Loaddt);

-- Drop the index if it exists (useful for re-creating or renaming)
-- DROP INDEX IF EXISTS IDX_InvoicesDetails_Invoice_ID ON InvoicesDetails;
