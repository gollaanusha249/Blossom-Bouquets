package cn.techtutorial.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import cn.techtutorial.model.*;

public class ProductDao {
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public ProductDao(Connection con) {
        this.con = con;
    }

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<Product>();

        try {
            query = "SELECT * FROM products";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                Product row = new Product();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getString("category"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("image"));

                products.add(row);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> products = new ArrayList<Cart>();
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    query = "SELECT * FROM products WHERE id=?";
                    pst = this.con.prepareStatement(query);
                    pst.setInt(1, item.getId());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        Cart row = new Cart();
                        row.setId(rs.getInt("id"));
                        row.setName(rs.getString("name"));
                        row.setCategory(rs.getString("category"));
                        row.setPrice(rs.getDouble("price") * item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        products.add(row);
                    }
                }
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return products;
    }

    public List<Product> getAllRedProducts() {
        List<Product> redProducts = new ArrayList<Product>();
        try {
            query = "SELECT * FROM red";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                Product red = new Product();
                red.setId(rs.getInt("id"));
                red.setName(rs.getString("name"));
                red.setCategory(rs.getString("category"));
                red.setPrice(rs.getDouble("price"));
                red.setImage(rs.getString("image"));
                redProducts.add(red);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return redProducts;
    }
    
    public List<Product> getAlllillyProducts() {
        List<Product> redProducts = new ArrayList<Product>();
        try {
            query = "SELECT * FROM lily";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                Product red = new Product();
                red.setId(rs.getInt("id"));
                red.setName(rs.getString("name"));
                red.setCategory(rs.getString("category"));
                red.setPrice(rs.getDouble("price"));
                red.setImage(rs.getString("image"));
                redProducts.add(red);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return redProducts;
    }
    public List<Product> getAllorchidsProducts() {
        List<Product> redProducts = new ArrayList<Product>();
        try {
            query = "SELECT * FROM orchids";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                Product red = new Product();
                red.setId(rs.getInt("id"));
                red.setName(rs.getString("name"));
                red.setCategory(rs.getString("category"));
                red.setPrice(rs.getDouble("price"));
                red.setImage(rs.getString("image"));
                redProducts.add(red);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return redProducts;
    }
    public List<Product> getAllmixedProducts() {
        List<Product> redProducts = new ArrayList<Product>();
        try {
            query = "SELECT * FROM mixed";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                Product red = new Product();
                red.setId(rs.getInt("id"));
                red.setName(rs.getString("name"));
                red.setCategory(rs.getString("category"));
                red.setPrice(rs.getDouble("price"));
                red.setImage(rs.getString("image"));
                redProducts.add(red);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return redProducts;
    }
    public List<Product> getAllbirthdayProducts() {
        List<Product> redProducts = new ArrayList<Product>();
        try {
            query = "SELECT * FROM Birthday";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                Product red = new Product();
                red.setId(rs.getInt("id"));
                red.setName(rs.getString("name"));
                red.setCategory(rs.getString("category"));
                red.setPrice(rs.getDouble("price"));
                red.setImage(rs.getString("image"));
                redProducts.add(red);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return redProducts;
    }
    public List<Product> getAllwhiteflowersProducts() {
        List<Product> redProducts = new ArrayList<Product>();
        try {
            query = "SELECT * FROM whiteflowers";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                Product red = new Product();
                red.setId(rs.getInt("id"));
                red.setName(rs.getString("name"));
                red.setCategory(rs.getString("category"));
                red.setPrice(rs.getDouble("price"));
                red.setImage(rs.getString("image"));
                redProducts.add(red);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return redProducts;
    }
    public List<Product> getAllpremiumflowersProducts() {
        List<Product> redProducts = new ArrayList<Product>();
        try {
            query = "SELECT * FROM premiumflowers";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                Product red = new Product();
                red.setId(rs.getInt("id"));
                red.setName(rs.getString("name"));
                red.setCategory(rs.getString("category"));
                red.setPrice(rs.getDouble("price"));
                red.setImage(rs.getString("image"));
                redProducts.add(red);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return redProducts;
    }
    public List<Product> getAllpurpleProducts() {
        List<Product> redProducts = new ArrayList<Product>();
        try {
            query = "SELECT * FROM purple";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                Product red = new Product();
                red.setId(rs.getInt("id"));
                red.setName(rs.getString("name"));
                red.setCategory(rs.getString("category"));
                red.setPrice(rs.getDouble("price"));
                red.setImage(rs.getString("image"));
                redProducts.add(red);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return redProducts;
    }
    public List<Product> getAllgerberasProducts() {
        List<Product> redProducts = new ArrayList<Product>();
        try {
            query = "SELECT * FROM gerberas";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
                Product red = new Product();
                red.setId(rs.getInt("id"));
                red.setName(rs.getString("name"));
                red.setCategory(rs.getString("category"));
                red.setPrice(rs.getDouble("price"));
                red.setImage(rs.getString("image"));
                redProducts.add(red);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return redProducts;
    }
    
}
