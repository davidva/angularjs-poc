module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    clean: [ 'dist', '.sass-cache' ]
    copy:
      html:
        files: [
          expand: true
          cwd: 'app/'
          src: ['**/*.html']
          dest: 'dist/'
        ],
      test:
        files: [
          expand: true
          cwd: 'test/'
          src: ['**/*.html', '**/*.js']
          dest: 'dist/test/'
        ]
      vendor:
        files: [
          expand: true
          cwd: 'vendor/'
          src: ['**/*']
          dest: 'dist/vendor/'
        ]
    coffee:
      app:
        files:
          'dist/js/sports_web_components.js': [ 'app/coffee/**/*.coffee' ]
      test:
        files: [
          expand: true
          cwd: 'test/'
          src: ['**/*.coffee']
          dest: 'dist/test/'
          ext: '.js'
        ]
    sass:
      compile:
        files:
          'dist/styles/sports_web_components.css': 'app/styles/**/*.sass'
        style: 'compressed'
    watch:
      copy:
        files: ['app/index.html','app/views/*.html','test/**/*','test/**/*.js']
        tasks: ['copy']
      coffee:
        files: ['app/coffee/**/*.coffee','test/**/*.coffee']
        tasks: ['coffee']
      sass:
        files: ['app/styles/**/*.sass']
        tasks: ['sass']
    connect:
      server:
        options:
          port: 8000
          base: 'dist/'
          keepalive: true
    karma:
      unit:
        configFile: 'test/config/karma.conf.js'
      e2e:
        configFile: 'test/config/karma-e2e.conf.js'

  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-karma'

  grunt.registerTask 'default', ['clean','copy','coffee','sass']
