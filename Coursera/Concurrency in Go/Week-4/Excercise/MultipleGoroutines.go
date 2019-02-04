package main

import "fmt"

func prod(x int, y int, c chan int){
	c <- x * y
}

func main(){
	c1 := make(chan int)
	c2 := make(chan int)

	go prod(3, 4, c1)
	go prod(4, 5, c2)

	a := <- c1
	d := <- c2

	fmt.Println(a * d)
}
