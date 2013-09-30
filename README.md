# angularjs-boilerplate

## Requirements

Make sure you have node and npm installed.

Install the grunt-cli package:

    npm install -g grunt-cli karma

Enter the directory and install the Node dependencies:

    npm install

## Building the app

Run `grunt` to build the app into the `dist` directory.

Start grunt to auto-build the project as you work (doesn't run any test):

    grunt watch

## Running the app during development

1. run `grunt connect`
2. navigate your browser to `http://localhost:8000` to see the app running in your browser.

## Running unit tests

* run `grunt karma:unit`
  * a browser will start and connect to the Karma server. PhantomJS is default browser but it can be changed in the `test/config/karma.conf.js` file.
* To run or re-run tests just change any of your source or test files.

## End to end testing

* run `grunt connect` to serve your generated directory `dist`
* run `grunt karma:unit`
  * a browser will start and connect to the Karma server. PhantomJS is default browser but it can be changed in the `test/config/karma-e2e.conf.js` file.
* To run or re-run specs just change any of your source or test files.

## Application Directory Layout

    app/
      coffee/     --> coffeescript files
      styles/     --> sass files
      views/      --> html templates
      index.html

    test/
      config/   --> config files for Karma
        karma.conf.js
        karma-e2e.conf.js
      e2e/                      --> end-to-end specs
      unit/                     --> unit tests
      vendor/       - 3rd party testing libraries

    vendor/   --> 3rd party javascript libraries