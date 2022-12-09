package tododao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import jdbcconnection.JdbcConnectivity;
import todomodel.ToDoTask;

public class TodoDaoImpl implements TodoDao{
	private static final String INSERT_TODOS_SQL = "INSERT INTO todos" +
	        "  (title, username, description, target_date,  is_done) VALUES " + " (?, ?, ?, ?, ?);";

	    private static final String SELECT_TODO_BY_ID = "select id,title,username,description,target_date,is_done from todos where id =?";
	    private static final String SELECT_ALL_TODOS = "select * from todos";
	    private static final String DELETE_TODO_BY_ID = "delete from todos where id = ?;";
	    private static final String UPDATE_TODO = "update todos set title = ?, username= ?, description =?, target_date =?, is_done = ? where id = ?;";

	    public TodoDaoImpl() {}

	    @Override
	    public void insertTodo(ToDoTask todo) throws SQLException {
	        System.out.println(INSERT_TODOS_SQL);
	        // try-with-resource statement will auto close the connection.
	        try (Connection connection = JdbcConnectivity.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_TODOS_SQL)) {
	            preparedStatement.setString(1, todo.getTitle());
	            preparedStatement.setString(2, todo.getUsername());
	            preparedStatement.setString(3, todo.getDescription());
	            preparedStatement.setDate(4,JdbcConnectivity.getSQLDate(todo.getTargetDate()));
	            preparedStatement.setBoolean(5, todo.getStatus());
	            System.out.println(preparedStatement);
	            preparedStatement.executeUpdate();
	        } catch (SQLException exception) {
	        	JdbcConnectivity.printSQLException(exception);
	        }
	    }
     
	    public ToDoTask selectTodo(long todoId) {
	    	ToDoTask todo = null;
	        // Step 1: Establishing a Connection
	        try (Connection connection =JdbcConnectivity.getConnection();
	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_TODO_BY_ID);) {
	            preparedStatement.setLong(1, todoId);
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 4: Process the ResultSet object.
	            while (rs.next()) {
	                long id = rs.getLong("id");
	                String title = rs.getString("title");
	                String username = rs.getString("username");
	                String description = rs.getString("description");
	                LocalDate targetDate = rs.getDate("target_date").toLocalDate();
	                boolean isDone = rs.getBoolean("is_done");
	                todo = new ToDoTask(id, title, username, description, targetDate, isDone);
	            }
	        } catch (SQLException exception) {
	        	JdbcConnectivity.printSQLException(exception);
	        }
	        return todo;
	    }

	    public List < ToDoTask > selectAllTodos() {

	        // using try-with-resources to avoid closing resources (boiler plate code)
	        List < ToDoTask > todos = new ArrayList < > ();

	        // Step 1: Establishing a Connection
	        try (Connection connection =JdbcConnectivity.getConnection();

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_TODOS);) {
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 4: Process the ResultSet object.
	            while (rs.next()) {
	                long id = rs.getLong("id");
	                String title = rs.getString("title");
	                String username = rs.getString("username");
	                String description = rs.getString("description");
	                LocalDate targetDate = rs.getDate("target_date").toLocalDate();
	                boolean isDone = rs.getBoolean("is_done");
	                todos.add(new ToDoTask(id, title, username, description, targetDate, isDone));
	            }
	        } catch (SQLException exception) {
	        	JdbcConnectivity.printSQLException(exception);
	        }
	        return todos;

}

		@Override
		public boolean deleteTodo(int id) throws SQLException {
			 boolean rowDeleted;
		        try (Connection connection =JdbcConnectivity.getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_TODO_BY_ID);) {
		            statement.setInt(1, id);
		            rowDeleted = statement.executeUpdate() > 0;
		        }
		        return rowDeleted;
			
			
		}

		@Override
		public boolean updateTodo(ToDoTask todo) throws SQLException {
			boolean rowUpdated;
	        try (Connection connection =JdbcConnectivity.getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_TODO);) {
	            statement.setString(1, todo.getTitle());
	            statement.setString(2, todo.getUsername());
	            statement.setString(3, todo.getDescription());
	            statement.setDate(4,JdbcConnectivity.getSQLDate(todo.getTargetDate()));
	            statement.setBoolean(5, todo.getStatus());
	            statement.setLong(6, todo.getId());
	            rowUpdated = statement.executeUpdate() > 0;
	        }
	        return rowUpdated;
		}
 }


