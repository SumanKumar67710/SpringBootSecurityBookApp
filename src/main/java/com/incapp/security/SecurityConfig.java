package com.incapp.security;


import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configurers.provisioning.InMemoryUserDetailsManagerConfigurer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		InMemoryUserDetailsManagerConfigurer user=auth.inMemoryAuthentication();
		user.withUser("yoyo").password("{noop}yoyo12").roles("admin");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/").permitAll()
		.antMatchers("/home").permitAll()
		.antMatchers("/search").permitAll()
		.antMatchers("/searchBook").permitAll()
		.antMatchers("/newBook").hasRole("admin")
		.antMatchers("/addBook").hasRole("admin")
		.antMatchers("/delete").hasRole("admin")
		.antMatchers("/deleteBook").hasRole("admin")
		.antMatchers("/update").hasRole("admin")
		.antMatchers("/updateBook").hasRole("admin")
		.antMatchers("/adminpage").hasRole("admin")
		.anyRequest().authenticated()
		.and().formLogin().loginPage("/login").permitAll()
		.defaultSuccessUrl("/adminpage", true)
		.and().logout().logoutSuccessUrl("/login?logout").permitAll()
		.and().exceptionHandling().accessDeniedPage("/accessDenied");
		
		//http.csrf().disable();
	}
}
