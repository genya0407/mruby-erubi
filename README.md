# mruby-erubi   [![build](https://github.com/genya0407/mruby-erubi/actions/workflows/ci.yml/badge.svg)](https://github.com/genya0407/mruby-erubi/actions/workflows/ci.yml)

Port of [erubi](https://github.com/jeremyevans/erubi).
Mostly identical to original erubi, but slightly modified for mruby compatibility.

## install by mrbgems

- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 'genya0407/mruby-erubi'
end
```

## example

```ruby
hoge = '<script>while (true) { alert("This is infinit!"); }</script>'
template = '<%= hoge %>'

# You can escape HTML string by `escape` option
src = Erubi::Engine.new(template, escape: true).src
eval(src) #=> '&lt;script&gt;while (true) { alert(&quot;This is infinit!&quot;); }&lt;/script&gt;'
```

## License

under the MIT License:
- see LICENSE file
