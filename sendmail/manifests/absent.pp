class sendmail::absent inherits sendmail {

  include sendmail::absent::install, sendmail::absent::config, sendmail::absent::service

}
