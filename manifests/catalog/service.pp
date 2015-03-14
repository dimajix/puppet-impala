# == Class impala::catalog::service
#
class impala::catalog::service {
  service { $impala::daemons['catalog']:
    ensure    => 'running',
    enable    => true,
    subscribe => [File['impala_conf/hive-site.xml']],
  }
}
