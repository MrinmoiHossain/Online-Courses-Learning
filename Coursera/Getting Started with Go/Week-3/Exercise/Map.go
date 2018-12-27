package main

import "fmt"

func main(){
	m := map[string]int {
		"joy":10}

	m["hello"] = 20
	m["apple"] = 40

	id, p := m["joy"]
	fmt.Println(id)
	fmt.Println(p)

	for key, value := range m{
		fmt.Println(key, value)
	}
}
