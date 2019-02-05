package main

import (
	"fmt"
	"sync"
)

var on sync.Once
var wg sync.WaitGroup

func setup(){
	fmt.Println("Initialize")
}

func dostuff(){
	on.Do(setup)
	fmt.Println("Hello!!!")
	wg.Done()
}

func main(){
	go dostuff()
}