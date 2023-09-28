
# Defining the source directory to back up
source_path="/home/nurjahan-shiah/important_docs"

# Defining the destination directory where backups will be stored
backup_dir="/home/nurjahan-shiah/backup"

# current date and time as a timestamp
timestamp=$(date +"%Y%m%d%H%M%S")

# a backup directory with the current timestamp
backup_folder="$backup_dir/backup_$timestamp"
mkdir -p "$backup_folder"

# Checking if the source path exists
if [ -e "$source_path" ]; then

# will copy the source directory to the backup folder
    cp -r "$source_path" "$backup_folder"
    echo "Backup of '$source_path' created in '$backup_folder'"
else
    echo "Error: Source path '$source_path' does not exist."
fi
