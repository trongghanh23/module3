package servlet;

import model.Person;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PersonServlet",urlPatterns = {"/person"})
public class PersonServlet extends HttpServlet {
    private static List<Person> personList=new ArrayList<>();

    @Override
    public void init() throws ServletException {
        personList.add(new Person("Mai văn hoàn","20-08-1983","Hà Nội","https://icdn.dantri.com.vn/k:72b62a2872/2015/11/19/thay-giao1-1447903697979/the-he-8x-9x-thay-doi-hinh-anh-nguoi-lam-nghe-day-hoc.jpg"));
        personList.add(new Person("Nguyễn văn Nam","20-05-1993","Đà Nẵng","https://img.lovepik.com/element/40058/1049.png_860.png"));
        personList.add(new Person("Phạm đình trung","20-04-1999","Quảng Nam","https://static1.bestie.vn/Mlog/ImageContent/202106/15-cach-chup-anh-dep-van-nguoi-me-2021-f46924.jpg"));
        personList.add(new Person("Nguyễn thị hoa","10-08-1983","Hà Nội","https://sohanews.sohacdn.com/thumb_w/660/2017/1291610710209554594881299982616623413613868o-1506468168931.jpg"));
        personList.add(new Person("Trần văn hậu","14-08-1983","Hải Phòng","https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2021/05/08/kimoanh-851-1620472406599.jpeg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list.jsp");
        request.setAttribute("personList",personList);
        requestDispatcher.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
