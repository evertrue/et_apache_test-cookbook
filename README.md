# DevOps Co-Op Take-Home

The point of this exercise is to create a very simple wrapper cookbook. To define that, a wrapper cookbook is a cookbook that, using the [Berkshelf](http://berkshelf.com/) tool, depends on a more generalized cookbook (e.g., [`apache2`](https://supermarket.getchef.com/cookbooks/apache2), [`mysql`](https://supermarket.getchef.com/cookbooks/mysql), [`java`](https://supermarket.getchef.com/cookbooks/java)), and uses just attributes, definitions, and custom resources (formerly known as lightweight resource providers, or LWRPs) to customize the configuration provided by the wrapped, or base, cookbook.

If you’d like to go more in-depth on this cookbook pattern, please check out [The Berkshelf Way](https://www.getchef.com/blog/chefconf-talks/the-berkshelf-way-jamie-winsor/) and Mischa Taylor’s excellent [Getting Started Writing Cookbooks the Berkshelf Way](http://misheska.com/blog/2013/06/16/getting-started-writing-chef-cookbooks-the-berkshelf-way/).

In this case, we would like to wrap the `apache2` cookbook to configure a simple LAMP server (though without the MySQL part).

The [README for `apache2` v3.1.0](https://github.com/viverae-cookbooks/apache2/tree/v3.1.0#apache2-cookbook) can illuminate you on that particular cookbook.

## Prereqs

Tools necessary to complete this work.

* Install the [ChefDK](https://downloads.chef.io/chef-dk/)
* Install [VirtualBox](https://www.virtualbox.org)
* Install [Vagrant](http://vagrantup.com)

## Specs

* Please fork this repo, and open a pull request back to this repo before you begin working
    - In this fashion, we can not only see your final output, but each piece of work as you go
    - This provides for an ongoing conversation throughout the entirety of your efforts here
* Use Ubuntu 14.04 as your test OS
* Disable the default virtual host using only attributes provided by the `apache2` cookbook (no recipe code)
* Set up your own virtual host using the provided [`web_app` definition](https://github.com/viverae-cookbooks/apache2/tree/v3.1.0#web_app) that comes with `apache2`
    - Further reading on [Chef Definitions](https://docs.getchef.com/essentials_cookbook_definitions.html)
* Ensure PHP is available for use by Apache
    - The mechanism for installing PHP is left up to the candidate; either a cookbook-based or package-based installation are acceptable
* Use [Test Kitchen](http://kitchen.ci) to integration test your cookbook
    - Bonus: write [Serverspec](http://serverspec.org) tests to assert the state of your newly-created server
