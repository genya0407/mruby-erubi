# mruby-erubi   [![build](https://github.com/genya0407/mruby-erubi/actions/workflows/ci.yml/badge.svg)](https://github.com/genya0407/mruby-erubi/actions/workflows/ci.yml)
Erubi class
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
p Erubi.hi
#=> "hi!!"
t = Erubi.new "hello"
p t.hello
#=> "hello"
p t.bye
#=> "hello bye"
```

## License
under the MIT License:
- see LICENSE file
