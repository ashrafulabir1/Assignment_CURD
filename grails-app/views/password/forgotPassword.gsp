<!--DOCTYPE html-->


<meta name="layout" content="main">
<title>Forgot Password</title>



<div class="shell">
    <section>

        <article class="common-view no-background center-form">
            <h1 align="center">Reset Password</h1>

            <h4><g:message code="spring.security.forgotPassword.description"></g:message></h4>
            <g:form controller="user" action="forgotPassword" parsley-validate="true" class="forgot-pwd-form custom-form">


                <span class="inputwrapper email-icon" style="padding-bottom:10px">
                    <g:textfield name="email" id="email" placeholder="Enter your email" class="no-space" parsley-type="email" parsley-required="true" parsley-error-message="Please enter your email.">
                    </g:textfield></span>


                <button type="submit" id="forgot-pwd-btn" style="display: none;">Submit</button>
                <a href="javascript:void(0)" class="innerbtn" id="forgot-btn">Submit</a>
            </g:form>
        </article>
    </section>
</div>
<script type="text/javascript">
    jQuery('#forgot-btn').live('click',function(){
        var isValid = $('.forgot-pwd-form').parsley('validate');
        if(isValid){
            jQuery('#forgot-pwd-btn').click();
        }
    });
    jQuery("input").bind("keydown", function(event) {
        var keycode = (event.keyCode ? event.keyCode : (event.which ? event.which : event.charCode));
        if (keycode == 13) {
            jQuery('#reset-pwd-btn').click();
            return false;
        } else  {
            return true;
        }
    });
</script>