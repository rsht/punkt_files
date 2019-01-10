base_dir=$(pwd)
target_dir=~
this_filename=`basename "$0"`

cd $target_dir

# create folders if missing
find $base_dir -mindepth 1 -depth -type d -printf "%P\n" | while read dir; do mkdir -p "$dir"; done

# link files (except this one)
find $base_dir -type f \( -iname "*" ! -iname "*$this_filename*" \) -printf "%P\n" | while read file; do ln -s "$base_dir/$file" "$file"; done

cd $target_dir
