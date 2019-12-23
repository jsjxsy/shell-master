#program function: Nginx's Log analysis
#!/bin/bash
declare -a ssharray
i=0
numbers=""
for script_file in `ls | grep -v "monitor_man.sh" `
do echo "The Script file name ${i} " ' ====>' " ${script_file}"
	grep -E "^\#program function" ${script_file}	
    ssharray[$i]=${script_file}
#echo ${ssharray[$i]}
	numbers="${numbers} | ${i}"	
	i=$(($i+1))
done

#echo ${numbers}

while true

do
	read -p "please input a number [ ${numbers} ]: " execshell
#echo ${execshell}
		if [[ ! ${execshell} =~ ^[0-9]+ ]] 
		then exit 0 
		fi
	/bin/sh ./${ssharray[$execshell]}
done
