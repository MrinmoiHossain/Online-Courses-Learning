package main

import "fmt"

func getMax(vals ...int) (int, int){
	maxV := -1
	index := -1
	for i, v := range vals{
		if v > maxV{
			maxV = v
			index = i
		}
	}
	return maxV, index + 1
}

func main(){
	v := []int{3, 4, 8, 1, 2}

	mx, i := getMax(3, 4, 8, 1, 2)
	fmt.Println(mx, i)
	//Variadic Slice Argument
	fmt.Println(getMax(v...))
}
