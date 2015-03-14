# == Class hive::frontend
#
# Hive client.
#
class impala::frontend {
  include 'impala::frontend::install'
  include 'impala::frontend::config'

  Class['impala::frontend::install'] ->
  Class['impala::frontend::config'] ->
  Class['impala::frontend']
}
