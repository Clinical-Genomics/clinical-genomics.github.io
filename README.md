# [clinicalgenomics.se](http://www.clinicalgenomics.se/) [![Build Status][travis-image]][travis-url]
Customer portal website written in Jekyll.

If you are unfamilar with [Markdown](https://help.github.com/articles/markdown-basics/) you can copy-paste the content over to [Dillinger](http://dillinger.io/), a web-based Markdown editor that will show a live preview as you make changes to the document.

## Deploy

Before deploying it might be a good idea to run serve the site locally to verify that everything is OK.

```bash
$ git pull
$ bundle exec jekyll serve
```

... when you are ready, run:

```bash
$ gulp deploy
```


[travis-url]: https://travis-ci.org/Clinical-Genomics/clinical-genomics.github.io
[travis-image]: https://img.shields.io/travis/Clinical-Genomics/clinical-genomics.github.io.svg?style=flat
