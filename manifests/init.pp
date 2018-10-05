# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include gossinbackup
class gossinbackup {
        String $source_directory,
        String $destination_directory,
        String $exclude,
        String $days,
        String $months,
        String $days,
        String $max_file_size,
        String $exec_hours,
        String $exec_minutes
)

{
        contain gossinbackup::install
        contain gossinbaclup::config

        class['::gossinbackup::install']
        -> class[':gossinbackuo::config']
}
