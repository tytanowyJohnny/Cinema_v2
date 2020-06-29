package model;

import java.util.ArrayList;

public class CinemaUser {

    private String name = "";
    private String surname = "";
    private String username = "";
    private String password = null;
    private String email = "";
    private int role = -1;

    /*

    Roles:

        -1 // Not logged in
        0 // Logged in
        1 // Admin


     */

    public CinemaUser() {}

    public CinemaUser(String mName, String mSurname, String mUsername, String mPassword, String mEmail, int mRole) {

        this.name = mName;
        this.surname = mSurname;
        this.username = mUsername;
        this.password = mPassword;
        this.email = mEmail;
        this.role = mRole;

    }

    public CinemaUser(String mName, String mSurname, String mUsername, String mPassword, String mEmail) {

        this.name = mName;
        this.surname = mSurname;
        this.username = mUsername;
        this.password = mPassword;
        this.email = mEmail;

    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
