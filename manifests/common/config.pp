# == Class impala::common::config
#
# Basic configuration for impala.
#
class impala::common::config {
  file { "${impala::params::config}":
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    alias   => 'impala_conf/impala-default',
    content => template('impala/impala-default.erb'),
  }
  file { "${impala::params::confdir}/hive-site.xml":
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    alias   => 'impala_conf/hive-site.xml',
    content => template('impala/hive-site.xml.erb'),
  }
}
