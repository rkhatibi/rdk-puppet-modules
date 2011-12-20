class glusterfs {

  include glusterfs::params, glusterfs::install, glusterfs::config
  Class['glusterfs::install'] -> Class['glusterfs::config']

}
