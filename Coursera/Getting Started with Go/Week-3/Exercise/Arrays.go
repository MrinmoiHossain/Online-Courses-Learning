package main

import "fmt"

func main(){
	arr := [5]int{5, 4, 3, 2, 1}


	for i := 0; i < 5; i++{
		fmt.Printf("%d: %d\n", i+1, arr[i])
	}
}
