<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<html>
<head>
    <link href="styles/signup.css" rel="stylesheet">
    <title>Login</title>
    <%
        String loggedInUser = (String) session.getAttribute("display_name");
    %>
</head>
<body>
<script src="/javascript/countries.js"></script>
<%
    if (loggedInUser != null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<div class="container">
        <div class=heading>
            <%
                String usernameTaken = (String) request
                        .getAttribute("usernameTaken");
                String error = (String) request.getAttribute("error");
                if (usernameTaken != null)
                    out.print("<h2 class=\"form-signin-heading text-center\"><span class=\"label-warning\">Account with such username already exists</span></h2>");
                else if (error != null)
                    out.print("<h2 class=\"form-signin-heading text-center\"><span class=\"label-warning\">Please, try again</span></h2>");
                else
                    out.print("<h2 class=\"form-signin-heading text-center\"><span class=\"label-success\">Sign Up Here</span></h2>");
            %>
        </div>
    <form action="SignUp" method="post"class="form-horizontal form-signin" id="gh_sign" role="form"
          accept-charset="UTF-8">
        <div class="form-group">
            <label for="inputName3" class="field-label">Display Name:</label>
            <div class="label-field">
                <input type="text" class="form-control" placeholder="diplay name" required
                       autofocus id="display_name" name="display_name">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="field-label">Password:</label>
            <div class="label-field">
                <input type="password" class="form-control" placeholder="Password"
                       required id="password" name="password">
            </div>
        </div>
        <div class="form-group">
            <label for="firstName3" class="field-label">First Name:</label>
            <div class="label-field">
                <input type="text" class="form-control" placeholder="first name"
                       required id="first_name" name="first_name">
            </div>
        </div>
        <div class="form-group">
            <label for="lastName3" class="field-label">Last Name:</label>
            <div class="label-field">
                <input type="text" class="form-control" placeholder="last name"
                       required id="last_name" name="last_name">
            </div>
        </div>
        <div class="form-group">
            <label for="email3" class="field-label">E-mail:</label>
            <div class="label-field">
                <input type="text" class="form-control" placeholder="email"
                       required id="email" name="email">
            </div>
        </div>
        <div class="form-group">
            <label for="fbLink3" class="field-label">Facebook Link:</label>
            <div class="label-field">
                <input type="text" class="form-control" placeholder="facebook link"
                       required id="facebook_link" name="facebook_link">
            </div>
        </div>
        <div class="form-group">
            <label for="twitterLink3" class="field-label">Twitter Link:</label>
            <div class="label-field">
                <input type="text" class="form-control" placeholder="twitter link"
                       required id="twitter_link" name="twitter_link">
            </div>
        </div>
        <div class="form-group">
            <label for="googlePlusLink3" class="field-label">Google + link:</label>
            <div class="label-field">
                <input type="text" class="form-control" placeholder="google + link"
                       required id="google_plus_link" name="google_plus_link">
            </div>
        </div>
        <div class="form-group">
            <label for="country3" class="field-label">Country :</label>
            <div class="label-field">
                <%@include file="html/countries.html"%>
            </div>
        </div>
        <div class="form-group">
            <label for="city3" class="field-label">City :</label>
            <div class="label-field">
                <input type="text" class="form-control" placeholder="city"
                       required id="city" name="city">
            </div>
        </div>
        <div class="form-group">
            <label for="aboutMe3" class="field-label">About Me :</label>
            <div class="label-field">
                <input type="text" class="form-control" placeholder="about me"
                       required id="about_me" name="about_me">
            </div>
        </div>
    </form>
</div>
</body>
</html>