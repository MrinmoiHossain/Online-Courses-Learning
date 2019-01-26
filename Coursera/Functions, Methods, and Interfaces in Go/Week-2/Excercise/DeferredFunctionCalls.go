package main

import "fmt"

func deferTesting(){
	i := 1
	defer fmt.Println(i + 1)
	i++
	fmt.Println("Defer Testing")
}

func main(){
	defer fmt.Println("Good bye")

	fmt.Println("Hello my boy")
	deferTesting()
}
