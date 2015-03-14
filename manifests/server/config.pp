# == Class impala::server::config
#
# Configuration of impala server2 service.
#
class impala::server::config {
  contain hadoop::common::yarn::config
  contain hadoop::common::mapred::config
  contain impala::common::config
  contain impala::common::daemon
}
