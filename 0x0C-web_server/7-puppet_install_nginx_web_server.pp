# Puppet manifest to install and configure Nginx on Ubuntu

# Update and install nginx
exec { 'update system':
    command => '/usr/bin/apt-get update',
    path    => ['/usr/bin', '/usr/sbin'],
}

package { 'nginx':
    ensure  => installed,
    require => Exec['update system'],
}

# Manage the Nginx default site configuration
file { '/etc/nginx/sites-available/default':
    ensure  => file,
    content => template('nginx/default.erb'),
    require => Package['nginx'],
    notify  => Service['nginx'],  # This will restart nginx when changes are made
}

# Ensure nginx is running
service { 'nginx':
    ensure    => running,
    enable    => true,
    require   => File['/etc/nginx/sites-available/default'],
}

# Create and manage the
# Puppet manifest to install and configure Nginx on Ubuntu

# Update and install nginx
exec { 'update system':
    command => '/usr/bin/apt-get update',
    path    => ['/usr/bin', '/usr/sbin'],
}

package { 'nginx':
    ensure  => installed,
    require => Exec['update system'],
}

# Manage the Nginx default site configuration
file { '/etc/nginx/sites-available/default':
    ensure  => file,
    content => template('nginx/default.erb'),
    require => Package['nginx'],
    notify  => Service['nginx'],  # This will restart nginx when changes are made
}

# Ensure nginx is running
service { 'nginx':
    ensure    => running,
    enable    => true,
    require   => File['/etc/nginx/sites-available/default'],
}

# Create and manage the

