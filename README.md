# Setter and Getter Methods

## Learning Goals

- Learn more about setter and getter methods
- Build and use setter and getter methods

## Introduction

So far, we've learned how to build classes and give them instance methods. We
also learned how to create instance variables and use setter and getter methods
to set and retrieve their values, respectively. In this lesson, we'll learn more
about these methods and why they're important.

## Setters and Getters

Setter and getter methods are integral to object-oriented programming in Ruby.
They are what enable us to assign attributes to our objects (e.g., `name` or
`breed`) and retrieve the value of those attributes.

To review, if we have a `Person` class, our setter and getter for the `name`
attribute will look like this:

```ruby
class Person

  # setter method
  def name=(name)
    @name = name
  end

  # getter method
  def name
    @name
  end

end
```

Note that the setter method is defined with an `=` (equals sign) appended to the
name of the method. The `=` is then followed by the parameter, `name`, in
parentheses. The `=` in the method definition line is part of the method's name;
it is simply a _character_ that identifies this method as a setter method. The
actual assignment — the use of the _operator_ `=` to set a value — happens
inside the method.

What this means is that, if we were to create a `Person` instance and then use
the usual Ruby syntax to call the setter method and pass it an argument, our
code would look like this:

```ruby
kanye = Person.new
kanye.name=("Kanye")
```

Note that this is exactly the same as calling any method that takes an argument on
any object:

```ruby
any_object.any_method(arg)
```

The only difference is the `=` that is part of our method's name, identifying it
as a setter method.

We don't have to use this syntax to call our setter method, however. Instead,
Ruby provides us a bit of syntactic sugar for setter methods that enables us to
do this:

```ruby
kanye = Person.new
kanye.name = "Kanye"
```

This syntax is easier to read and more intuitive and is therefore preferred.

Finally, to ask our `kanye` object to return the value of its `name` attribute,
we would do this:

```ruby
kanye.name #=> "Kanye"
```

Here we are calling the getter method, `name`, that belongs to every instance of
our `Person` class.

## Instructions

Fork and clone the lab and run `learn test`. To get the tests passing, you will
need to complete the following tasks:

### `Dog` and `lib/dog.rb`

1. Define a `name` getter and a `name=` setter method for the instance variable
   `@name`.
2. Define a `breed` getter and a `breed=` setter method for the instance variable
   `@breed`.

![Dog Breeds](https://curriculum-content.s3.amazonaws.com/module-1/ruby-oo-fundamentals/object-attributes-lab/Image_142_CommonDogBreeds.png)

### `Person` and `lib/person.rb`

1. Define a `name` getter and a `name=` setter method for the instance variable
   `@name`.
2. Define a `job` getter and a `job=` setter method for the instance variable `@job`.
