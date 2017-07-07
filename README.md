# Usage

Launch a new REPL:
``` bash
docker run --rm -it -v "$PWD:/home/pry/work" dobbs/api-repl
```

### TL;DR if you already know these tools

http://pryrepl.org

https://github.com/lostisland/faraday

https://github.com/pezra/hal-client

### Example browse of github API:

``` ruby
conn = Faraday.new url: 'https://api.github.com'
cd conn
get './users/dobbs'
JSON.parse(_.body)
```
