package main

import (
	"fmt"
	"sync"
)

type Chopstick struct{

}

type Philosopher struct{
	num int
}

var pickChopstick = sync.Pool{
	New: func() interface{}{
		return new(Chopstick)
	},
}

func (p Philosopher) eat(ch chan int){
	defer wg.Done()

	<- ch
	fmt.Println("starting to eat", p.num)

	left := pickChopstick.Get()
	right := pickChopstick.Get()

	pickChopstick.Put(left)
	pickChopstick.Put(right)

	fmt.Println("finishing eating", p.num)

	ch <- 1
}

var wg sync.WaitGroup

func main(){
	ch := make(chan int, 2)

	for i := 0; i < 5; i++{
		pickChopstick.Put(new(Chopstick))
	}

	philosophers := make([]*Philosopher, 5)
	for i := 0; i < 5; i++{
		philosophers[i] = &Philosopher{i+1}
	}

	for i := 0; i < 5; i++{
		for j := 0; j < 3; j++{
			wg.Add(1)
			go philosophers[i].eat(ch)
		}
	}

	ch <- 1
	ch <- 1

	wg.Wait()
}
