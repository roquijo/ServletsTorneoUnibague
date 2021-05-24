package sos.sisho.myFirstServlet.user.domain;

public class User {

    private final String user;
    private final String password;

    public User(String user, String password) {
        this.user = user;
        this.password = password;
    }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }

    public boolean isUserValid() {
        if(this.user != null && this.password != null) {

            if(this.user.equals("jorge") && this.password.equals("123"))
            {
                return true;
            }
            else if(this.user.equals("juanpablo") && this.password.equals("123"))
            {
                return true;
            }
            else if(this.user.equals("juanes") && this.password.equals("123"))
            {
                return true;
            }
        }
        return false;
    }
}
