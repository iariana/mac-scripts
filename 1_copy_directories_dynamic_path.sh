#!/bin/zsh
#############################################
# Last change: 2024-01-17 Ariana
# This script creates directories and copies files from the source to the destination
# It's also possible to overwrite the existing file if those are changed 
#############################################

# Change to the script directory
# The `cd` command changes the current working directory to the one where the script is located.
# "$(dirname "$0")": Retrieves the directory of the currently executing script.
# `"$0"` represents the path of the script itself.
# `dirname` is a command that extracts the directory component of a file's path.
# The overall expression returns the directory containing the script.
cd "$(dirname "$0")"

# Paths to the source directories based on the current working directory (PWD)
sa="system_profiles/admin"
su="system_profiles/user"

# Paths to the available target directories
pa="/Users/Shared/'directory'/"
pu="/Users/Shared/'directory'/"

# Check whether the target directories exist. If not, create them with mkdir.
# The `[[ -d "$directory" ]]` checks if the specified directory exists.
# If the directory does not exist, `mkdir -p "$directory"` creates it, including any necessary parent directories.
[[ -d "$pa" ]] || mkdir -p "$pa"
[[ -d "$pu" ]] || mkdir -p "$pu"

# Check if the source directories exist.
# The `[[ ! -e "$file" ]]` checks if the specified file or directory does not exist.
if [[ ! -e "$sa" || ! -e "$su" ]]; then
    # Display an error message and exit with code 1 if source directories do not exist.
    echo "The source directories do not exist."
    exit 1
fi

# Copy files from source to destination
# The `cp -R "$source" "$destination"` command recursively copies files and directories from source to destination.
# -R: To specify recursive copying (including subdirectories) of directories.
cp -R "$sa" "$pa"
cp -R "$su" "$pu"

# Opens the Finder when you are finished
# The `open "$directory"` command opens the specified directory using the default file manager.
open "$pa"

# Exit the script without errors
# The `exit 0` command indicates a successful execution of the script.
exit 0
