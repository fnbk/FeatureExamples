# Self-Hosted Azrue Functions Up and Running


```
docker build --tag hello .
docker run -it -p 8000:80 hello
visit http://localhost:8000/api/hello?name=world
```

source:
https://docs.microsoft.com/en-us/azure/azure-functions/functions-create-function-linux-custom-image


## Error: HTTP status code 401 - Unauthorized
```
dbug: Microsoft.AspNetCore.Routing.RouteBase[1]
      Request successfully matched the route with name 'MyHttpTrigger' and template 'api/MyHttpTrigger'
info: Microsoft.AspNetCore.Mvc.StatusCodeResult[1]
      Executing HttpStatusCodeResult, setting HTTP status code 401
```

Replace in MyHttpTrigger.cs (c `AuthorizationLevel.Function` to `AuthorizationLevel.Anonymous`)

before:
```
[HttpTrigger(AuthorizationLevel.Function, "get", "post", Route = null)] HttpRequest req,
```

after:
```
[HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = null)] HttpRequest req,
```