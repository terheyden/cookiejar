package com.{{cookiecutter.company}}.{{cookiecutter.sub_package}};

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

/**
 * UserTest unit tests.
 */
public class UserTest {

    @Test
    public void test() {

        // Create a new user with a random ID.
        User user = new User(Mocks.NAME, Mocks.AGE_21);

        // Verify we can recreate.
        User user2 = new User(user.getId(), user.getName(), user.getAge());

        assertEquals(user.getId(), user2.getId());
        assertEquals(user.getName(), user2.getName());
        assertEquals(user.getAge(), user2.getAge());
    }
}
