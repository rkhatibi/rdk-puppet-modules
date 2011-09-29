class puppet::params  {

# MODULES INTERNAL VARIABLES
# (Modify only to adapt to unsupported OSes)

  $packagename= $::operatingsystem ? {
    default => 'puppet',
  }

  $servicename = $::operatingsystem ? {
    default => 'puppet',
  }

  $processname = $::operatingsystem ? {
    default => 'puppetd',
  }

  $hasrestart = $::operatingsystem ? {
    default => true,
  }

  $hasstatus = $::operatingsystem ? {
    default => true,
  }

  $configfile = $::operatingsystem ? {
    default => '/etc/puppet/puppet.conf',
  }

  $configfile_mode = $::operatingsystem ? {
    default => '0644',
  }

  $configfile_owner = $::operatingsystem ? {
    default => 'root',
  }

  $configfile_group = $::operatingsystem ? {
    default => 'root',
  }

  $facterec2 = $::operatingsystem ? {
    Ubuntu  => '/usr/lib/ruby/1.8/facter/ec2.rb',
    default => '/usr/lib/ruby/site_ruby/1.8/facter/ec2.rb',
  }

  $sysconfig = $::operatingsystem ? {
    ubuntu  => '/etc/default/puppet',
    default => '/etc/sysconfig/puppet',
  }
    
}
