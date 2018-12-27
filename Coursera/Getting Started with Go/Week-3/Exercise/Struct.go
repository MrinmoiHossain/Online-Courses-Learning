package main

import "fmt"

func main(){
	type Person struct{
		name string
		address string
		phone string
	}
	var p1 Person
	// p1 := new(Person)
	p1.name = "joe"
	p1.address = "Dhaka"
	p1.phone = "023408"

	p2 := Person{name: "mrinmoi", address: "barisal", phone: "4539583"}

	fmt.Println(p2)
}