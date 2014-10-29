# et_apache_test-cookbook

This Cookbook provisions a Ubuntu 12.04 machine with Apache and PHP with a new VirtualHost.

## Supported Platforms

* Ubuntu 12.04


## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['et_apache_test']['web_app']['name']</tt></td>
    <td>String</td>
    <td>The name of the webapp (recommend primary url)</td>
    <td><tt>`test-site.evertrue.com`</tt></td>
  </tr>
</table>

## Usage

### et_apache_test::default

Include `et_apache_test` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[et_apache_test::default]"
  ]
}
```

## License and Authors

Author:: EverTrue and Eddie Hurtig (<hurtige@ccs.neu.edu>)
