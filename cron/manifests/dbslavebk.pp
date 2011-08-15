define cron::dbslavebk ($cron_hour){

  cron { "dbslavebk":
    command => 'mysqldump -u root -A | gzip mysql.`date +%Y%m%d`.gz',
    minute  => fqdn_rand( 60 ),
    hour    => "${cron_hour}",
    require => Class["cron::service"],
  }

}
