package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
)

func main(){
	m := make(map[string]string)

	reader := bufio.NewReader(os.Stdin)
	fmt.Printf("Enter your name: ")
	name,_ := reader.ReadString('\n')
	fmt.Printf("Enter your address: ")
	address,_ := reader.ReadString('\n')
	//fmt.Printf("Name: %s", name)
	//fmt.Printf("Address: %s",address)

	m[name[0:len(name)-2]] = address[0:len(address)-2]

	b, err := json.Marshal(m)
	if err != nil{
		fmt.Println("Error:", err)
	}
	os.Stdout.Write(b)
}
