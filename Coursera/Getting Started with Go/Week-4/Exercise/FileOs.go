package main

import (
	"fmt"
	"os"
)

func main(){
	f, err := os.Open("info.txt")
	barr := make([]byte, 10)
	nb, err := f.Read(barr)

	fmt.Println(barr)
	fmt.Println(err, nb)

	f.Close()

	file, err := os.Create("output.txt")
	bArr := []byte{1, 2, 3}
	numB, err := file.Write(bArr)
	numB, err = file.WriteString("Good bye!")

	fmt.Println(err, numB)
}
