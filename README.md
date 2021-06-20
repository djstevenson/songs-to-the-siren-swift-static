# SongsToTheSiren

A Swift-based static-site generator for the site songstothesiren.com

This is a replacement for a dynamic Perl (Mojolicious) version https://github.com/djstevenson/songs-to-the-siren-swift

This is the version of the site that is live on https://songstothesiren.com/ from 7th March 2021.

MIT Licence.

## Dependencies

Uses Swift Package Manager (SPM) to manage deps. Currently, it's using

 * Markdown: https://github.com/johnxnguyen/Down
 * HTML: https://github.com/djstevenson/swift-html (represents HTML as type-safe Swift, rather than as a text-based template)
 * Parsing: https://github.com/pointfreeco/swift-parsing (parses some shortcuts in Markdown sources).
 * Tailwind CSS - a gloriously opinionated CSS framework, replacing my original implementation that used Bootstrap and jQuery. There is no JavaScript required here with Tailwind.

The type-safe HTML thing is a cool idea, but isn't really that readable. Plans are to test alternatives, such as a similar tool that leverages Swift Result Builders. The current HTML dep is actually a fork of the original, as my PR for a useful improvement has not yet been incorporated upstream.

TODO: Instructions on installing deps.


## Test running from source directory

After checkout, build with 'swift' then run up a ruby web server:

```
# Checkout Repo
git clone https://github.com/djstevenson/songs-to-the-siren-swift-static
cd songs-to-the-siren-swift-static

# Build the HTML
swift run

# Build the CSS
npx tailwindcss -o ./output/css/songs-to-the-siren.css --jit --purge "./**/*.html"  --watch --input=tailwind.css

cd output
ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => Dir.pwd).start'
```

You can then visit http://localhost:8000/
