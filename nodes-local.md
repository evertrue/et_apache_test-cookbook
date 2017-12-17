#
# Copyright (C) 2015-2017 Nico Kadel-Garcia <nkadel@gmail.com>
#

nodes-local/ contains source controlled node configurations, suitable for use by
chef-solo or chef-zero.

nodes/ contains genderated node configurations crewated by chef-solo
from nodes-local/ files. These are dynamically updated by kernel
version, network configuration, and other system attributes. So they
are not suitable for standard source control setups.

Nico Kadel-Garcia <nkadel@gmail.com>
