# idaws.net

Homepage listing all our home made games.

Source data is in [./data/links.json](./data/links.json), with the following for each game:

1. Human friendly name
2. Github Pages URL (https://wyattfry.github.io/<REPO_NAME>)
3. Emoji
4. Description

Record a screencast of gameplay in webm format, then use [./shots/compress-webm.sh](./shots/compress-webm.sh) to shrink it for the web. Name the video file the same as the name from step 1 above, but lowercase, and replace spaces with dashes.

This repo's action workflow runs [./src/build.mjs](./src/build.mjs) which produces a new `index.html`, which is hosted as a GitHub Page at the custom domain [https://idaws.net](https://idaws.net).