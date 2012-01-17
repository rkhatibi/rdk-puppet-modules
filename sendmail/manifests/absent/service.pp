class sendmail::absent::service inherits sendmail::service {

  Service['sendmail'] {
    ensure => undef,
    enable => undef,
  }

}
