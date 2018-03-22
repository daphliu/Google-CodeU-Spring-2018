package codeu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet class responsible for user registration.
 */
public class RegisterServlet extends HttpServlet {

String username = request.getParameter("username");
String password = request.getParameter("password");
String passwordHash = BCrypt.hashpw(password, BCrypt.gensalt());

User user = new User(UUID.randomUUID(), username, passwordHash, Instant.now());
userStore.addUser(user);

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException {
    request.getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);
  }
}