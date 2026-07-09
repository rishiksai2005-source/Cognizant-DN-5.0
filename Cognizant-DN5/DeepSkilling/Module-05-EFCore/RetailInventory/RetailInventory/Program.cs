var product = productService.GetProductById(1);

if (product != null)
{
    Console.WriteLine($"Product Found");
    Console.WriteLine($"ID       : {product.ProductId}");
    Console.WriteLine($"Name     : {product.Name}");
    Console.WriteLine($"Price    : {product.Price}");
    Console.WriteLine($"Stock    : {product.Stock}");
    Console.WriteLine($"Category : {product.Category}");
}
else
{
    Console.WriteLine("Product not found.");
}