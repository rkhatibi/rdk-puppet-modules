define apache::a2mods {

  exec { "a2mods_$name":
    command => "a2enmod $name",
    creates => "/etc/apache2/mods-enabled/$name.load",
    notify  => Class['apache::service'],
    require => Class['apache::config'],
  }

}
