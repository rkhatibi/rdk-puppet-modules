class sendmail {

  include sendmail::install, sendmail::config, sendmail::service
  Class['sendmail::install'] -> Class['sendmail::config'] ~> Class['sendmail::service']

}
