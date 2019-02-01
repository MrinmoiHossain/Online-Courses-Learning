package main

import (
	"fmt"
	"time"
)

func main(){
	go fmt.Println("New comment")
	time.Sleep(1 * time.Millisecond)
	fmt.Println("Main comment")

}
