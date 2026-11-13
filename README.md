# adamisom.github.io

Adam Isom's personal site, with a home page and a notes section. GitHub Pages builds it with Jekyll from the `main` branch, so a note goes live when its markdown file is pushed. There is no build step to run and nothing to deploy by hand.

The old 2021 portfolio is kept in the tag `old-portfolio`.

## How to publish a note

1. Write the note as a markdown file in `_drafts/`, e.g. `_drafts/kubernetes-in-agent-work.md`. Files in `_drafts/` are ignored by git, so a draft stays on this Mac until you move it.
2. Start the file with a title and a one-sentence description. The description is the summary in the RSS feed and in search results.

   ```
   ---
   title: What Kubernetes is for in agent work
   description: What I used Kubernetes for while building a nightly agent job, and what I didn't need it for.
   ---
   ```

3. Preview it with `scripts/preview.sh --drafts` and open http://localhost:4000. The preview needs Docker running, and the first run takes a few minutes to install gems.
4. When it's ready, move it into `_posts/` and put the publish date at the front of the file name, e.g. `_posts/2026-10-02-kubernetes-in-agent-work.md`. The file name without the date becomes the address, so this note would be at `/notes/kubernetes-in-agent-work/`. Use today's date or an earlier one, because Jekyll leaves out a note dated in the future, and GitHub Pages only rebuilds when you push.
5. Run `scripts/check.sh` to build the site and check every link.
6. Commit and push to `main`. The note is live about a minute later.

`_drafts/sample-note.md` shows the format. It's the one file in `_drafts/` that git tracks, and it's never built or served. Delete it once the first real note is out.

## Other changes

- The home page text is in `index.html`.
- The GitHub and LinkedIn links are in `_config.yml`.
- The styles, including dark mode, are in `css/site.css`.

## What the site does and doesn't do

The site uses no analytics, no cookies, no web fonts and no JavaScript, so it makes no requests to any other site. The feed is at `/feed.xml`, and it's an Atom feed, which every RSS reader accepts.
