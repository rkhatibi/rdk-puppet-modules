node default {

  include $::operatingsystem

  Ssh_authorized_key<| tag == 'admin' |>
  User<| tag == 'admin' |>

}
