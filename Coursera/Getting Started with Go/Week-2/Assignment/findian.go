package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main(){
	reader := bufio.NewReader(os.Stdin)
	fmt.Printf("Enter a string: ")
	s,_ := reader.ReadString('\n')

	s = strings.ToLower(s)
	b := strings.ContainsAny(s, "a")

	if(s[0] == 'i' && s[len(s)-3] == 'n' && b){
		fmt.Printf("Found!")
	}else{
		fmt.Printf("Not Found!")
	}
}
