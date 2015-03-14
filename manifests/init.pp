# == Class: impala
#
#
class impala (
  $group = $impala::params::group,
  $metastore_hostname = $hive::metastore_hostname,
  $metastore_port = $hive::port,
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

  $hadoop_dyn_properties = {
  }
  $hadoop_dyn_descriptions = {
  }

  $hive_dyn_properties = {
    'hive.metastore.uris' => 'thrift://${impala::metastore_hostname}:${hive_port}',
    'hive.metastore.client.socket.timeout' => '3600'
  }
  $hive_dyn_descriptions = {
  }

  $hadoop_props = merge($hadoop::props, $hadoop_dyn_properties, $properties)
  $hadoop_descs = merge($hadoop::descs, $hadoop_dyn_descriptions, $descriptions)
  $hive_props = merge($dyn_hive_properties, $properties)
  $hive_descs = merge($dyn_hive_descriptions, $descriptions)
}

