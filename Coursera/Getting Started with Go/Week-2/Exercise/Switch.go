package main

import "fmt"

func main(){
	for i := 0; i < 3; i++{
		switch i{
			case 0:
				fmt.Printf("Hi! ")
			case 1:
				fmt.Printf("Hello ")
			default:
				fmt.Printf("Mrinmoi")
		}
	}
}
