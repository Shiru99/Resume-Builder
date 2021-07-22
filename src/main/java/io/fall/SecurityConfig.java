package io.fall;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    UserDetailsService userDetailsService; // need to MyUserDetailsService

    // 1. Configure Spring Security Authentication
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        // PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
        auth.userDetailsService(userDetailsService);
    }

    // 2. Configure Spring Security Authorization
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/edit").authenticated().antMatchers("/**").permitAll().and().formLogin();
    }

    /* password encoder : @Bean of type PasswordEncoder */
    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }
}