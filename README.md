
### Rspec Matchers:
> Um matcher no RSpec é um objeto que verifica o comportamento esperado nos testes unitários
> P/ iniciar o boiler de testes unitários, basta inserir no terminal o comando `rspec --init`

```
expect(actual).to matcher(expected)
expect(actual).to_not matcher(expected)
```

#### • Matchers relacionados a truthy e falsy (Booleans)
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
# MatchArray
array = [1, 2, 3, 4]

expect(array).to match_array([1, 2, 3, 4])
expect(array).to match_array([4, 3, 2, 1])

expect(array).not_to match_array([1, 2, 3])
expect(array).not_to match_array([1, 2, 3, 4, 5])”


# MatchInclude
array = [1, 2, 3, 4]

expect(array).to include(1)
expect(array).to include(1, 2, 3)
expect(array).to include(1, 2, 3, 4)

expect(array).not_to include(0)
expect(array).not_to include(5)
expect(array).not_to include(5, 6, 7, 8)
expect(array).not_to include([1, 2, 3, 4])

# end_with (Tail)
array = [1, 2, 3, 4]

expect(array).to end_with(4)
expect(array).to end_with(3, 4)
expect(array).not_to end_with(3)

# start_with (Head)
expect(array).to start_with(1)
expect(array).to start_with(1, 2)
expect(array).not_to start_with(2)


```

#### Matchers relacionados a Hashes

```
# MatchInclude
hash = { a: 7, b: 5 }

# Verificar se um hash tem uma ou mais chaves
expect(hash).to include(:a)
expect(hash).to include(:a, :b)

# Verificar se um hash tem um ou mais pares
# de chave - valor
expect(hash).to include(a: 7)
expect(hash).to include(b: 5, a: 7)

expect(hash).not_to include(:c)
expect(hash).not_to include(a: 11)
expect(hash).not_to include(a: 13, c: 11)
expect(hash).not_to include(:c, :d)

```

#### Matchers relacionados a Strings
> Verifica o valor de uma string atráves de uma regex 

```
# Matcher Match
string = "gabriel schiavo"

expect(string).to match(/gabriel/)
expect(string).to match(/chiav/)

expect(string).not_to match(/silva/)
expect(string).not_to match(/rafael/)” 

# Include Matcher
expect(string).to include("g")
expect(string).to include("gabriel")
expect(string).to include("gab", "sch")

expect(string).not_to include("silva")
expect(string).not_to include("gabs")”

# start_with (Head) 
expect(string).to start_with("gabriel")
expect(string).not_to start_with("schiavo")

# end_with (Tail)
expect(string).to end_with("schiavo")
expect(string).not_to end_with("gabriel")

```

