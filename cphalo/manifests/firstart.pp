class cphalo::firstart {

  exec { 'cphalo first start':
    command     => "service cphalod start --api-key=$cphalo::data::apikey",
    logoutput   => on_failure,
    refreshonly => true,
  }

}
