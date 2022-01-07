##
## Erubi Test
##

assert("basic pattern") do
  hoge = 100
  assert_equal('100', eval(Erubi::Engine.new('<%= hoge %>').src))
end

assert("escape html") do
  hoge = '<script>while (true) { alert("This is infinit!"); }</script>'
  assert_equal('&lt;script&gt;while (true) { alert(&quot;This is infinit!&quot;); }&lt;/script&gt;', eval(Erubi::Engine.new('<%= hoge %>', escape: true).src))
end
