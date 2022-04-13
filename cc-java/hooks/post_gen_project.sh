#!/usr/bin/env bash

# Delete example user classes.

if [[ '{{ cookiecutter.keep_sample_classes }}' == 'n' ]]; then

    dir=src/main/java/com/{{ cookiecutter.company }}/{{ cookiecutter.sub_package }}
    rm $dir/User.java

    dir=src/test/java/com/{{ cookiecutter.company }}/{{ cookiecutter.sub_package }}
    rm $dir/UserTest.java
    rm $dir/Mocks.java
fi

# If the sub-package is simply 'n' then delete it.

if [[ '{{ cookiecutter.sub_package }}' == 'n' ]]; then

    # Java dir:

    company_dir=src/main/java/com/{{ cookiecutter.company }}
    sub_dir=$company_dir/{{ cookiecutter.sub_package }}

    mv $sub_dir/* $company_dir
    rmdir $sub_dir

    # Update file references.
    perl -i -wlpE 's|\.n;|;|g' $company_dir/*.java

    # Test dir:

    company_dir=src/test/java/com/{{ cookiecutter.company }}
    sub_dir=$company_dir/{{ cookiecutter.sub_package }}

    mv $sub_dir/* $company_dir
    rmdir $sub_dir

    # Update file references.
    perl -i -wlpE 's|\.n;|;|g' $company_dir/*.java

fi

