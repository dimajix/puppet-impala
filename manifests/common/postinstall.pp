# == Class impala::common::postinstall
#
# Preparation steps after installation. It switches impala-conf alternative, if enabled.
#
class impala::common::postinstall {
  $confname = $impala::alternatives
  $path = '/sbin:/usr/sbin:/bin:/usr/bin'

  if $confname {
    exec { 'impala-copy-config':
      command => "cp -a ${impala::confdir}/ /etc/impala/conf.${confname}",
      path    => $path,
      creates => "/etc/impala/conf.${confname}",
    }
    ->
    alternative_entry{"/etc/impala/conf.${confname}":
      altlink  => '/etc/impala/conf',
      altname  => 'impala-conf',
      priority => 50,
    }
    ->
    alternatives{'impala-conf':
      path => "/etc/impala/conf.${confname}",
    }
  }
}
