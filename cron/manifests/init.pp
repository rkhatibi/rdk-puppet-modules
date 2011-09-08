class cron {

  include cron::params, cron::install, cron::service

  Class['cron::install'] -> Class['cron::service']

}
