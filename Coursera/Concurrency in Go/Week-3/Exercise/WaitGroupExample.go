package main

import (
	"fmt"
	"sync"
)

func foo(wg *sync.WaitGroup){
	fmt.Println("New Routine")
	wg.Done()
}

func main(){
	var wg sync.WaitGroup
	wg.Add(1)
	go foo(&wg)
	wg.Wait()
	fmt.Println("Main Routine")
}
