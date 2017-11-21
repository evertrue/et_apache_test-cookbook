name 'lamp-server'
maintainer 'hima'
maintainer_email 'himain8977@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures lamp-server'
long_description 'Installs/Configures lamp-server'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
depends 'apache2'
depends 'php'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/lamp-server/issues'

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/lamp-server'
