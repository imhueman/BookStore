package handler;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import jakarta.servlet.http.HttpSession;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class LoginFailureHandler extends SimpleUrlAuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(jakarta.servlet.http.HttpServletRequest request,
                                        jakarta.servlet.http.HttpServletResponse response, AuthenticationException exception)
            throws IOException, jakarta.servlet.ServletException {
        // TODO Auto-generated method stub

        String username = request.getParameter("username");
        String redirectURL = "/error/login?username=" + username;
        HttpSession session = request.getSession();
        session.setAttribute("mess", "Thông Tin Tài Khoản Sai");
        super.setDefaultFailureUrl(redirectURL);
        super.onAuthenticationFailure(request, response, exception);
    }


}

