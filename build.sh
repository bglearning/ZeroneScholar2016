#!/bin/bash

output_folder="Output/"
output_file="ZeroneScholar2016.pdf"
# In each Directory
for D in */;
do
    (
    cd $D
    # If the Directory is not Output
    if [[ $D != $output_folder ]]
    then
        echo "Working on: ${D}"
        # Compile each .tex file
        for file in *.tex;
        do
            pdflatex $file
            # Copy the output pdf to Output/ folder
            cp "${file%.tex}.pdf" ../$output_folder
        done
    fi
     )
done

cd $output_folder
# Delete the previous version
if [ -f $output_file ];
then
    echo "Deleting the Previous Version of the Output File" 
    rm $output_file
fi

# Unite the pdf into the Output File
echo "Uniting the output pdf into a single file..."
pdfunite $(ls -v *.pdf) $output_file
echo "Output File Created: ${output_file}"

