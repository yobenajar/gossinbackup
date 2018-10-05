# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include gossinbackup::install
class gossinbackup::install {
	package {'git':
                ensure => present,
        }

        package {'rsync':
                ensure => present,
        }

        package {'crudini':
                ensure => present,
        }

        vcsrepo { '/opt/gossin-backup/':
                ensure   => present,
                provider => git,
                source   => 'https://github.com/githubgossin/gossin-backup.git',
        }

        file{'/opt/gossin-backup/gossin-backup':
                validate_cmd => 'chmod +x gossin-backup'
        }
}
