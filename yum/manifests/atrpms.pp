class yum::atrpms {

  case $::operatingsystem {
    Fedora: {
      yumrepo { 'atrpms':
        baseurl  => 'http://dl.atrpms.net/f$releasever-$basearch/atrpms/stable',
        descr    => 'Fedora Core $releasever - $basearch - ATrpms',
        enabled  => 1,
        gpgcheck => 1,
        gpgkey   => 'http://ATrpms.net/RPM-GPG-KEY.atrpms',
        exclude  => 'fxload xine* nagios* nrpe*',
      }
    }
    CentOS: {
      yumrepo { 'atrpms':
        baseurl  => 'http://dl.atrpms.net/el$releasever-$basearch/atrpms/stable',
        descr    => 'CentOS-$releasever - ATrpms',
        enabled  => 1,
        gpgcheck => 1,
        gpgkey   => 'http://ATrpms.net/RPM-GPG-KEY.atrpms',
        exclude  => 'fxload xine* nagios* nrpe*',
      }
    }
    default: {}
  }

}
