package SecurityConfig;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import javax.management.relation.Role;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import model.Account;



public class MyUserDetails implements UserDetails {

    private Account account;
    public MyUserDetails(Account account) {
        this.account = account;
    }


    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        // TODO Auto-generated method stub
//		SimpleGrantedAuthority authority = new SimpleGrantedAuthority(account.getRole()==1?"ADMIN":"USER");
        Set<GrantedAuthority> authorities = new HashSet<>();

        // Add roles as GrantedAuthority
        authorities.add(new SimpleGrantedAuthority(account.getRole()==1?"ADMIN":"USER"));


        return authorities;
    }

    @Override
    public String getPassword() {
        // TODO Auto-generated method stub
        return account.getPassword();
    }

    @Override
    public String getUsername() {
        // TODO Auto-generated method stub
        return account.getUsername();
    }

    public Account getAccount() {
        return this.account;
    }


    @Override
    public boolean isAccountNonExpired() {
        // TODO Auto-generated method stub
        return true;
    }


    @Override
    public boolean isAccountNonLocked() {
        // TODO Auto-generated method stub
        return true;
    }


    @Override
    public boolean isCredentialsNonExpired() {
        // TODO Auto-generated method stub
        return true;
    }


    @Override
    public boolean isEnabled() {
        // TODO Auto-generated method stub
        return true;
    }
}

