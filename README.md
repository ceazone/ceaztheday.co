# ceaztheday.co

Temporary splash page for Cesar Santos' portfolio. Single self-contained `index.html`
— no build step, no dependencies.

## Editing
Open `index.html` and edit. Preview locally by opening the file in a browser, or:

    python3 -m http.server 8000

## Deploying
Hosted on GitHub Pages from the `main` branch. Any push goes live in ~1 minute:

    git add -A && git commit -m "update" && git push

`CNAME` binds the custom domain. `.nojekyll` skips Jekyll processing.
