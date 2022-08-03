package manager_user.controller;

import manager_user.model.User;
import manager_user.service.IUserService;
import manager_user.service.impl.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/users")

public class UserServlet extends HttpServlet {
    private IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFormCreate(request, response);
                break;
            case "edit":
                showFormEdit(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            case "search":
                search(request, response);
                break;
            case "sortName":
                sortName(request, response);
                break;
            default:
                listUser(request, response);
                break;
        }
    }

    private void sortName(HttpServletRequest request, HttpServletResponse response) {
        List<User> userList = userService.sortName();
        request.setAttribute("listUser", userList);
        try {
            request.getRequestDispatcher("/user/list.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        String nameSearch = request.getParameter("nameSearch");
        List<User> userList = userService.searchByName(nameSearch);
        request.setAttribute("listUser", userList);
        try {
            request.getRequestDispatcher("/user/list.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        userService.delete(id);
        try {
            response.sendRedirect("/users");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
//        request.setAttribute("user",userService.getUserById(id));
        request.setAttribute("user",userService.getID(id));
        try {
            request.getRequestDispatcher("/user/edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) {

        try {
            request.getRequestDispatcher("/user/create.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void listUser(HttpServletRequest request, HttpServletResponse response) {
        List<User> userList = userService.selectAll();
        request.setAttribute("listUser", userList);
        try {
            request.getRequestDispatcher("/user/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                save(request, response);
                break;
            case "edit":
                update(request, response);
                break;
        }
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(id, name, email, country);
        userService.update(user);
        try {
            response.sendRedirect("/users");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void save(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name, email, country);
        userService.save(user);
        try {
            response.sendRedirect("/users");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
