class sendmail::install {

  package {
    'sendmail':
      ensure => present;
    'sendmail-cf':
      ensure => present,
  }

}
