# go-docker-debug

```
docker-compose up

# - open up the debug tab in VSCODE
# - then click "Launch remote"
# - set some breakpoints in the main function (give conditional breakpoints a try)
# - finally open the browser to localhost:8080

docker-compose down
```

## Go Docs

You can run the official go docs offline, and generate your custom project's docs alongside it. It use to be easy but something broke with the inclusion of go modules: https://github.com/golang/go/issues/26827

However, I managed to fixed this with docker.
See: http://localhost:3000/pkg/github.com/ivorscott/go-docker-debug/example/#example_Hello

## VSCODE Configuration

```javascript
{
  // Use IntelliSense to learn about possible attributes.
  // Hover to view descriptions of existing attributes.
  // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Launch remote",
      "type": "go",
      "request": "attach",
      "mode": "remote",
      "remotePath": "/go/src",
      "port": 2345,
      "showLog": true,
      "trace": "verbose"
    }
  ]
}
```
