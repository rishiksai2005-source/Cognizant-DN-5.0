# RetailInventory - Lab 1

## Objective

Understand Object Relational Mapping (ORM) and set up Entity Framework Core in a .NET Console Application.

## Scenario

A retail inventory system needs to manage products, categories, and stock information using SQL Server. Entity Framework Core is used as the Object Relational Mapper (ORM).

## Technologies Used

- C#
- .NET 10.0
- Entity Framework Core 10
- SQL Server
- Visual Studio 2026

## Packages Installed

- Microsoft.EntityFrameworkCore.SqlServer
- Microsoft.EntityFrameworkCore.Design

## Concepts Learned

- Object Relational Mapping (ORM)
- Entity Framework Core
- EF Core vs Entity Framework 6
- Benefits of ORM
- EF Core 8/10 Features

## Project Setup

- Created Console Application
- Installed Entity Framework Core packages
- Prepared environment for database development

## Learning Outcome

- Understood how Entity Framework Core maps C# classes to SQL Server tables.
- Configured a .NET project for Entity Framework Core development.

# RetailInventory - Lab 2

## Objective

Implement Entity Framework Core using the Code First approach and create a SQL Server database using migrations.

## Technologies Used

- C#
- .NET 10
- SQL Server Express
- Entity Framework Core
- Visual Studio 2026

## Packages

- Microsoft.EntityFrameworkCore.SqlServer
- Microsoft.EntityFrameworkCore.Design
- Microsoft.EntityFrameworkCore.Tools
- Microsoft.Extensions.Configuration.Json

## Project Structure

```
RetailInventory
│
├── Data
│   ├── AppDbContext.cs
│   └── AppDbContextFactory.cs
│
├── Models
│   └── Product.cs
│
├── Migrations
│
├── appsettings.json
└── Program.cs
```

## Database

Database Name

```
RetailInventoryDB
```

Table Created

```
Products
```

## Concepts Covered

- Entity Framework Core
- DbContext
- DbSet
- SQL Server Connection
- Code First
- Migration
- Update Database

## Result

Successfully created the SQL Server database and Products table using EF Core Code First.

# RetailInventory - Lab 3

## Objective

Learn how to insert records into a SQL Server database using Entity Framework Core.

## Technologies Used

- C#
- .NET 10
- SQL Server
- Entity Framework Core

## Concepts Covered

- Entity
- DbContext
- DbSet
- SaveChanges()
- CRUD - Create Operation

## Implementation

- Created ProductService
- Added a Product object
- Saved data using Entity Framework Core
- Verified the inserted record in SQL Server

## Result

Successfully inserted product information into the Products table.

# RetailInventory - Lab 4 (Read Operation)

## Objective

Learn how to retrieve data from a SQL Server database using Entity Framework Core.

## Scenario

The Retail Inventory application retrieves product information stored in the Products table. This lab demonstrates how to fetch all products and search for a specific product by its ID using Entity Framework Core.

## Technologies Used

- C#
- .NET 10
- Entity Framework Core
- SQL Server Express
- Visual Studio 2026

## Concepts Covered

- Entity Framework Core
- DbContext
- DbSet
- LINQ Queries
- ToList()
- FirstOrDefault()
- Find()
- Read (Retrieve) Operation

## Project Structure

```
RetailInventory
│
├── Data
│   ├── AppDbContext.cs
│   ├── AppDbContextFactory.cs
│   └── ProductService.cs
│
├── Models
│   └── Product.cs
│
├── Migrations
│
├── appsettings.json
└── Program.cs
```

## Methods Implemented

### Get All Products

```csharp
public List<Product> GetAllProducts()
{
    return _context.Products.ToList();
}
```

### Get Product By ID

```csharp
public Product? GetProductById(int id)
{
    return _context.Products.FirstOrDefault(p => p.ProductId == id);
}
```

## Program Flow

- Connect to SQL Server using Entity Framework Core.
- Retrieve all products from the Products table.
- Display product details in the console.
- Search for a product using its Product ID.
- Display the selected product if found.

## Sample Output

```
All Products
------------

ID       : 1
Name     : Laptop
Price    : 65000
Stock    : 25
Category : Electronics
----------------------------
```

## Database

Database Name

```
RetailInventoryDB
```

Table

```
Products
```

## Learning Outcome

- Learned how to retrieve records using Entity Framework Core.
- Understood the use of `ToList()`, `Find()`, and `FirstOrDefault()`.
- Practiced displaying database records in a .NET Console Application.
- Successfully implemented the Read operation of CRUD.

## Result

Successfully retrieved and displayed product information from the SQL Server database.

