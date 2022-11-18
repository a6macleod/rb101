# RB109 Written Assessment

## Specific Topics of Interest

1. local variable scope, especially how local variables interact with method invocations with blocks and method definitions

2. mutating vs non-mutating methods, pass-by-reference vs pass-by-value

3. working with collections (Array, Hash, String), and popular collection methods (each, map, select, etc). Review the two lessons on these topics thoroughly.

4. variables as pointers

5. puts vs return

6. false vs nil and the idea of truthiness (truthy and falsy values)

7. method definition and method invocation

8. implicit return value of method invocations and blocks

9. how the Array#sort method works

### Example

```
greeting = 'Hello'

loop do
  greeting = 'Hi'
  break
end

puts greeting
```

The local variable greeting is assigned to the String 'Hello' on line 1. The do..end alongside the loop method invocation on lines 3 to 6 defines a block, within which greeting is reassigned to the String Hi on line 4. The puts method is called on line 8 with the variable greeting passed to it as an argument; since greeting is now assigned to 'Hi', this is what is output. This example demonstrates local variable scoping rules in Ruby; specifically the fact that a local variable initialized outside of a block is accessible inside the block.

```
greeting = 'Hello'
```

The greeting variable is assigned to the string 'Hello'

## Truthiness

Need to be explicitly clear about if you are talking about the _truthy_ or the `true` boolean; Same with _falsy_ or the `false` boolean.

```
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsy"
end
```

`a` evaluates as true in the conditional statement and so 'Hello is truthy' is output would be correct

`a` is truthy and so 'Hello is truthy' is output would be correct

## Method Invocation VS Method Definition

**Method Definition**

```
def greeting(name)
  puts "Hello, #{name}"
end
```

**Method Invocation**

```
greeting('Andrew')
```
