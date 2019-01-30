package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

type Animal interface{
	Eat()
	Move()
	Speak()
}

type Cow struct{
	//{food : "grass", locomotion : "walk", spoken : "moo"}
}
func (a *Cow) Eat(){
	fmt.Println("grass")
}
func (a *Cow) Move(){
	fmt.Println("walk")
}
func (a *Cow) Speak(){
	fmt.Println("moo")
}

type Bird struct{
	//{food : "worms", locomotion : "fly", spoken : "poop"}
}
func (a *Bird) Eat(){
	fmt.Println("worms")
}
func (a *Bird) Move(){
	fmt.Println("fly")
}
func (a *Bird) Speak(){
	fmt.Println("poop")
}

type Snake struct{
	//{food : "mice", locomotion : "slither", spoken : "hsss"}
}
func (a *Snake) Eat(){
	fmt.Println("mice")
}
func (a *Snake) Move(){
	fmt.Println("slither")
}
func (a *Snake) Speak(){
	fmt.Println("hsss")
}

func main(){
	reader := bufio.NewReader(os.Stdin)

	animals := make(map[string]Animal)

	for{
		fmt.Print("> ")
		input, _ := reader.ReadString('\n')
		s := strings.Split(strings.TrimSpace(input), " ")

		switch s[0]{
			case "newanimal":
				switch s[2]{
					case "cow":
						animals[s[1]] = new(Cow)
					case "bird":
						animals[s[1]] = new(Bird)
					case "snake":
						animals[s[1]] = new(Snake)
				}
				fmt.Println("Created it!")
			case "query":
				obj, ok := animals[s[1]]

				if ok{
					switch s[2]{
						case "eat":
							obj.Eat()
						case "move":
							obj.Move()
						case "speak":
							obj.Speak()
					}
				}else{
					fmt.Println("Not found!")
				}
		}
	}
}
