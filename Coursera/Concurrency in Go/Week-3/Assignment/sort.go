package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
	"sync"
)

func main(){
	reader := bufio.NewReader(os.Stdin)
	fmt.Printf("Please enter the value: ")
	a,_ := reader.ReadString('\n')

	s := strings.Split(strings.TrimSpace(a), " ")
	arr := make([]int, 0, len(s))

	for _, str := range s{
		n, _ := strconv.Atoi(str)
		arr = append(arr, n)
	}

	const pair = 4
	subArray := int(math.Max(math.Ceil(float64(len(s))/float64(pair)), 1))

	var wg sync.WaitGroup

	for i := 0; i < pair; i++{
		start := int(math.Min(float64(i*subArray), float64(len(arr))))
		end := int(math.Min(float64((i+1)*subArray), float64(len(arr))))

		wg.Add(1)
		go func(arrA []int){
			fmt.Println("Now sorting:", arrA)
			sort.Ints(arrA)

			wg.Done()
		}(arr[start:end])
	}

	wg.Wait()
	sort.Ints(arr)
	fmt.Println("Sorted Array:", arr)
}