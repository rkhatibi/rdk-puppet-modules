# Puppet site.pp

# import nodes and roles though roles are going away
import "nodes/*.pp"

filebucket { main: server => puppet }

# global defaults
File { backup => main }
Exec { path => "/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin" } 

Package {
  provider => $::operatingsystem ? {
    centos => yum,
    fedora => yum,
    ubuntu => aptitude,
  }
}

# Run Stages
stage {'pre': before => Stage['main']}
