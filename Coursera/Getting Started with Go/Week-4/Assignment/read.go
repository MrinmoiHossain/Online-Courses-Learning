package main

import (
	"encoding/csv"
	"fmt"
	"os"
)

type Name struct{
	fname string
	lname string
}

func main(){
	var fileName string
	fmt.Printf("Enter the name of the text file: ")
	fmt.Scan(&fileName)

	file, err := os.Open(fileName + ".txt")
	if err != nil{
		fmt.Println("Error: ", err)
	}
	//fmt.Println(file)

	reader := csv.NewReader(file)
	reader.Comma = ' '
	reader.FieldsPerRecord = -1
	fullName, err := reader.ReadAll()
	if err != nil {
		fmt.Println("Error: ", err)
	}
	var people Name
	var peoples []Name

	for _,each :=  range fullName{
		if len(each[0]) < 20 && len(each[1]) < 20{
			people.fname = each[0]
			people.lname = each[1]

			peoples = append(peoples, people)
			fmt.Println("First name: " + people.fname + ", Last name: " + people.lname)
		}
	}
}