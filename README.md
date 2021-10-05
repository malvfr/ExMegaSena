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

O resultado do script será exposto diretamente no terminal e em dois arquivos ("resultado.txt", "resultado.csv"), que ficarão na **raiz** do projeto.

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

Os resultados até hoje (05/10/2021) são os seguintes:

| Número | Quantidade |
| ------ | ---------- |
|	53	   |	268     	|
|	10	   |	265     	|
|	42     |	261     	|
|	33	   |	258     	|
|	4	     |	256     	|
|	23	   |	255     	|
|	5	     |	254     	|
|	30	   |	253     	|
|	27	   |	252     	|
|	34   	 |	251     	|
|	37	   |	251     	|
|	35	   |	249     	|
|	54	   |	249     	|
|	24	   |	248     	|
|	43	   |	247	     	|
|	29	   |	247	     	|
|	28	   |	247	     	|
|	17	   |	246	     	|
|	16	   |	246	     	|
|	36	   |	245	     	|
|	44	   |	244	     	|
|	41	   |	243	     	|
|	51	   |	242	     	|
|	32	   |	241	     	|
|	49	   |	241	     	|
|	38	   |	240	     	|
|	11	   |	239	     	|
|	13	   |	238	     	|
|	6	     |	238	     	|
|	2	     |	238	     	|
|	56	   |	237	     	|
|	52	   |	236	     	|
|	8	     |	235	     	|
|	50	   |	234	     	|
|	18	   |	234	     	|
|	46	   |	234	     	|
|	12	   |	232	     	|
|	58	   |	231	     	|
|	1	     |	228	     	|
|	47	   |	227	     	|
|	40	   |	227	     	|
|	59	   |	227	     	|
|	45	   |	226	     	|
|	20	   |	224	     	|
|	7	     |	224	     	|
|	19	   |	224	     	|
|	25	   |	223	     	|
|	57	   |	222	     	|
|	39	   |	221	     	|
|	9	     |	221	     	|
|	14	   |	221	     	|
|	60	   |	220	     	|
|	31	   |	218	     	|
|	48	   |	216	     	|
|	3	     |	215	     	|
|	22	   |	208	     	|
|	15	   |	206	     	|
|	21	   |	203	     	|
|	26	   |	197	     	|
|	55	   |	195	     	|
