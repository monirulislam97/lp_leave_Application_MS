package Model;

import java.io.Serializable;

public class User implements Serializable {

    String username;
    String id;
    String password;
    int level;

    public User() {
    }

    public User(String username, String id, String password, int level) {
        this.username = username;
        this.id = id;
        this.password = password;
        this.level = level;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

}
