name             'libuv'
maintainer       'Sourabh Shirhatti'
maintainer_email 'shirhatti@outlook.com'
license          'MIT'
description      'Installs/Configures libuv from source'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'git'
depends 'build-essential'

supports "ubuntu", "= 14.04"