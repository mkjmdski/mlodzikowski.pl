package main

import (
	"net/http"
	"fmt"
	"io/ioutil"
	"encoding/json"
	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

type DownloadUrl struct {
	Browser_download_url string
}

type GithubReponse struct {
	Assets []DownloadUrl
}

func handler(request events.APIGatewayProxyRequest) (*events.APIGatewayProxyResponse, error) {
	infoURL := "https://api.github.com/repos/mkjmdski/Awesome-CV/releases/latest"
	resp, err := http.Get(infoURL)
	retData := &events.APIGatewayProxyResponse{}
	if err != nil {
		fmt.Printf("The HTTP request failed with error %s\n", err)
		retData.Body = "Something wen't wrong :/"
		retData.StatusCode = 500
	} else {
		data, _ := ioutil.ReadAll(resp.Body)
		var githubRespone GithubReponse
		json.Unmarshal(data, &githubRespone)
		retData.Body = githubRespone.Assets[0].Browser_download_url
		retData.StatusCode = 200
	}
	return retData, nil
}

func main() {
	// Make the handler available for Remote Procedure Call by AWS Lambda
	lambda.Start(handler)
}