# == Class impala::server
#
# impala server.
#
class impala::server {
  include 'impala::server::install'
  include 'impala::server::config'
  include 'impala::server::service'

  Class['impala::server::install'] ->
  Class['impala::server::config'] ~>
  Class['impala::server::service'] ->
  Class['impala::server']
}
