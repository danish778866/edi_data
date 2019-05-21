# Find number of tables in total
num=0;for i in *; do if [ -z "$(ls -A $i)" ]; then echo "$i is empty"; else num_files=`ls -ltr $i | wc -l`; num=$(($num + num_files - 1)); echo "$i - $num_files"; fi; done; echo $num

# Remove ending colon from folder names
for i in *; do name=`echo $i | cut -d':' -f1`; mv $i $name; done

# Append .csv to files
for i in *; do pushd $i; for j in *; do mv $j "${j}.csv"; done; popd; done
