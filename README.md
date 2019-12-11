# go-docker-debug

```
docker-compose up

# - open up the debug tab in VSCODE
# - then click "Launch remote"
# - set some breakpoints in the main function
# - finally open the browser the localhost:8080

docker-compose down
```

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
