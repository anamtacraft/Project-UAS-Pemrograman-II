/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author NAM
 */
public class Koneksi {
    Connection conn;
    
    public Connection getKoneksi() {
        
        try {
            
            String url = "jdbc:mysql://localhost/db_kehadiran_siswa2";
            String user = "root";
            String pass = "";
            
            conn = DriverManager.getConnection(url, user, pass);
            
            System.out.println("Koneksi Berhasil");
            
        } catch (Exception e) {
            
            System.out.println("Koneksi Gagal : " + e.getMessage());
        }
        
        return conn;
    }
}
