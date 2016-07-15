package liliyayalovchenko;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "CV", urlPatterns = "{/liliyaYalovchenkoCV}")
public class CV extends HttpServlet {

    private static final Logger LOGGER = LoggerFactory.getLogger(CV.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        resp.setContentType("text/html");
        req.setCharacterEncoding("UTF-8");

        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/LiliyaYalovchenkoCV.jsp");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            resp.getWriter().println("Oops, error!");
            LOGGER.error("Error!" + Arrays.toString(e.getStackTrace()));
        }

    }
}
