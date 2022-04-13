package com.{{cookiecutter.company}}.{{cookiecutter.sub_package}};

import java.io.Serial;
import java.io.Serializable;
import java.util.UUID;

/**
 * Example user class.
 */
public class User implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    private final UUID id;
    private final String name;
    private final int age;

    public User(UUID id, String name, int age) {
        this.id = id;
        this.name = name;
        this.age = age;
    }

    /**
     * Create a new User with a new random ID.
     */
    public User(String name, int age) {
        this(UUID.randomUUID(), name, age);
    }

    public UUID getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof User user)) {
            return false;
        }

        return id.equals(user.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }
}
