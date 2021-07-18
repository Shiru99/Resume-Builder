package io.fall;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import io.fall.model.MyUserDetails;
import io.fall.model.User;
import io.fall.model.UserRepository;


@Service
public class MyUserDetailsService implements UserDetailsService{

    @Autowired
    UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> user = userRepository.findByUsername(username);

        if(user.isEmpty())
            throw new UsernameNotFoundException("Not Found : "+username);
        else
            // return user.map(MyUserDetails::new).get();
            return new MyUserDetails(user.get());
    }
    
}
