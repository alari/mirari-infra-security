<%@ page import="org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils" %>
<head>
    <title><g:message code='register.login.title'/></title>
    <meta name='layout' content='mono'/>
</head>

<body>

<form action='${postUrl}' method='POST' id="loginForm" name="loginForm" autocomplete='off'>
    <fieldset>
        <legend><g:message code='register.login.signin'/></legend>

        <div labelCode="register.login.username" field="username">
            <input name="${SpringSecurityUtils.getSecurityConfig().apf.usernameParameter}" id="username" size="20"/>
        </div>
        <div labelCode="register.login.password" field="password">
            <input type="password" name="${SpringSecurityUtils.getSecurityConfig().apf.passwordParameter}" id="password"
                   size="20"/>
        </div>

        <div>
            <input type="checkbox" class="checkbox" name="${rememberMeParameter}" id="remember_me" checked="checked"/>
            <label for='remember_me'><g:message code='register.login.rememberme'/></label> |
            <span class="forgot-link">
                <g:link controller='register' action='forgotPassword'><g:message
                        code='register.login.forgotPassword'/></g:link>
            </span>
        </div>
    </fieldset>

    <div>
        <input type="submit" value="${message(code: 'register.login.login')}" class="btn primary"/>
        <g:link controller="register" class="btn info">${message(code: 'register.login.register')}</g:link>
    </div>
</form>

<script>
    $(function() {
        $('#username').focus();
    });
</script>

</body>
