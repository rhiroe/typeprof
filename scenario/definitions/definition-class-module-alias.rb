## update: test.rbs
class Foo
  def hello: () -> String
end
class Bar = Foo
module M
  CONST: Integer
end
module N = M

## update: test.rb
x = Bar.new.hello
#   ^[A]
y = N::CONST
#   ^[B]

## definition: [A]
test.rbs:(4,6)-(4,9)

## definition: [B]
test.rbs:(8,7)-(8,8)
