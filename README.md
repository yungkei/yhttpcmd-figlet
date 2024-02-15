# yhttpcmd-figlet

[![Software License](https://img.shields.io/github/license/yungkei/yhttpcmd-figlet)](LICENSE)
![Docker](https://img.shields.io/docker/v/yungkei/yhttpcmd-figlet?logo=docker)

yhttpcmd-figlet is a tiny cmd2http server, used to execute command figlet via http.

## About
### yhttpcmd
yhttpcmd is a tiny cmd2http base image, used to execute local commands via http.
https://github.com/yungkei/yhttpcmd

### figlet
FIGlet is a program that creates large characters out of ordinary
screen characters.
https://github.com/cmatsuoka/figlet

## Usage

### Docker Image
Docker images are available on [Docker Hub](https://hub.docker.com/r/yungkei/yhttpcmd-figlet/).
```bash
docker pull yungkei/yhttpcmd-figlet
```

### Start Server
```bash
docker run --name yhttpcmd-figlet -p 8080:8080 -d yungkei/yhttpcmd-figlet
```

### Execute figlet via HTTP
``` bash
curl -H "Content-Type:application/json" -d "{\"args\":\"hello\"}" -X POST 127.0.0.1:8080/figlet
{"Command":"/usr/bin/figlet hello","Message":" _          _ _       \n| |__   ___| | | ___  \n| '_ \\ / _ \\ | |/ _ \\ \n| | | |  __/ | | (_) |\n|_| |_|\\___|_|_|\\___/ \n                      \n"}
```

### Use Http Response

#### Golang
```golang
fmt.Println(" _          _ _       \n| |__   ___| | | ___  \n| '_ \\ / _ \\ | |/ _ \\ \n| | | |  __/ | | (_) |\n|_| |_|\\___|_|_|\\___/ \n                      \n")
```
```bash
# Console Result
 _          _ _       
| |__   ___| | | ___  
| '_ \ / _ \ | |/ _ \ 
| | | |  __/ | | (_) |
|_| |_|\___|_|_|\___/ 
```


#### Javascript
```javascript
console.log(" _          _ _       \n| |__   ___| | | ___  \n| '_ \\ / _ \\ | |/ _ \\ \n| | | |  __/ | | (_) |\n|_| |_|\\___|_|_|\\___/ \n                      \n")
```
```bash
# Console Result
 _          _ _       
| |__   ___| | | ___  
| '_ \ / _ \ | |/ _ \ 
| | | |  __/ | | (_) |
|_| |_|\___|_|_|\___/ 
```

## License

Apache License 2.0, see [LICENSE](https://github.com/yungkei/yhttpcmd-figlet/blob/main/LICENSE).

