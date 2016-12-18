package wpf.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Connection 관리 및 의미없는 예외 처리를 간편히 하기 위한 기능성 메서드로 구성된 클래스
 * @author andy
 *
 */
public class DBUtil {
	static Logger logger = LoggerFactory.getLogger(DBUtil.class);

	private DBUtil() {
	}

	private static DBUtil util = new DBUtil();

	public static DBUtil getDBUtil() {
		return util;
	}
	
	/**
	 * DataSource에서 Connection 객체를 생성후 리턴한다.
	 * @return
	 */
/*	// DB 연결 정보를 저장할 Properties
		Properties dbConfig;

		// dbConfig.txt file에서 속성 loading
		private void loadProp() {
			// 1. Properties 객체 create
			dbConfig = new Properties();

			// 2. dbConfig file에 stream connect
			File file = new File("/src/dbConfig.txt");
			try (InputStream input = new FileInputStream(file)) {
				dbConfig.load(input);
			} catch (IOException e) {
				logger.trace("DB 환경 구축 중 문제 발생!: {}", e);
			}
			logger.trace("DB 환경 확인: {}", dbConfig);
		}*/

		// DriverManager create & connection create
		Connection con = null;

		public Connection getConnection() {
			try {
				// 1. driver loading
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// 2. DriverManager를 통해 Connection get
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "wp",
						"tiger");
				// 3. Connection get logging
				logger.trace("connection check: {}", con);
			} catch (ClassNotFoundException | SQLException e) {
				logger.trace("connection 획득 실패: {}", e);
			}
			return con;
		}
	

	public void close(Statement stmt, ResultSet rset) {
		close(stmt);
		close(rset);
	}

	public void close(ResultSet rset) {
		if (rset != null) {
			try {
				rset.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public void close(Statement stmt) {
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public void close(Connection con) {
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void rollback(Connection con){
		if(con!=null){
			try {
				con.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void setAutoCommit(Connection con, boolean autoCommit){
		if(con!=null){
			try {
				con.setAutoCommit(autoCommit);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}