class sendmail::disable inherits sendmail {

  Service['sendmail'] {
    ensure => stopped,
    enable => false,
  }

}
