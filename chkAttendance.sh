#./chkAttendance.sh
#!/bin/bash

#Declare array
declare -a presencas

#Set output filename
read -p "Filename: " output_file
echo

#Check attendance and store in the array
echo Alunos presentes:
echo
while true; do
    read -p "Aluno (press q to quit):" student_name

    if [ $student_name == q ]; then
        break
    fi

    attendance+=("$student_name")
done

#Save array to output file
echo Alunos presentes: > $output_file
echo >> $output_file
for student in ${attendance[@]}
do
    echo $student >> $output_file
done
echo

echo Presenças guardadas no ficheiro $output_file
echo

#Display output file
cat $output_file