# == Class impala::server::install
#
# Installation of impala server service.
#
class impala::server::install {
  include stdlib
  contain impala::common::postinstall

  ensure_packages($impala::packages['server'])
  Package[$impala::packages['server']] -> Class['impala::common::postinstall']
}
