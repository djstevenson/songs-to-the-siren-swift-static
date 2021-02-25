# SongsToTheSiren

A Swift-based static-site generator for the site songstothesiren.com

This is an experimental prototype at the moment, I don't recommend anyone uses it yet.

MIT Licence.


## Test running from source directory

Build with 'swift' then run up a ruby web server:

```
swift run
cd output
ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => Dir.pwd).start'
```

You can then visit http://localhost:8000/
