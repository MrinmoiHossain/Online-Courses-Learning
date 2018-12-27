package main

import "fmt"

func main(){
	a := "Mrinmoi"
	b := "Hossain"
	cn := 0
	for i := 0; i < 10; i++{
		if i % 2 == 0{
			cn++
			fmt.Printf("%d: %s ", cn, a)
		}else{
			fmt.Printf("%s\n", b)
		}
	}
}
