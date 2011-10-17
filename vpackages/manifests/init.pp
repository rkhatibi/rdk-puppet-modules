class vpackages {

  include vpackages::params

  @package { 'htop': }
  @package { 'lynx': }
  @package { 'screen': }
  @package { 'strace': }
  @package { 'tcpdump': }
  @package { 'wget': }
  @package { 'whois': name => $vpackages::params::whois, }

  # database packages
  @package { 'innotop': }
  @package { 'maatkit': }
  @package { 'mysql-client': name => $vpackages::params::mysqlclient, }

  # Fedora/rhel/centos
  @package { 'vim-enhanced': }
  @package { 'rubygem-rake': }

  # Debian/Ubuntu
  @package { 'python-software-properties': }

}
