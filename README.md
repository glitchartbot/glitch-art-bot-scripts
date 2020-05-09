**_To read this documentation in english, [click here](./README-en-us.md)._**

# glitch-art-bot-scripts

Aqui você vai encontrar os scripts (ou sketches, se preferir) usados pelo [Glitch Art Bot](https://github.com/friaca/glitch-art-bot-ts).

Cada script tem sua própria pasta e em cada pasta, suas opções de personalização.

_Obs.: Tanto o usuário que menciona o bot quanto o usuário que postou o tweet que tem a imagem **NÃO** podem ter os tweets "protegidos", senão o bot não consegue enxergar os tweets._

## Uso básico

Responda um tweet mencionando o bot (@GlitchArtBot) com o script desejado, por exemplo `@GlitchArtBot nome-do-script`.

\*_Se você só mencionar o bot e não informar o script, ele vai editar a foto com as opções padrão, que são, `pixelsort mode=2 photo=1`_

## Uso avançado

Escolha qual script com que você quer editar sua foto, informe o [nome do script](#scripts-disponiveis), o valor das opções e responda o tweet. Por exemplo, se eu quero editar a quarta imagem de um tweet com o modo escuro do script de Pixel Sort, eu preciso responder o tweet com `@GlitchArtBot pixelsort mode=2 photo=4`

Para saber quais opções estão disponíveis para cada script, clique no nome do script na seção "**Scripts disponíveis**".

\*_A ordem das opções não importa._

## Opções globais

Essas opções são compatíveis com todos os scripts.

| Opção   | Padrão | Descrição                                                             |
| ------- | ------ | --------------------------------------------------------------------- |
| `photo` | `1`    | Especifica qual foto editar se o tweet tiver mais de uma foto válida. |

## <a name="scripts-disponiveis"></a> Scripts disponíveis

| Algoritmo                                                                                      | Nome do script |
| ---------------------------------------------------------------------------------------------- | -------------- |
| [Pixel Sort](https://github.com/friaca/glitch-art-bot-scripts/tree/master/pixelsort/README.md) | `pixelsort`    |
