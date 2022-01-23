package com.sky.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCUtil {
    static final String DRIVE="com.mysql.jdbc.Driver";
    static final String URL="jdbc:mysql://127.0.0.1:3307/project";
    static final String URL3306="jdbc:mysql://127.0.0.1:3306/thunder";
    static final String USERNAME="root";
    static final String USERPWD="root123";
    static final String USERPWDROOT="root";
    static Connection connection=null;
    public static Connection getConnection(){
        try {
            Class.forName(DRIVE);
            connection = DriverManager.getConnection(URL, USERNAME, USERPWD);
        }catch (Exception a){
            a.printStackTrace();
        }
        return connection;
    }

    public static Connection getConn(){
        try {
            Class.forName(DRIVE);
            connection = DriverManager.getConnection(URL3306, USERNAME, USERPWDROOT);
        }catch (Exception a){
            a.printStackTrace();
        }
        return connection;
    }

    public static void close(Connection conn, PreparedStatement patmt){
        try{
            conn.close();
            patmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public static void close(Connection conn, PreparedStatement patmt, ResultSet rs){
        if (rs!=null){
            try {
                rs.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        close(conn,patmt);
    }
}
