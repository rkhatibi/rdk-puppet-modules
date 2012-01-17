class sendmail::absent::install inherits sendmail::install {

  Package['sendmail','sendmail-cf'] {
    ensure => absent,
  }

}
