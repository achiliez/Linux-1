source_dir="/path/to/source"
backup_dir="/path/to/backup"

timestamp=$(date +"%Y%m%d%H%M%S")

backup_folder="$backup_dir/backup_$timestamp"

 
if [ ! -d "$source_dir" ]; then
    echo "Source directory does not exist."
    exit 1
fi

if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
fi


mkdir "$backup_folder"

cp -r "$source_dir" "$backup_folder"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully. Files are in $backup_folder"
else
    echo "Backup failed."
fi
