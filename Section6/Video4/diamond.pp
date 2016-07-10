  package {
    "diamond":
      ensure => installed,
      provider => pip;
  }
  file {
    "/var/log/diamond":
      ensure => directory,
  }
  file {
    "/var/log/diamond/diamond.log":
      ensure => present,
  }
