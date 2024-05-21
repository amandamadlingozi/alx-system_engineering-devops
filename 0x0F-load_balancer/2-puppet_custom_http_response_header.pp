# Define class to manage Nginx configuration
class nginx_custom_header {

    # Install Nginx package
    package { 'nginx':
        ensure => installed,
    }

    # Define Nginx configuration file
    file { '/etc/nginx/sites-available/default':
        ensure  => file,
        content => template('nginx/default.erb'),
        require => Package['nginx'],
        notify  => Service['nginx'],
    }

    # Define Nginx service
    service { 'nginx':
        ensure    => running,
        enable    => true,
        hasstatus => true,
        hasrestart => true,
    }
}

# Apply nginx_custom_header class
include nginx_custom_header

