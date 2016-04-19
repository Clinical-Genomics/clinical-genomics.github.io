# +--------------------------------------------------------------------+
# | gulp.js config to compile frontend assets
# +--------------------------------------------------------------------+
gulp = require 'gulp'
sass = require 'gulp-sass'
autoprefixer = require 'gulp-autoprefixer'
browserSync = require 'browser-sync'
reload = browserSync.reload
uglify = require 'gulp-uglify'
gulpif = require 'gulp-if'
cleanCSS = require 'gulp-clean-css'
argv = require('yargs').argv
ghPages = require 'gulp-gh-pages'


# browser-sync task, only cares about compiled CSS
gulp.task 'browser-sync', ->
  browserSync
    files: ['assets/css/*.css', 'index.html']
    proxy:
      port: 4000


# CSS task - finds and compiles all SCSS files
gulp.task 'css', ->
  return gulp.src './_scss/style.scss'
    .pipe sass { errLogToConsole: yes }
    .pipe autoprefixer
      browsers: ['last 2 versions']
      cascade: no
    .pipe gulpif argv.production, cleanCSS({compatibility: 'ie8'})
    .pipe gulp.dest 'assets/css/'
    .pipe reload { stream: yes }


# rerun tasks whenever a file changes.
gulp.task 'watch', ->
  gulp.watch './_scss/**/*.scss', ['css']


# deploy to GitHub Pages, master branch
gulp.task 'gh-pages', ->
	return gulp.src('./_site/**/*')
						 .pipe(ghPages({ branch: 'master' }))

# default task (called when we run `gulp` from cli)
gulp.task 'default', ['watch', 'css', 'browser-sync']
gulp.task 'build', ['css']
gulp.task 'deploy', ['css', 'gh-pages']
