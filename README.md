# Custom-Ruby-Linter

Build custom linter for ruby files

# About

This custom linter deals with the idea of checking ruby script and looking for syntax. It checks some of the unexpected actions may developer do in the code.

# The Build

The custom Ruby linter checks for the following warnings.

- Check the long of lines.
- Check spaces at the end of every line.
- Check empty lines between methods.

# Built with

- Ruby
- RSpec for test ruby

## Long of lines

```ruby

# Good code
def method_one(a, b)
  if a == b
    p '-----------------------------------------------------------'
  end
end

# Bad code
def method_one(a, b)
  p "-------------------------------------------------------------------" if a == b
end

```

## Space at the end of lines

```ruby

# Good code (no spaces at the end of line(s) )
def method_one
  return "Hello world"
end

# Bad code (spaces at the end of line(s) )
def method_one
  return "Hello world"
end

```

## Empty line between methods

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

👤 **Ammar El refay Kandel**

- GitHub: [ammarkandel](https://github.com/ammarkandel)
- Twitter: [@AmmarQandel](https://twitter.com/AmmarQandel)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ammar-kandel-7b4100193/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](LICENSE) licensed.
