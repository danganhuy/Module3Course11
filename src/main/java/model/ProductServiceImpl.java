package model;

import java.util.*;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Laptop", 1200, "High-performance laptop", "Dell"));
        products.put(2, new Product(2, "Smartphone", 800, "Latest Android smartphone", "Samsung"));
        products.put(3, new Product(3, "Headphones", 150, "Noise-cancelling headphones", "Sony"));
        products.put(4, new Product(4, "Smartwatch", 300, "Waterproof smartwatch", "Apple"));
        products.put(5, new Product(5, "Tablet", 500, "10-inch screen tablet", "Microsoft"));
        products.put(6, new Product(6, "Monitor", 250, "4K Ultra HD monitor", "LG"));
        products.put(7, new Product(7, "Keyboard", 100, "Mechanical gaming keyboard", "Logitech"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<Product>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
