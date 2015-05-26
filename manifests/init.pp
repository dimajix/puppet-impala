# == Class: impala
#
#
class impala (
  $group = $impala::params::group,
  $metastore_hostname = $hive::metastore_hostname,
  $metastore_port = $hive::port,
  $catalog_hostname = $impala::params::catalog_hostname,
  $statestore_hostname = $impala::params::statestore_hostname,
  $statestore_port = $impala::params::statestore_port,
  $server_port = $impala::params::server_port,
  $properties = undef,
  $descriptions = undef,
  $alternatives = $impala::params::alternatives,
  $features = undef,
) inherits impala::params {
  include stdlib
  include hive
  include hadoop

  if $metastore_hostname {
    $metastore_uri = "thrift://${impala::metastore_hostname}"
  }

  $hive_dyn_properties = {
    'hive.metastore.uris' => "thrift://${impala::metastore_hostname}:${hive_port}",
    'hive.metastore.client.socket.timeout' => '3600'
  }
  $hive_dyn_descriptions = {
  }

  $hive_props = merge($hive_dyn_properties, $properties)
  $hive_descs = merge($hive_dyn_descriptions, $descriptions)
}

