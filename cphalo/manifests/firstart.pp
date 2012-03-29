class cphalo::firstart {

  exec { 'cphalo first start':
    command     => "service cphalod start --api-key=${cphalo::data::apikey} --tag=${cphalo::data::tags}",
    logoutput   => on_failure,
    refreshonly => true,
  }

}
