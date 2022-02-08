package com.mohamed.dbclass;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class PostgresDriver {
    private static final Logger logger = LoggerFactory.getLogger(PostgresDriver.class);
    public static final String POSTGRES_HOST = "jdbc:postgresql://localhost:5432/schools";
    public static Connection getConnection() throws SQLException {
        Properties props = new Properties();
        props.setProperty("user", "mhassanin");
        props.setProperty("password", "magical_password");
        //        props.setProperty("ssl","true");
        return DriverManager.getConnection(POSTGRES_HOST, props);
    }
    public static void ExecuteStatements() throws SQLException {
        var conn = getConnection();
        var statement = conn.createStatement();
        var results = statement.executeQuery("SELECT * FROM students;");
        var metadata = results.getMetaData();
        int numColumns = metadata.getColumnCount();
        while (results.next()) {
            logger.info("Printing new Row");
            for (int i = 1; i <= numColumns; i++) {
                logger.info("Column {} returned: {} ",metadata.getColumnName(i), results.getString(i));
            }
            logger.info("Finshed printing record");
        }
    }
}
