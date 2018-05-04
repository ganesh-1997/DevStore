function validateSignUp() {
    var name = document.forms["SignUp"]["name"].value;
    var letters = /^[A-Za-z]+$/;
    if (letters.test(name) == false || name.length < 3 || name.length > 30) {
        document.getElementById("name").classList.add("textColor");
        document.getElementsByName("name")[0].value = '';
        document.getElementsByName("name")[0].placeholder = 'Enter a Valid Name!';
        return false;
    }
    var email = document.forms["SignUp"]["mail"].value;
    var pattern = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (pattern.test(email) == false || email.length > 35) {
        document.getElementById("mail").classList.add("textColor");
        document.getElementsByName("mail")[0].value = '';
        document.getElementsByName("mail")[0].placeholder = 'Enter a Valid E - Mail!';
        return false;
    }
    var number = document.forms["SignUp"]["number"].value;
    if (number.length != 10 || isNaN(number)) {
        document.getElementById("number").classList.add("textColor");
        document.getElementsByName("number")[0].value = '';
        document.getElementsByName("number")[0].placeholder = 'Enter a Valid Number!';
        return false;
    }
    var pwd = document.forms["SignUp"]["pwd"].value;
    if (pwd.length < 6 || pwd.length > 20) {
        document.getElementById("pwd").classList.add("textColor");
        document.getElementsByName("pwd")[0].value = '';
        document.getElementsByName("pwd")[0].placeholder = 'Password Length: 6-20 Characters!';
        return false;
    }
}
function validateSignIn() {
    var email = document.forms["SignIn"]["email"].value;
    var pattern = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (pattern.test(email) == false || email.length > 35) {
        document.getElementById("email").classList.add("textColor");
        document.getElementsByName("email")[0].value = '';
        document.getElementsByName("email")[0].placeholder = 'Enter a Valid E - Mail!';
        return false;
    }
    var password = document.forms["SignIn"]["password"].value;
    if (password.length < 6 || password.length > 20) {
        document.getElementById("password").classList.add("textColor");
        document.getElementsByName("password")[0].value = '';
        document.getElementsByName("password")[0].placeholder = 'Password Length: 6-20 Characters!';
        return false;
    }
}