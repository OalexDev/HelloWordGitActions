package main

import (
	"context"
	"os"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	ginadapter "github.com/awslabs/aws-lambda-go-api-proxy/gin"
	"github.com/gin-gonic/gin"
)

var ginLambda *ginadapter.GinLambda
var app *gin.Engine

func init() {

	app := gin.Default()
	ginLambda = ginadapter.New(app)
	app.GET("/health", Health)

}

func Handler(ctx context.Context, req events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	// If no name is provided in the HTTP request body, throw an error
	return ginLambda.ProxyWithContext(ctx, req)
}

func main() {

	if os.Getenv("ENV") != "dev" {
		lambda.Start(Handler)
	}

	app.Run(":1337")

}

func Health(context *gin.Context) {
	context.JSON(200, gin.H{
		"message": "Sucess",
	})

}
