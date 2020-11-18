package poly.controller;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

@Controller
@RequestMapping(value = "/board")
public class DBController {

	// 루트컨테이너에서 빈(Bean)을 받아와서 자동으로 넣어줌
	@Inject
	private DataSource dataSource;
	
	// "/list" URI에 대한 요청 처리
	@RequestMapping(value = "/list")
	public String home2(@ModelAttribute Test test) {
		
		try {
		java.sql.Connection conn = (java.sql.Connection) dataSource.getConnection();
		System.out.println("성공 : " + conn);
		
		} catch (Exception ex){
			System.out.println("실패..!");
			ex.printStackTrace();
		}
		
		return "/board/list";
	}
}
