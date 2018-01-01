package main_test

import (
	"fmt"
	"os"
	"testing"
)

func TestMain(m *testing.M) {
	os.Exit(m.Run())
}

func TestOne(t *testing.T) {
	fmt.Println("Start: Test One")
	defer fmt.Println("Finish: Test One")
}

func TestTwo(t *testing.T) {
	fmt.Println("Start: Test Two")
	defer fmt.Println("Finish: Test Two")
}
