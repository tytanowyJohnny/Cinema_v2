package model;

import java.util.ArrayList;

public class cinemaUser {

    private String name;
    private String surname;
    private String username;
    private String password;
    private int role = -1;

    /*

    Roles:

        -1 // Not logged in
        0 // Logged in
        1 // Admin


     */

    public cinemaUser(String mName, String mSurname, String mUsername, String mPassword, int mRole) {

        this.name = mName;
        this.surname = mSurname;
        this.username = mUsername;
        this.password = mPassword;
        this.role = mRole;

    }

    public cinemaUser(String mName, String mSurname, String mUsername, String mPassword) {

        this.name = mName;
        this.surname = mSurname;
        this.username = mUsername;
        this.password = mPassword;

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
