if [ -z "$2" ]
then
  for i in $(eval echo "{01..99}")
  do
    if [ ! -d $1/$i ]
    then
      echo "Creating directory: $1/$i"
      sudo mkdir $1/$i
    else
      echo "$1:$i: Directory exists. Skipping."
    fi
  done
else
  for i in $(eval echo "{01..$2}")
  do
    if [ ! -d $1/$i ]
    then
      echo "Creating directory: $1/$i"
      sudo mkdir $1/$i
    else
      echo "$1/$i: Directory exists. Skipping."
    fi
  done
fi
