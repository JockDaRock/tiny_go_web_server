package main

import (
        "net/http"
)

func main() {
        http.Handle("/", http.FileServer(http.Dir("./tiny_go_web_server")))
        http.ListenAndServe(":8282", nil)
}