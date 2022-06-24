<!--DOCTYPE html-->


<meta name="layout" content="main">
<title>Change Password</title>




<div class="shell">
    <section>

        <article class="common-view no-background center-form">
            <h1 align="center">Change Password</h1>
            <g:form controller="account" action="editPassword" parsley-validate="true" class="reset-pwd-form custom-form">
                <span class="inputwrapper password-icon" style="padding-bottom:10px">
                    <g:passwordfield name="currentPassword" placeholder="Current password" class="no-space" parsley-required="true" parsley-error-message="Please enter current password.">
                    </g:passwordfield></span>

                <span class="inputwrapper password-icon" style="padding-bottom:10px">
                    <g:passwordfield name="password" placeholder="New password" class="no-space" id="password" parsley-required="true" parsley-error-message="Please enter new password.">
                    </g:passwordfield></span>

                <span class="inputwrapper password-icon" style="padding-bottom:10px">
                    <g:passwordfield name="password2" placeholder="Re-enter new password" class="no-space" parsley-equalto="#password" parsley-required="true" parsley-error-message="Please Re-enter new password.">
                    </g:passwordfield></span>


                <button type="submit" id="reset-pwd-btn" style="display: none;">Submit</button>
                <g:link controller="dashBoard" action="reports" class="cancel-btn">Cancel</g:link>
                <a href="javascript:void(0)" class="innerbtn" id="reset-btn" style="margin-left: -130px;top: 8px;">Update</a>
            </g:form>
        </article>
    </section>
</div>
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