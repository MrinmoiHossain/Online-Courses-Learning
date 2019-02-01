package main

//importing library files
import (
	"fmt"
	"sync"
	"time"
)

//the main function
func main(){
	//initialize the a variable with 0
	a := 0
	// w is used for waiting for a collection of goroutines to finish
	var w sync.WaitGroup

	//iteration for 2 goroutines
	for i := 0; i < 2; i++{
		//added to the waitgroup counter
		w.Add(1)
		go func(){
			for j := 0; j < 400; j++{
				/*--------------
				- increasing the value a with 1
				- interleaving is totally random
				- read and set operation can't be predicted the sequence in different goroutines
				---------------*/
				a++
				time.Sleep(1 * time.Millisecond)
			}
			w.Done()
		}()
	}
	//waiting for 2 goroutines finish
	w.Wait()

	/*---------------
	- the result could be random number but less than or equal to 800
	- if there is no race between 2 goroutines the value will be precisely 800
	- 2 goroutines increase separately with 400 times
	---------------*/
	fmt.Println("Finally a becomes:", a)
}
