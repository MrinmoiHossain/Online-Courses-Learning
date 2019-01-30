package main

import "fmt"

type Speaker interface{
	Speak()
}

type Dog struct{
	name string
}

func (d *Dog) Speak(){
	if d == nil {
		fmt.Println("<noise>")
	}else{
		fmt.Println(d.name)
	}
}
func main(){
	var obj Speaker
	var objD *Dog
	obj = objD
	obj.Speak()
}
