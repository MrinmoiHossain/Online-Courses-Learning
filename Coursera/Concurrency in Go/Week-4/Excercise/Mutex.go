package main

import (
	"fmt"
	"sync"
)

var ii int = 0
var mut sync.Mutex

func incement(){
	mut.Lock()
	ii = ii + 1
	mut.Unlock()
}

func main(){
	go incement()
	go incement()

	fmt.Println(ii)
}
