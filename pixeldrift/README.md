**_To read this documentation in english, [click here](./README-en-us.md)._**

## Nome do script

`pixeldrift`

## Opções

| Opção     | Valores permitidos                       | Padrão | Descrição                                                                                                             |
| --------- | ---------------------------------------- | ------ | --------------------------------------------------------------------------------------------------------------------- |
| `channel` | `1`: Vermelho<br>`2`: Verde<br>`3`: Azul | `1`    | O canal da imagem que vai ser usado pra fazer drift (recomendado usar o canal com cores mais predominantes na imagem) |
| `amount`  | `0 ... 100`                              | `50`   | O limite de cor pra fazer o drift (quanto menor o número, mais efeito)                                                |
| `dir`     | `1`: Vertical <br> `2`: Horizontal       | `1`    | A direção que o efeito será aplicado                                                                                  |
