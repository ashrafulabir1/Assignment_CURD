<!--DOCTYPE html-->


<meta name="layout" content="main">
<title>Change Password</title>




<div class="shell">
    <section>

        <article class="common-view no-background center-form">
            <h1 align="center">Change Password</h1>
            <g:form controller="password" action="editPassword" parsley-validate="true" class="reset-pwd-form custom-form">

                <g:textField name="email" id="email" placeholder="Enter your email" class="no-space" parsley-type="email" parsley-required="true" parsley-error-message="Please enter your email."></g:textField>
            %{--                <span class="inputwrapper email-icon" style="padding-bottom:10px">--}%
            %{--                    --}%
            %{--                    <g:textfield name="email" >--}%
            %{--                    </g:textfield>--}%
            %{--                </span>--}%


                <g:textField name="email" id="email" placeholder="Enter your email" class="no-space" parsley-type="email" parsley-required="true" parsley-error-message="Please enter your email."></g:textField>
            %{--                <span class="inputwrapper email-icon" style="padding-bottom:10px">--}%
            %{--                    --}%
            %{--                    <g:textfield name="email" >--}%
            %{--                    </g:textfield>--}%
            %{--                </span>--}%


                <span class="inputwrapper password-icon" style="padding-bottom:10px">
                    <g:passwordField name="email" id="email" placeholder="Enter your email" class="no-space" parsley-type="email" parsley-required="true" parsley-error-message="Please enter your email."></g:passwordField>
                    %{--                <span class="inputwrapper email-icon" style="padding-bottom:10px">--}%
                    %{--                    --}%
                    %{--                    <g:textfield name="email" >--}%
                    %{--                    </g:textfield>--}%
                    %{--                </span>--}%


                </span>


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