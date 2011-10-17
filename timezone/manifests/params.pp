class timezone::params {

  $zone = $timezone::params::zone ? {
    default => 'UTC'
  }

# MODULE INTERNAL VARIABLES
# (Modify to adapt to unsupported OSes)

  $packagename = $::operatingsystem ? {
    default => 'tzdata',
  }

}
