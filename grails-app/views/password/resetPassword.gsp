<!--DOCTYPE html-->


<meta name="layout" content="main">
<title>Reset Password</title>




<div class="shell">
    <section>

        <article class="common-view no-background center-form">
            <h1 align="center">Reset Password</h1>
            <g:form controller="password" action="resetPassword" parsley-validate="true" class="reset-pwd-form custom-form">

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



                <button type="submit" id="reset-pwd-btn" style="display: none;">Submit</button>
                    <a href="javascript:void(0)" class="innerbtn" onclick="document.getElementById('reset-pwd-btn').click();" id="reset-btn">Submit</a>

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