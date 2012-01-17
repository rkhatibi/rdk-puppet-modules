class sendmail::absent::config inherits sendmail::config {

  File['sendmail.mc'] {
    ensure => undef,
  }

}
