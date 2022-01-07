##
## Erubi Test
##

assert("Erubi#hello") do
  t = Erubi.new "hello"
  assert_equal("hello", t.hello)
end

assert("Erubi#bye") do
  t = Erubi.new "hello"
  assert_equal("hello bye", t.bye)
end

assert("Erubi.hi") do
  assert_equal("hi!!", Erubi.hi)
end
