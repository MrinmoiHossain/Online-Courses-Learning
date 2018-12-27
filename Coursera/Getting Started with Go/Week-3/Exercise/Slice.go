package main

import "fmt"

func main(){
	s := [7]string{"a", "b", "c", "d", "e", "f", "g"}
	s1 := s[1:3]
	s2 := s[3:7]

	fmt.Println(s)
	fmt.Println(s1)
	//fmt.Println(cap(s2))
	fmt.Println(s2)
}
