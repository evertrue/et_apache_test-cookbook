name "local-web_app"
description "local-web_app test role"
run_list(
    "recipe[apache2]",
    "recipe[local-web_app]"
)
default_attributes(
)

