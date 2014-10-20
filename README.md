# DevOps Co-Op Take-Home

The point of this exercise is to create a very simple wrapper cookbook. To define that, a wrapper cookbook is a cookbook that, using the [Berkshelf](http://berkshelf.com/)  tool, depends on a more generalized cookbook (e.g., [`apache2`](https://supermarket.getchef.com/cookbooks/apache2), [`mysql`](https://supermarket.getchef.com/cookbooks/mysql), [`java`](https://supermarket.getchef.com/cookbooks/java)), and uses just attributes to customize the configuration provided by the wrapped cookbook.

If you’d like to go more in-depth on this cookbook pattern, please check out [The Berkshelf Way](https://www.getchef.com/blog/chefconf-talks/the-berkshelf-way-jamie-winsor/) and Mischa Taylor’s excellent [Getting Started Writing Cookbooks the Berkshelf Way](http://misheska.com/blog/2013/06/16/getting-started-writing-chef-cookbooks-the-berkshelf-way/).

In this case, we would like to wrap the `apache2` cookbook to configure a simple LAMP server (though without the MySQL part).

The [README for `apache2` v2.0.0](https://github.com/viverae-cookbooks/apache2/tree/v2.0.0#apache2-cookbook) can illuminate you on that particular cookbook.

Some specs:

* Please fork this repo & submit your code as a pull request
* Use Ubuntu 12.04
* Disable the default virtual host using only attributes provided by the `apache2` cookbook (no recipe code)
* Set up your own virtual host using the provided [`web_app` definition](https://github.com/viverae-cookbooks/apache2/tree/v2.0.0#web_app) that comes with `apache2`
    - Further reading on [Chef Definitions](https://docs.getchef.com/essentials_cookbook_definitions.html)
* Ensure PHP is available for use by Apache
    - The mechanism for installing PHP is left up to the candidate; either a cookbook-based or package-based installation are acceptable
* Use [Test Kitchen](http://kitchen.ci) to test integration of your cookbook
    - Recommendation is to use [Vagrant](vagrantup.com) for the virtual machine creation
    - Alternatively, a cloud service could be used, but this is not required by any means
