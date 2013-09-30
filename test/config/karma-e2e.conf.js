module.exports = function(config) {
  config.set({
    basePath: '../../dist/',

    frameworks: [ 'ng-scenario' ],

    files: [
      'test/e2e/**/*.js',
      'index.html'
    ],

    autoWatch: true,

    browsers: ['PhantomJS'],

    singleRun: false,

    proxies: {
      '/': 'http://localhost:8000/'
    },

    junitReporter: {
      outputFile: 'test_out/e2e.xml',
      suite: 'e2e'
    },
  })
};