package com.{{cookiecutter.company}}.{{cookiecutter.sub_package}};

import java.util.UUID;

/**
 * Mocks class.
 */
public final class Mocks {

    public static final String NAME = "name";
    public static final int AGE_21 = 21;
    public static final UUID UUID1 = UUID.randomUUID();

    private Mocks() {
        // Private since this class shouldn't be instantiated.
    }

}
