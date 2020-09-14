
### Rspec Matchers:
> Um matcher no RSpec é um objeto que verifica o comportamento esperado nos testes unitários

```
expect(actual).to matcher(expected)
expect(actual).to_not matcher(expected)
```

#### • Matchers relacionados a truthy e falsy
> São matchers que testam se um objeto retorna como true ou false.

```
# passa se obj é truthy (diferente de nil e false)
expect(obj).to be_truthy
# passa se obj é falsy (nil ou false)
expect(obj).to be_falsey
# passa se obj é nil
expect(obj).to be_nil
# passa se obj é truthy (não nil e não false)
expect(obj).to be
```

#### • Matchers de equidade
> Compara se dois objetos são iguais, utilizando comparação genérica (==)

```
a = "some string"
b = "some string"
a == b # true
expect(a).to eq(b)    # passa pois a == b

expect(a).to equal(b) # passa quando a e b são referências
                      # para o mesmo objeto (a.equal?(b))

expect(a).to be(b)    # equivalente a `expect(a).to equal(b)`
expect(a).to eql(b)   # passa quando a e b possuem
                      # o mesmo hash code (a.eql?(b))
```

#### • Matchers relacionados a arrays
> Verifica se um array é "igual" ao outro, independente da ordem dos seus elementos

```
array = [1, 2, 3, 4]

expect(array).to match_array([1, 2, 3, 4])
expect(array).to match_array([4, 3, 2, 1])

expect(array).not_to match_array([1, 2, 3])
expect(array).not_to match_array([1, 2, 3, 4, 5])”

```

> 