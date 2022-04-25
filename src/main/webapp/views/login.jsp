<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 
<form action="/login" method="post">         
    <c:if test="${param.error != null}">          
        <p>Invalid username and password.</p>  
    </c:if>  
    <c:if test="${param.logout != null}">         
        <p>You have been logged out.</p>  
    </c:if>  
    <label for="username">Username</label>  
    <input type="text" id="username" name="username"/> <br/> <br/>      
    <label for="password">Password</label>  
    <input type="password" id="password" name="password"/>  <br/> <br/>     
    
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> <!--  this is option if http.csrf().disable() --> 
    <button type="submit" >Log in</button>  
</form>  

<a href="index">home</a>
