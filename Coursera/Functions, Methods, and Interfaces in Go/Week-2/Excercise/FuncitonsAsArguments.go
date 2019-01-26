package main

import "fmt"

func applyIt(afunct func(int) int, val int) int{
	return afunct(val)
}

func inFn(x int) int{
	return x + 1
}

func decFn(x int) int{
	return x - 1
}

func main(){
	fmt.Println(applyIt(inFn, 3))
	fmt.Println(applyIt(decFn, -10))
	//fmt.Println("Hello World")
}