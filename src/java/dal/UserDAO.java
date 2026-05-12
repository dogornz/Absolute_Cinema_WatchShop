/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class UserDAO extends DBContext {

    // Helper method to hash password using SHA-256
    private String hashPassword(String password) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] encodedhash = digest.digest(password.getBytes(java.nio.charset.StandardCharsets.UTF_8));
            StringBuilder hexString = new StringBuilder(2 * encodedhash.length);
            for (int i = 0; i < encodedhash.length; i++) {
                String hex = Integer.toHexString(0xff & encodedhash[i]);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }
            return hexString.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("SHA-256 algorithm not found", e);
        }
    }

    // Check if Username or Email already exists
    public boolean checkExists(String username, String email, String phone) {
        String sql = "SELECT * FROM Users WHERE username = ? OR email = ? OR phone = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, email);
            st.setString(3, phone);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true; // Exists
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false; // Does not exist
    }

    // Register new user
    public boolean register(User user) {
        String sql = "INSERT INTO Users (username, password, email, phone, address, role) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user.getUsername());
            st.setString(2, hashPassword(user.getPassword())); // Hash the password
            st.setString(3, user.getEmail());
            st.setString(4, user.getPhone());
            st.setString(5, user.getAddress() != null ? user.getAddress() : "");
            st.setString(6, user.getRole() != null ? user.getRole() : "Customer");
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println("Error Register: " + e);
        }
        return false;
    }

    // Login user
    public User login(String identifier, String password) {
        String sql = "SELECT * FROM Users WHERE (username = ? OR email = ?) AND password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, identifier);
            st.setString(2, identifier);
            st.setString(3, hashPassword(password)); // Hash input to match DB
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new User(
                        rs.getInt("user_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getString("role")
                );
            }
        } catch (SQLException e) {
            System.out.println("Error Login: " + e);
        }
        return null;
    }
}

