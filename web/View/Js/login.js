

function validateLoginForm() {
    if (document.forms["login_form"]["username"].value === "") {
        alert("Please Enter Your User Name!!!");
        return false;
    }
    if (document.forms["login_form"]["id"].value === "") {
        alert("Please Enter Your User ID!!!");
        return false;
    }
    if (document.forms["login_form"]["password"].value === "") {
        alert("Please Enter Your Password!!!");
        return false;
    }
}