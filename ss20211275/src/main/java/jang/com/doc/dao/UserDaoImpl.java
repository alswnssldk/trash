package jang.com.doc.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import jang.com.doc.model.User;

@Repository
public class UserDaoImpl implements UserDao {
	private JdbcTemplate jdbcTemplate;
	private NamedParameterJdbcTemplate jdbcTemplate2;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.jdbcTemplate2 = new NamedParameterJdbcTemplate(dataSource);
	}
	
	
	@Override
	public User getUser(String userId) {
		String sql = "SELECT * FROM member_tbl WHERE id = ?";
		
		RowMapper<User> mapper = new BeanPropertyRowMapper<User>(User.class);
		User user = (User)this.jdbcTemplate.queryForObject(sql, mapper, userId);
		return user;
	}

	@Override
	public List<User> getUserList() {
		String SQL = "select * from member_tbl order by no asc";
		
		RowMapper<User> mapper = new BeanPropertyRowMapper <User>(User.class);
		
		List<User> userList = (List)this.jdbcTemplate.query(SQL, mapper);
		return userList;
	}
	
	@Override
	public int insert(User user) {
		String SQL_INT = "INSERT INTO member_tbl (no, id, pass, name, zip, addr1, addr2, phone, email)" + " VALUES(seq_no.nextval, :Id, :pass, :Name, :zip, :addr1, :addr2, :phone, :email)";
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(user);
		return this.jdbcTemplate2.update(SQL_INT, parameterSource);
	}
}
