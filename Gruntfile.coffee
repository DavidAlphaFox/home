module.exports = (grunt)->
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    concat: {
      options: {

      },
      basic: {
        src: ['bower_components/jquery/dist/jquery.js',
              'bower_components/handlebars/handlebars.js',
              'bower_components/ember/ember-template-compiler.js',
              'bower_components/ember/ember.js',
              'bower_components/ember-data/ember-data.js'
        ],
        dest: 'dist/base.js'
      },

      app: {
        src: ['js/**/*.js'],
        dest: 'dist/app.js'
      },

      css: {
        src: ['bower_components/bootstrap/dist/bootstrap.css',
              'bower_components/bootstrap/dist/bootstrap-theme.css',
              'stylesheets/style.css'
        ],
        dest: 'dist/app.css'
      }
    },
    uglify: {
      options: {
        banner: '\n'
      },
      bulid: {
        files:{
          'dist/app.min.js': ['dist/app.js'],
          'dist/base.min.js': ['dist/base.js']
        }
      }
    },
    cssmin:{
      build:{
        files:{
          'dist/app.min.css': ['dist/app.css']
        }
      }
    }

  })

  grunt.loadNpmTasks('grunt-css')
  grunt.loadNpmTasks('grunt-contrib-concat')
  grunt.loadNpmTasks('grunt-contrib-uglify')

  grunt.registerTask('default', ['concat','uglify','cssmin'])