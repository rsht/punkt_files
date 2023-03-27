base_dir=$(pwd)
target_dir=~
this_filename=`basename "$0"`

cd $target_dir

# create symlinks for all .(dot) files in the current folder to the ~(home) folder using macOS CLI
# if some files exists already - ask(Y/n with Y being default option) if should be rewriten and show diff
for file in $(ls -A $base_dir); do
	if [ -f $file ]; then
		if [ -f $target_dir/$file ]; then
			echo "File $file already exists in $target_dir. Do you want to overwrite it? (Y/n)"
			read answer
			if [ "$answer" == "n" ]; then
				echo "Skipping $file"
				continue
			fi
		fi
		echo "Creating symlink for $file"
		ln -s $base_dir/$file $target_dir/$file
	fi
done
