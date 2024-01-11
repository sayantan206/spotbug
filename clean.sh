echo "-----------------------------------------------------------------STARTING CLEANUP JOB--------------------------------------------------------"

#clear contents of specific files mentined in the array
file_paths=(
  ""/Users/sayantandey/Desktop/log/survey-management-system/survey-management-system.log""
)

# directory_paths=(
#   "/var/seamless/log/"
#   "/var/lib/docker/containers/"
#   "/var/lib/docker/overlay2/"
# )

for file_path in "${file_paths[@]}"; do
  echo "[$(date +"%Y-%m-%d %H:%M:%S")] --- Clearing contents of file: ${file_path}"
  : > "${file_path}"
done


# for directory in "${directory_paths[@]}"; do
#   find "$directory" -type f \
#     \( -name "*.log" -o -name "*.out" -o -name "*.dump" \) \
#     -exec sh -c 'echo "[$(date +"%Y-%m-%d %H:%M:%S")] --- Clearing contents of file: $1" && : > "$1"' sh {} \;
# done

# for directory in "${directory_paths[@]}"; do
#   find "$directory" -type f \
#     \( -name "*.log.*" -o -name "*.out.*" -o -name "*.out-*" -o -name "*.dump-*" \) \
#     -exec sh -c 'echo "[$(date +"%Y-%m-%d %H:%M:%S")] --- Deleting file: $1" && rm -f "$1"' sh {} \;
# done

echo "-----------------------------------------------------------------CLEANUP JOB COMPLETED--------------------------------------------------------"