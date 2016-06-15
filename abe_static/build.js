var path = require("path");
var Builder = require('systemjs-builder');

// optional constructor options
// sets the baseURL and loads the configuration file
var builder = new Builder('/', 'config.js');


builder.buildStatic('src/js/index.js', 'dist/js/index.js', {minify: true})
  .then(function() {
    console.log('Index build complete');
  })
  .catch(function(err) {
    console.log('build err');
    console.log(err);
  });

builder.buildStatic('src/js/about.js', 'dist/js/about.js', {minify: true})
  .then(function() {
    console.log('about build complete');
  })
  .catch(function(err) {
    console.log('build err');
    console.log(err);
  });

builder.buildStatic('src/js/dinners.js', 'dist/js/dinners.js', {minify: true})
  .then(function() {
    console.log('dinners build complete');
  })
  .catch(function(err) {
    console.log('build err');
    console.log(err);
  });

builder.buildStatic('src/js/volunteer.js', 'dist/js/volunteer.js', {minify: true})
  .then(function() {
    console.log('volunteer build complete');
  })
  .catch(function(err) {
    console.log('build err');
    console.log(err);
  });

builder.buildStatic('src/js/partners.js', 'dist/js/partners.js', {minify: true})
  .then(function() {
    console.log('partners build complete');
  })
  .catch(function(err) {
    console.log('build err');
    console.log(err);
  });
