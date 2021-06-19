if [ -z "$2" ]
then
  NR = 99
else
  NR = $2
fi

for i in $(eval echo "{01..$NR}")
do
  if [ ! -d $1/$i ]
  then
    echo "Creating directory: $1/$i"
    sudo mkdir $1/$i
  else
    echo "Directory exists. Skipping."
  fi
done
