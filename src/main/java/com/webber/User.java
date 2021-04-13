package com.webber;

import java.io.Serializable;
import java.util.Hashtable;
import java.util.Map;

/**
 *
 * @author Dorchek
 */
public class User implements Serializable {

    private long userId;
    private String username;
    private String firstName;
    private String lastName;
    private Map<String, Boolean> permissions = new Hashtable<>();
    
    public User() {
        this.userId = 0L;
        this.username = "";
        this.firstName = "";
        this.lastName = "";
        this.permissions = new Hashtable<>();
    }

    public User(long userId, String username, String firstName, String lastName, Map<String, Boolean> permissions) {
        this.userId = userId;
        this.username = username;
        this.firstName = firstName;
        this.lastName = lastName;
        this.permissions = permissions;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Map<String, Boolean> getPermissions() {
        return permissions;
    }

    public void setPermissions(Map<String, Boolean> permissions) {
        this.permissions = permissions;
    }

    @Override
    public String toString() {
        return this.username + ": " + this.lastName + ", " + this.firstName;
    }
}
