package ua.itea.daoImpl;

import ua.itea.dao.ProductDao;
import ua.itea.model.Product;
import ua.itea.utils.DbConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductDbService implements ProductDao {
    public static final Logger LOG = Logger.getLogger(ProductDbService.class.getName());
    private DbConnector db;
    private final String SELECT_PRODUCTS = "SELECT * FROM products";

    public ProductDbService() {
        db = DbConnector.getInstance();
    }

    @Override
    public List<Product> getProducts() {
        List<Product> result = new ArrayList();
        Connection conn = db.getConnection();
        PreparedStatement statement = null;
        ResultSet rs = null;
        LOG.info("Starting query");
        try {
            statement = conn.prepareStatement(SELECT_PRODUCTS);
            rs = statement.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setDescription(rs.getString(3));
                product.setPrice(rs.getInt(4));
                result.add(product);
            }
            LOG.info("Query success");
        } catch (SQLException sqlException) {
            LOG.log(Level.SEVERE, "DB error " + sqlException.getMessage(), sqlException);
            sqlException.printStackTrace();
            try {
                rs.close();
            } catch (SQLException s1) {
            }
            try {
                statement.close();
            } catch (SQLException s1) {
            }
            try {
                conn.close();
            } catch (SQLException s1) {
            }
        }
        return result;
    }
}
