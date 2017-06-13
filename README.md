# Usage

Launch a new REPL:
``` bash
docker run --rm -v "$PWD:/home/pry" dobbs/pry-faraday
```

### TL;DR if you already know these tools

http://pryrepl.org

https://github.com/lostisland/faraday


### Example browse of github API:

``` ruby
# annoyance: alpine base image uses busybox;
# busybox's less doesn't play nicely with pry

Pry.config.parser = false
conn = Faraday.new url: 'https://api.github.com'
cd conn
get './users/dobbs'
JSON.parse(_.body)
```
