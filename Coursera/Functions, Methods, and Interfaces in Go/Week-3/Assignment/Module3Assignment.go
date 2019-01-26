package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

type animal struct{
	food string
	locomotion string
	spoken string
}

func (a *animal) Eat(){
	fmt.Println(a.food)
}

func (a *animal) Move(){
	fmt.Println(a.locomotion)
}

func (a *animal) Speak(){
	fmt.Println(a.spoken)
}

func storeData(s []string){
	obj := new(animal)

	switch s[0]{
	case "cow":
		obj.food = "grass"
		obj.locomotion = "walk"
		obj.spoken = "moo"

	case "bird":
		obj.food = "worms"
		obj.locomotion = "fly"
		obj.spoken = "poop"

	case "snake":
		obj.food = "worms"
		obj.locomotion = "fly"
		obj.spoken = "poop"
	}

	switch s[1]{
	case "eat":
		obj.Eat()
	case "speak":
		obj.Speak()
	case "move":
		obj.Move()
	}
}

func main(){
	reader := bufio.NewReader(os.Stdin)
	for {
		fmt.Print("> ")
		a, _ := reader.ReadString('\n')
		s := strings.Split(strings.TrimSpace(a), " ")

		storeData(s)
	}
}
