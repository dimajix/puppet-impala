# == Class impala::catalog::install
#
# Installation of impala catalog service.
#
class impala::catalog::install {
  include stdlib
  contain impala::common::postinstall

  ensure_packages($impala::packages['catalog'])
  Package[$impala::packages['catalog']] -> Class['impala::common::postinstall']
}
