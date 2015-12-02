exec { 'extract_fonts':
  command => '/usr/bin/unzip /vagrant/fontes/fonts.zip -d /usr/share/fonts/; /usr/bin/fc-cache -fv',
  path    => '/'
}

exec { "apt-update":
  command => "/usr/bin/apt-get update; /usr/bin/apt-get -y --force-yes dist-upgrade; /usr/bin/apt-get -y --force-yes upgrade; /usr/bin/apt-get -y --force-yes autoremove; /usr/bin/apt-get -y --force-yes autoclean"
}

package { ["texlive-full"]:
  ensure  => installed,
  require => Exec["apt-update", "extract_fonts"]
}