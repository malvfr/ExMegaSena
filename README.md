# Descrição

Uma simples aplicação para listar ordenadamente os números mais sorteados da Mega-Sena.

A aplicação agrega os números que mais foram sorteados na Mega-Sena desde 1996.

A fonte dos dados é o [site da loteria da Caixa](http://loterias.caixa.gov.br)

# Pré-requisitos 

Para executar a aplicação, você deve ter o Elixir instalado em sua máquina.

Você pode encontrar o tutorial de instalação do Elixir em sua [página oficial](https://elixir-lang.org/install.html)

# Utilização

Primeiramente, clone o projeto para algum diretório de sua preferência.

Existem 2 modos rápidos de executar a aplicação. O primeiro é executar o seguinte comando no terminal (Você deve estar na raiz do projeto) e aguardar alguns segundos:

O resultado do script será exposto diretamente no terminal e em um arquivo chamado "resultado.txt", que ficará na **raiz** do projeto.

```
  mix mega
```

O segundo método, é acessar o terminal na raiz do projeto e abrir uma sessão interativa no Iex 

```
  iex -S mix
```

e executar a função principal

```
  Mega.main
```

# Utilizar como dependência

Adicionar a dependência no seu arquivo mix.exs na seção deps
```

defp deps do
    [
      ...
      {:mega, "~> 0.1.0"}
      ...
    ]
end
```

# Resultados 

Os resultados até hoje (20/12/2020) são os seguintes:


| Número  |  Quantidade  |
| ---------- | ---- |
| 10 | 266 |
| 53 | 265 |
| 5 |257   | 
| 33 | 256 |
| 23 | 254 |
| 42 | 252 |
| 4 | 251 |
| 37 | 250 |
| 27 | 250 |
| 54 | 248 |
| 28 | 248 |
| 30 | 247 |
| 34 | 245 |
| 43 | 245 |
| 24 | 245 |
| 17 | 242 |
| 35 | 241 |
| 16 | 241 |
| 44 | 240 |
| 36 | 240 |
| 6 | 240 |
| 41 | 240 |
| 29 | 240 |
| 51 | 239 |
| 52 | 238 |
| 2 | 238 |
| 56 | 238 |
| 11 | 237 |
| 13 | 236 |
| 32 | 235 |
| 38 | 235 |
| 49 | 234 |
| 18 | 234 |
| 50 | 233 |
| 8 | 232 |
| 1 | 231 |
| 58 | 231 |
| 46 | 231 |
| 45 | 229 |
| 12 | 229 |
| 59 | 227 |
| 20 | 224 |
| 47 | 224 |
| 40 | 224 |
| 14 | 222 |
| 7 | 221 |
| 57 | 221 |
| 39 | 220 |
| 31 | 219 |
| 19 | 218 |
| 60 | 217 |
| 25 | 215 |
| 9 | 214 |
| 48 | 212 |
| 3 | 212 |
| 15 | 206 |
| 21 | 203 |
| 22 | 202 |
| 55 | 197 |
| 26 | 193 |

