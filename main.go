package main

import (
	"github.com/gin-gonic/gin"
	"github.com/zseashellhb/golang101/handler"
)

func main() {
	r := gin.Default()
	r.GET("ping", handler.PingGet())
	r.Run() // listen and serve on 0.0.0.0:8080
}
