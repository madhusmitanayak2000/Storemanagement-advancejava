package store_management_system.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import store_management_system.model.Product;

public class ProductDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	public ProductDao(Connection con) {
		super();
		this.con = con;
	}

	public List<Product>getAllProducts(){
		List<Product> products = new ArrayList<Product>();
		try {
			query ="select * from shoppingcart.products";
			pst=this.con.prepareStatement(query);
			 rs = pst.executeQuery();
			  while (rs.next()) {
				  Product row= new Product();
				  row.setId(rs.getInt("id"));
				  row.setName(rs.getString("name"));
				  row.setCategory(rs.getString("category"));
				  row.setPrice(rs.getString("price"));			
				  row.setImage(rs.getString("image"));
				  
				   products.add(row);
			  }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return products;  
		
	}
	
}
