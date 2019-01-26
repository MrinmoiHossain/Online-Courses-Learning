package main

import "fmt"

func GenDisplaceFn(a, v0, s0 float64) func(float64) float64{
	fnn := func(t float64) float64{
		return (0.5 * a * t * t + v0 * t + s0)
	}
	return fnn
}

func main(){
	var a, v0, s0, t float64
	fmt.Print("Enter acceleration: ")
	fmt.Scan(&a)
	fmt.Print("Enter velocity: ")
	fmt.Scan(&v0)
	fmt.Print("Enter displacement: ")
	fmt.Scan(&s0)

	fn := GenDisplaceFn(a, v0, s0)

	fmt.Print("Enter time: ")
	fmt.Scan(&t)

	fmt.Println("Displacement:", fn(t))
}
