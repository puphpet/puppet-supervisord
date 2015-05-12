# Class: supervisord::service
#
# Class for the supervisord service
#
class supervisord::service inherits supervisord  {
  if $supervisord::service_manage == true {
    service { $supervisord::service_name:
      ensure     => $supervisord::service_ensure,
      enable     => $supervisord::package_enable,
      hasrestart => true,
      hasstatus  => true
    }
  }
  else {
    service { $supervisord::service_name:
      ensure     => stopped,
      enable     => false,
      hasrestart => false,
      hasstatus  => false, 
    }
  }
}
