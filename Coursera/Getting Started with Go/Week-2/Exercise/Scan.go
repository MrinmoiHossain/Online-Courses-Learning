package main

import "fmt"

func main(){
	var s string

	fmt.Printf("What's your name? ")
	fmt.Scan(&s)

	fmt.Printf("User name is: %s\n", s)
}
