# == Class impala::common::config
#
# Basic configuration for impala.
#
class impala::common::config {
  file { "${impala::confdir}/core-site.xml":
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    alias   => 'impala_conf/core-site.xml',
    content => template('impala/core-site.xml.erb'),
  }
  file { "${impala::confdir}/hdfs-site.xml":
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    alias   => 'impala_conf/hdfs-site.xml',
    content => template('impala/hdfs-site.xml.erb'),
  }
  file { "${impala::confdir}/hive-site.xml":
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    alias   => 'impala_conf/hive-site.xml',
    content => template('impala/hive-site.xml.erb'),
  }
}
