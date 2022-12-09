package tododao;

import java.sql.SQLException;
import java.util.List;

import todomodel.ToDoTask;

public interface TodoDao {

	 void insertTodo(ToDoTask todo) throws SQLException;

	 ToDoTask selectTodo(long todoId);

	 List<ToDoTask> selectAllTodos();

	 boolean deleteTodo(int id) throws SQLException;

	 boolean updateTodo(ToDoTask todo) throws SQLException;

}
