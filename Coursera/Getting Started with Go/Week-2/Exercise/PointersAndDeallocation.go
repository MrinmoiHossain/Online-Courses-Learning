package main

import "fmt"

func foo() *int{
	x := 1
	return &x
}

func main(){
	var y *int
	y = foo()
	fmt.Printf("The value of y is: %d\n", *y) //output of the programme
}