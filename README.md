Requirements
=======
Node.js  [from nodejs.org/download]

```bash
npm install -g bower gulp http-server
```


`cd` to this repo... and then.    

#### First Build
```bash
bower install && npm install && gulp build
```

#### Server
```bash
http-server -p 4200
```

```bash
# Builds then Watches for changes and re-loads files
gulp

# Only build
gulp build
```
