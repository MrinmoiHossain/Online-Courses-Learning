package main

import "fmt"

func main(){
	var x int = 10
	var y int
	var ip *int
	var temp = 12

	ip = &x
	y = *ip
	fmt.Printf("The pointers value is: %d\n", y)
	fmt.Println("The pointers value is:", temp)
}