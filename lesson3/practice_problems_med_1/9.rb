def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# foo is called first returning a "yes"
# bar uses the "yes" parameter (overriding the default) which makes the ternary operation false and return "no"
