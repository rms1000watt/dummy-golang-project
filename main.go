package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	str := fmt.Sprintf("Handling: /%s\n", r.URL.Path[1:])

	fmt.Print(str)
	fmt.Fprint(w, str)
}

func main() {
	fmt.Println("Starting server...")

	http.HandleFunc("/", handler)
	http.ListenAndServe(":9999", nil)
}
