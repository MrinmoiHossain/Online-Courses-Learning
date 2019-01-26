package main

import "fmt"

func applyIt(afunc func(int) int, val int) int{
	return afunc(val)
}

func main(){
	v := applyIt(func (x int) int{
						return x + 1
					}, 2)
	fmt.Println(v)
}