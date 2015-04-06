# == Class impala::statestore::service
#
class impala::statestore::service {
  service { $impala::daemons['statestore']:
    ensure    => 'running',
    enable    => true,
    subscribe => [File['impala_conf/impala-default']],
  }
}
