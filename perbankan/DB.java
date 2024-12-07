package perbankan;

import java.sql.*;

public class DB {

    String url = "jdbc:mysql://localhost:3306/cees";
    String user = "root";
    String pass = ""; 

    public static Connection connection;

    public Connection buatKoneksi() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); 

            connection = DriverManager.getConnection(url, user, pass);

            System.out.println("Connected");
        } catch (ClassNotFoundException ex) {
            System.out.println("Driver tidak ditemukan: " + ex);
        } catch (SQLException ex) {
            System.out.println("Koneksi gagal: " + ex);
        }
        return connection;
    }

}
