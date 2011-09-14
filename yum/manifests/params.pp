class yum::params {


# MODULES INTERNAL VARIABLES
# (Modify only to adapt to unsupported OSes)
    $packagename = $::operatingsystem ? {
        default => 'yum',
    }


}
