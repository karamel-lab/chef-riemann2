name             'riemann2'
maintainer       'Alex Shadrin.'
maintainer_email 'alex@shdlabs.com'
license          'Apache 2.0'
description      'Installs/Configures riemann'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url       'https://github.com/alexshd/chef-riemann2.git'
version          '0.3.1'

supports 'ubuntu'
supports 'debian'
supports 'centos'

depends 'java'
depends 'apt'
depends 'yum'
depends 'ark'
depends 'runit'
depends 'build-essential'
