$(document).ready(function () {
$('#register').slideToggle();
			$('.gbmai').click(function(){ $('#register').slideToggle()});

            var theme = getTheme();
            $('#sendButton').jqxButton({ width: 60, height: 25, theme: theme });
            $('#acceptInput').jqxCheckBox({ width: 130, theme: theme });
            $('#sendButton').bind('click', function () {
                $('#testForm').jqxValidator('validate');
            });
            $("#ssnInput").jqxMaskedInput({ mask: '###-##-####', height: 22, theme: theme });
            $("#phoneInput").jqxMaskedInput({ mask: '(###)###-####', height: 22, theme: theme });
            $("#zipInput").jqxMaskedInput({ mask: '###-###', height: 22, theme: theme });
            $('.text-input').addClass('jqx-input');
            if (theme.length > 0) {
                $('.text-input').addClass('jqx-input-' + theme);
            }
            var date = new Date();
            date.setFullYear(2000, 0, 1);
            $('#birthInput').jqxDateTimeInput({ theme: theme, height: 22, value: $.jqx._jqxDateTimeInput.getDateTime(date) });
            $("#register").jqxExpander({ width: '300px', theme: theme, showArrow: false, toggleMode: 'none' });
            // initialize validator.
            $('#testForm').jqxValidator({
             rules: [
                    { input: '#userInput', message: 'Username is required!', action: 'keyup, blur', rule: 'required' },
                    { input: '#userInput', message: 'Your username must be between 3 and 12 characters!', action: 'keyup', rule: 'length=3,12' },
                    { input: '#realNameInput', message: 'Your real name must contain only letters!', action: 'keyup', rule: 'notNumber' },
                    { input: '#realNameInput', message: 'Your real name must be between 3 and 12 characters!', action: 'keyup', rule: 'length=3,12' },
                    { input: '#birthInput', message: 'Invalid date! The entered date should be between 1/1/1900 and 1/1/2012.', action: 'valuechanged', rule: function () {
                        var date = $('#birthInput').jqxDateTimeInput('value');
                        var result = date.dateTime.getFullYear() >= 1900 && date.dateTime.getFullYear() <= 2012;
                        return result;
                    }
                    },
                    { input: '#passwordInput', message: 'Password is required!', action: 'keyup', rule: 'required' },
                    { input: '#passwordInput', message: 'Your password must be between 4 and 12 characters!', action: 'keyup', rule: 'length=4,12' },
                    { input: '#passwordConfirmInput', message: 'Password is required!', action: 'keyup', rule: 'required' },
                    { input: '#passwordConfirmInput', message: 'Passwords doesn\'t match!', action: 'keyup, focus', rule: function (input) {
                        if (input.val() === $('#passwordInput').val()) {
                            return true;
                        }
                        return false;
                    }
                    },
                    { input: '#emailInput', message: 'E-mail is required!', action: 'keyup', rule: 'required' },
                    { input: '#emailInput', message: 'Invalid e-mail!', action: 'keyup', rule: 'email' },
                    { input: '#ssnInput', message: 'Invalid SSN!', action: 'valuechanged, blur', rule: 'ssn' },
                    { input: '#phoneInput', message: 'Invalid phone number!', action: 'valuechanged, blur', rule: 'phone' },
                    { input: '#zipInput', message: 'Invalid zip code!', action: 'valuechanged, blur', rule: 'zipCode' },
                    { input: '#acceptInput', message: 'You have to accept the terms', action: 'change', rule: 'required',position: 'left:-200,0'}],position: 'left:-200,0', theme: theme
            });
        });       