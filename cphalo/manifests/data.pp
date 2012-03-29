class cphalo::data {

  # using extlookup here allows per server, env, or hostgroup settings
  # switch to hiera once it goes into Puppet core
  $apikey = extlookup('cphalo_apikey','11111111111111111111111111111111111')
  $repokey = extlookup('cphalo_repokey','22222222222222222222222222222222222')
  $tags = extlookup('cphalo_tags',"$::operatingsystem")

}
