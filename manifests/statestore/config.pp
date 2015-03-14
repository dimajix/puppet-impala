# == Class impala::statestore::config
#
# Configuration of impala statestore service.
#
class impala::statestore::config {
  contain impala::common::config
  contain impala::common::daemon
}
