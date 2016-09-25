'use strict';

var gulp = require('gulp');
var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');


gulp.task('sass', function () {
    gulp.src('stylesheet/css/scss/*.scss')
        .pipe(sass({outputStyle: 'compressed'}))
        .pipe(gulp.dest('stylesheet/css'))
});

gulp.task('auto-prefixer', function () {
    return gulp.src('stylesheet/css/style.css')
        .pipe(autoprefixer({
            browsers: ['last 2 versions'],
            cascade: false
        }))
        .pipe(gulp.dest('stylesheet/css'));
});

gulp.task('scripts', function () {
    return gulp.src([
        'stylesheet/js/scripts/util.js',
        'stylesheet/js/scripts/alert.js',
        'stylesheet/js/scripts/button.js',
        'stylesheet/js/scripts/carousel.js',
        'stylesheet/js/scripts/collapse.js',
        'stylesheet/js/scripts/dropdown.js',
        'stylesheet/js/scripts/modal.js',
        'stylesheet/js/scripts/scrollspy.js',
        'stylesheet/js/scripts/tab.js',
        'stylesheet/js/scripts/tether.js',
        'stylesheet/js/scripts/tooltip.js',
        'stylesheet/js/scripts/popover.js'
    ])
        .pipe(concat('scripts.js'))
        .pipe(uglify())
        .pipe(gulp.dest('stylesheet/js/'));
});

gulp.task('all:watch', function () {
    gulp.watch('stylesheet/css/scss/*.scss', ['sass']);
    gulp.watch('stylesheet/css/style.css', ['auto-prefixer']);
    gulp.watch('stylesheet/js/scripts/*.js', ['scripts']);
});

