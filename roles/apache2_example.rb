name "apache2_example"
description "apache2 example role"
run_list(
    "recipe[apache2]",
    "recipe[local-web_app]"
)
default_attributes(
)

