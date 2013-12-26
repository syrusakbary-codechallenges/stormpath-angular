module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    coffee:
      compile:
        options:
          join: true
        files:
          'build/bar.js': ['src/coffee/**/*.coffee', 'src/coffee/*.coffee']

    stylus:
      compile:
        options:
          paths: ['src/stylus/']
          use: [
            require('nib')
          ]
        files:
          'build/main.css': 'src/stylus/main.styl'
    jade:
      app:
        options:
          pretty: true
        files:
          'build/partials/form.html': 'src/partials/form.jade'
          'build/index.html': 'src/index.jade'
    watch:
      js:
        files: '**/*.coffee'
        tasks: ['coffee']
      styl:
        files: '**/*.styl'
        tasks: ['stylus']
      jade:
        files: '**/*.jade'
        tasks: ['jade']

  # These plugins provide necessary tasks.
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-jade'

  # Default task.
  grunt.registerTask 'default', ['stylus','coffee','jade']
