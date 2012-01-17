class sendmail::config {

  file { 'sendmail.mc':
    ensure  => present,
    path    => '/etc/mail/sendmai.mc',
    owner   => root,
    group   => root,
    mode    => '0644',
  }

}
