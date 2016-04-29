name             'riemann2'
maintainer       'Alex Shadrin.'
maintainer_email 'alex@shdlabs.com'
license          'Apache 2.0'
description      'Installs/Configures riemann, riemann-dash and rienann-tools'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url       'https://github.com/alexshd/chef-riemann2.git'
version          '0.3.7'

recipe 'riemann::infra', "creating user and group, included in the `server` and `dash` recipes"
recipe 'riemann::dash',    "install `riemann-dash` with `config.rb` and `config.json` from templates"
recipe 'riemann::tools',   "installs `riemann-tools`"

supports 'ubuntu'
supports 'debian'
supports 'centos'

depends 'java'
depends 'apt'
depends 'yum'
depends 'ark'
depends 'runit'
depends 'build-essential'
