package com.dao;

import com.model.User;
import com.mysql.cj.jdbc.CallableStatement;

import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class UserDAO implements IUserDAO{
    private final String jdbcURL = "jdbc:mysql://localhost:3306/demo?useSSL=false";
    private final String jdbbcUsername = "root";
    private final String jdbcPassword = "123456";

    private static final String INSERT_USERS_SQL = "insert into users(dname, email, country) values (?,?,?)";
    private static final String SELECT_USER_BY_ID = "select id,dname,email,country from users where id = ?";
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String DELETE_USERS_SQL ="delete from users where id = ?";
    private static final String UPDATE_USERS_SQL = "update users set dname = ?,  email = ?, country =? where id = ?";

    private static final String SORT_USERS_BY_NAME = "select * from users order by dname";

    private static final String SELECT_BY_COUNTRY = "select * from users where country = ?";

    public UserDAO() {}
    // Một Connection trong java là phiên làm việc giữa ứng dụng java và cơ sở dữ liệu
    protected Connection getConnection() {
        Connection connection =  null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL,jdbbcUsername,jdbcPassword);
        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public void insertUser(User user) throws SQLException {
        System.out.println(INSERT_USERS_SQL);
        //câu lệnh try-with-resource sẽ tự động đóng kết nối.
        //Giao diện PreparedStatement trong java là một sub-interface của Statement.
        // Nó được sử dụng để thực hiện truy vấn tham số.
        // public Statement createStatement()
        //Phương thức này tạo đối tượng Statement để thực thi các truy vấn SQL.
        try(Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            //public void setString(int paramIndex, String value)
            //đặt giá trị String cho chỉ số tham số đã cho
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            System.out.println(preparedStatement);
            //thực hiện truy vấn. Nó được sử dụng để create, drop, insert, update, delete, vv.
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public User selectUser(int id) {
        User user = null;
        // Bước 1 : Thiết lập kết nối.
        try(Connection connection = getConnection();
            // Bước 2 : Tạo một câu lệnh bằng cách sử dụng đối tượng kết nối
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID)) {
            //đặt giá trị số nguyên cho chỉ số tham số đã cho.
            preparedStatement.setInt(1,id);
            System.out.println(preparedStatement);
            // Bước 3 : Thực thi truy vấn hoặc cập nhật truy vấn.
            // Đối tượng của ResultSet duy trì một con trỏ đến một hàng của một bảng
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String dname = rs.getString("dname");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id,dname,email,country);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    @Override
    public List<User> selectAllUsers() {
        List<User> users = new ArrayList<>();
        try (Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("dname");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users.add(new User(id,name,email,country));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try(Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USERS_SQL)) {
            preparedStatement.setInt(1,id);
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        boolean rowUpdate;
        try(Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USERS_SQL)){
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.setInt(4, user.getId());

            rowUpdate = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdate;
    }
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            e.printStackTrace(System.err);
            System.err.println("SQLState : " + ((SQLException)e).getSQLState());
            System.err.println("Error Code : " + ((SQLException)e).getErrorCode());
            System.err.println("Message : " + e.getMessage());
            //Phương thức getCause () của lớp Throwable là phương thức có sẵn được sử dụng để trả về nguyên nhân của giá trị có thể ném hoặc null này nếu không thể xác định được nguyên nhân cho trường hợp Ngoại lệ xảy ra
            Throwable t = ex.getCause();
            while (t != null) {
                System.out.println("Cause: " + t);
            }
        }
    }

    @Override
    public List<User> searchByCountry(String input_country) {
        List<User> users = new ArrayList<>();
        Connection conn = getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(SELECT_BY_COUNTRY);
            ps.setString(1, input_country);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String country = rs.getString(4);
                users.add(new User(id,name,email,country));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return users;
    }

    @Override
    public List<User> sortUserByName() {
        List<User> users = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SORT_USERS_BY_NAME)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("dname");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users.add(new User(id,name,email,country));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    @Override
    public User getUserById(int id) {
        User user = null;
        String query = "{CALL get_user_by_id(?)}";
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             CallableStatement callableStatement = (CallableStatement) connection.prepareCall(query);)
         {
            callableStatement.setInt(1,id);
             // Step 3: Execute the query or update query
            ResultSet rs = callableStatement.executeQuery();
             // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String name = rs.getString("dname");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id,name,email,country);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    @Override
    public void insertUserStore(User user) throws SQLException {
        String  query = "{Call insert_user(?,?,?)}";

        try (Connection connection = getConnection();
             CallableStatement callableStatement = (CallableStatement) connection.prepareCall(query);){
            callableStatement.setString(1,user.getName());
            callableStatement.setString(2,user.getEmail());
            callableStatement.setString(3,user.getCountry());
            System.out.println(callableStatement);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
}
