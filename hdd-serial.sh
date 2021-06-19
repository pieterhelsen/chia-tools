if [ ! $2 -eq 'full' ]
then
	udevadm info --query=all --name=$1
else
	udevadm info --query=all --name=$1 | grep ID_SERIAL
fi