

echo "START Script"


#echo "Creating folder for $1"
#output_directory=spider_1_output/$1
output_directory=spider_1_output
echo "output_directory = $output_directory" 
#mkdir $output_directory

echo "entering folder $output_directory"
cd $output_directory

#use these commands on Linux
#echo "Running wget -r on $1"
#wget -r $1 > $1.output 
#echo "Running:      wget --random-wait -r -p -e robots=off -U mozilla on $1"
#wget --random-wait -r -p -e robots=off -U mozilla $1 


echo "Running:    wget --random-wait --mirror --page-requisites --domains=$1 -e --user-agent=AGENT mozilla $1"
#Example: 
#wget --random-wait --mirror --page-requisites --domains=extremenetworks.com -e --user-agent=AGENT mozilla www.extremenetworks.com
wget --random-wait --mirror --page-requisites --domains=$1 -e --user-agent=mozilla $1




echo "FINISHED Script for $1"
