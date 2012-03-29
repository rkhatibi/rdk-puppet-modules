class cphalo::yum {

  yumrepo{ 'cloudpassage':
    descr    => 'CloudPassage production',
    baseurl  => "http://packages.cloudpassage.com/${cphalo::data::repokey}/redhat/\$basearch",
    gpgcheck => 1,
    gpgkey   => 'http://packages.cloudpassage.com/cloudpassage.packages.key'
  }

  Yumrepo['cloudpassage'] -> Class['cphalo::install']

}
