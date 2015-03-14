# == Class impala::catalog::config
#
# Configuration of impala catalog service.
#
class impala::catalog::config {
  contain impala::common::config
  contain impala::common::daemon
}
