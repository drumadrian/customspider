

echo "START Script"


echo "Creating folder for $1"
mkdir $1 

echo "entering folder $1"
cd $1

#use these commands on Linux
#echo "Running wget -r on $1"
#wget -r $1 > $1.output 


#use these commands on OSX
echo "Running curl $1 -o $1.output"
curl "$1" -o $1.output 






echo "FINISH Script"
