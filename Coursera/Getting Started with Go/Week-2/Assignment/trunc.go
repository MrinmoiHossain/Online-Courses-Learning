package main

import "fmt"

func main(){
	var temp float64

	fmt.Printf("Enter a floating point number: ")
	fmt.Scan(&temp)
	n := int(temp)

	fmt.Printf("The number is: %d\n", n)
}
