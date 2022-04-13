#!/usr/bin/env bash

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

