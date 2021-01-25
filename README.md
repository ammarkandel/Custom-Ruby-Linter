# Custom-Ruby-Linter

Build custom linter for ruby files

# About

This custom linter deals with the idea of checking ruby script and looking for syntax. It checks some of the unexpected actions may developer do in the code.

# The Build

The custom Ruby linter checks for the following warnings.

- Check the long of lines.
- Check spaces at the end of every line.
- Check empty lines before methods.

# Built with

- Ruby
- RSpec for test ruby

## Empty line before methods

```ruby

# Good code
def method_one
  return "Hello world"
end

def method_two
  return "Hello world"
end

# Bad code
def method_one
  return "Hello world"
end
def method_two
  return "Hello world"
end
```
