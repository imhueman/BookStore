package handler;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import SecurityConfig.MyUserDetails;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import model.Account;



@Component
public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {


    @Override
    public void onAuthenticationSuccess(jakarta.servlet.http.HttpServletRequest request,
                                        jakarta.servlet.http.HttpServletResponse response, Authentication authentication)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
//		super.onAuthenticationSuccess(request, response, authentication);
        String redirectURL = "/login";
        try {
            MyUserDetails customUserDetails = (MyUserDetails) authentication.getPrincipal();
            Account account = customUserDetails.getAccount();

            if (account != null) {
                HttpSession session = request.getSession();
                session.setAttribute("acc", account);
                switch (account.getRole()) {
                    case 1:
                        redirectURL = "/admin";
                        break;
                    case 0:
                        redirectURL = "/home";
                        break;
                    default:
                        redirectURL = "/login";
                        break;
                }

            }

            response.sendRedirect(redirectURL);
        } catch (Exception ex) {
            response.sendRedirect(redirectURL);
        }
    }



}

