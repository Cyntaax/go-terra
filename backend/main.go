package main
import (
	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)
func main() {
	godotenv.Load()

	server := gin.Default()

	server.GET("", func(c *gin.Context) {
		c.String(200, "Hello!")
	})

	server.Run(":3000")
}