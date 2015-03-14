# == Class impala::frontend::install
#
class impala::frontend::install {
  include stdlib
  contain impala::common::postinstall

  ensure_packages($impala::packages['common'])
  ensure_packages($impala::packages['frontend'])
  
  Package[$impala::packages['common']] -> 
  Package[$impala::packages['frontend']] -> 
  Class['impala::common::postinstall']
}
