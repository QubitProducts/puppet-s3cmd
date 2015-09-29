class s3cmd::params {

  case $::operatingsystem {
    'Ubuntu', 'Debian' : {
      $packages = ['s3cmd','python-magic', 'python-central' ]
    }

    'CentOS', 'Redhat': {
      $packages = [ 's3cmd','python-magic']
    }

    default: {
      fail("Unsupported OS: ${::operatingsystem} ")
    }


}
