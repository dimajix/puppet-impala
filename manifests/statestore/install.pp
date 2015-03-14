# == Class impala::statestore::install
#
# Installation of impala statestore service.
#
class impala::statestore::install {
  include stdlib
  contain impala::common::postinstall

  ensure_packages($impala::packages['statestore'])
  Package[$impala::packages['statestore']] -> Class['impala::common::postinstall']
}
