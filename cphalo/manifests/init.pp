class cphalo {

  # if you have your own apt/yum module you can comment these out
  # I recommends puppetlabs-apt for apt
  case $::osfamily {
    /(?i:debian)/: { include cphalo::apt }
    /(?i:redhat)/: { include cphalo::yum }
    default: {}
  }

  include cphalo::params, cphalo::data
  include cphalo::install, cphalo::firstart, cphalo::service

  Class['cphalo::install'] ~> Class['cphalo::firstart'] ~> Class['cphalo::service']

}
