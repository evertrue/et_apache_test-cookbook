# lamp_stack

This cookbook implements the wrapper cookbook pattern to configure attributes, call resources or
run recipes from the [Apache2](https://github.com/viverae-cookbooks/apache2/tree/v3.1.0), PHP and Apt community cookbooks. This cookbook targets the Lamp Stack standalone deployments.

## Platforms

Ubuntu 

## Attributes
`node['lamp_stack']['webapp_name']`(default: 'testsample.com'): The name of the web app.
## Recipes

### default

It will install Apache, PHP and then configure sample web app using Community cookbook recipes.


## Usage

Add this to your node's runlist and run `sudo chef-client` on that node. 


## Update tests:

The test-kitchen tests at `test/integration/` needs to be
updated according to configuration changes made.


## Tests

Test Kitchen tests have been written that support vagrant. 
These tests make use of vagrant and the bento/ubuntu-14.04 box.

  
For example:

`kitchen test`


## License and Authors

Copyright (C) 2017

All rights reserved - Do Not Redistribute
