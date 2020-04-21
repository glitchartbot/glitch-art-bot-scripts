***Para ler essa documentação em portugês, [clique aqui](./README.md).***

# glitch-art-bot-scripts

Here you'll find the scripts (or sketches, if you prefer) used by [Glitch Art Bot](https://github.com/friaca/glitch-art-bot-ts).

Each script has its own folder and in each folder, its customization options.

## Basic usage

Reply to a tweet mentioning the bot (@GlitchArtBot) with the desired script, for example `@GlitchArtBot script-name`.

\**If you only mention the bot and don't inform the script, it will glitch the photo with the default options, which is, `pixelsort mode=1 photo=1`.*

## Advanced usage

Choose what script you want to edit your photo with, inform the [script's name](#available-scripts) options values and reply to the tweet. For example, if I want to glitch the fourth image of a tweet with the black mode of the Pixel Sort script, I need to reply to the tweet with `@GlitchArtBot pixelsort mode=2 photo=4`.

To know what options are available for each script, click the script name in the "**Available scripts**" section.

\**The order of the options doesn't matter.*

## Global options 

These options are compatible with all scripts.

| Option  | Default | Description |
| ------  | ------- | ----------- |
| `photo` |   `1`   | Specifies which photo to glitch if the tweet has more than one valid photo.

## <a name="availabe-scripts"></a> Available scripts

| Algorithm | Script's name | 
| --------- | -------------- |
| [Pixel Sort](https://github.com/friaca/glitch-art-bot-scripts/tree/master/pixelsort/README.md) | `pixelsort` |