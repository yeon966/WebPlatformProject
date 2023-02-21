package ohgym.request;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import ohgym.teacher.TeacherDAOImpl;
import ohgym.teacher.TeacherService;
import ohgym.teacher.TeacherServiceImpl;

@WebServlet("/requestList")
public class RequestListServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestService service = new RequestServiceImpl(new RequestDAOImpl());
		TeacherService teacherService = new TeacherServiceImpl(new TeacherDAOImpl());
		List<Request> list = service.selectRequest();
		for (Request request : list) {
			request.setExerciseType(teacherService.convertExerciseTypeToExercise(request.getExerciseType()));
		}
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(list); 
      
		PrintWriter pw = resp.getWriter();
		pw.println(json);
		pw.flush();
	}
}
