# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include gossinbackup::config
class gossinbackup::config {

$defaults = { 'path' => /opt/gossinbackup/gossinbackup.conf }
    $example = {
  	'Linux' => {
    	   'source'  => $gossinbackup::source_directory,
    	   'basedest' => $gossinbackup::destination_directory', 
	   'exclude' => $gossinbackup::exclude,
	   'days' => $gossinbackup::days,
	   'months' => $gossinbackup::months,
	   'years' => $gossingbackup::years,
	   'max_file_size' => $gossinbackup::max_file_size,
   	
        }
    }
create_ini_settings($example, $defaults)

    cron { 'logrotate':
        command => '/opt/gossin-backup/gossin-backup',
        user    => 'root',
        hour    => $gossinbackup::exec_hours,
        minute  => $gossinbackup::exec_minutes,
    }


}

