package main

import "fmt"

func Swap(v []int, i int){
	v[i], v[i+1] = v[i+1], v[i]
}

func BubbleSort(v []int){
	n := len(v)
	for i := 0; i < n - 1; i++{
		for j := 0; j < n - i - 1; j++{
			if v[j] > v[j + 1]{
				Swap(v, j)
			}
		}
	}
}

func main(){
	fmt.Printf("Enter 10 integers value: ")
	arr := make([]int, 10)
	for i := 0; i < 10; i++{
		fmt.Scan(&arr[i])
	}
	BubbleSort(arr)
	fmt.Println(arr)
}
