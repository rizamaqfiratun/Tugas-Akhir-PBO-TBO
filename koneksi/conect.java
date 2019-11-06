
package koneksi;
import com.mysql.jdbc.Driver;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;


public class conect {
    private static Connection koneksi;
   public static Connection GetConnection() throws SQLException{
   if (koneksi==null){
   new Driver();
   koneksi=DriverManager.getConnection("jdbc:mysql://127.0.0.1/pembelian_tiket", "root", "");
   }
   return koneksi;
   }

}
