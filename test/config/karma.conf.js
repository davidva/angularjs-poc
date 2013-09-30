module.exports = function(config) {
  config.set({
    basePath: '../../dist/',

    files: [
      'vendor/js/angular.min.js',
      'test/vendor/angular-mocks.js',
      'js/**/*.js',
      'test/unit/**/*.js',
      'views/**/*.html'
    ],

    frameworks: ['jasmine'],

    autoWatch: true,

    browsers: ['PhantomJS'],

    preprocessors: {
      'views/**/*.html': ['ng-html2js']
    }
  });
};