<!--DOCTYPE html-->


<meta name="layout" content="main">
<title>Reset Password</title>




<div class="shell">
    <section>

        <article class="common-view no-background center-form">
            <h1 align="center">Reset Password</h1>
            <g:form controller="user" action="resetPassword" parsley-validate="true" class="reset-pwd-form custom-form">
                <g:hiddenfield name="token" value="${token.value}">
                    <span class="inputwrapper password-icon" style="padding-bottom:10px">
                        <g:passwordfield name="password" id="password" placeholder="Password" class="no-space" parsley-required="true" parsley-error-message="Please enter password.">
                        </g:passwordfield></span>


                    <span class="inputwrapper password-icon" style="padding-bottom:10px">
                        <g:passwordfield name="password2" placeholder="Re-enter Password" class="no-space" parsley-equalto="#password" parsley-required="true" parsley-error-message="Please Re-enter password.">
                        </g:passwordfield></span>


                    <button type="submit" id="reset-pwd-btn" style="display: none;">Submit</button>
                    <a href="javascript:void(0)" class="innerbtn" onclick="document.getElementById('reset-pwd-btn').click();" id="reset-btn">Submit</a>
                </g:hiddenfield></g:form>
        </article>
    </section>
    <g:render template="/web/footer">
    </g:render></div>
<script type="text/javascript">
    jQuery('#reset-btn').live('click',function(){
        var isValid = $('.reset-pwd-form').parsley('validate');
        if(isValid){
            jQuery('#reset-pwd-btn').click();
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