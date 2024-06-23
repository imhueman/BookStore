package SecurityConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import model.Account;
import respository.AccountRespository;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private AccountRespository accountRespository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        System.out.println("loadUserByUsername");
        // TODO Auto-generated method stub
        Account account = accountRespository.findByUsername(username);

        if (account == null) {
            throw new UsernameNotFoundException("User not found");
        }
//String passwordToEncode = account.getPassword();
//
//        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//        String encodedPassword = passwordEncoder.encode(passwordToEncode);
        account.setPassword(account.getPassword());
        System.out.println(account);
        return new MyUserDetails(account);
    }
}
