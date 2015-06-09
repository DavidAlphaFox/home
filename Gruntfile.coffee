module.exports = (grunt)->
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    coffee: {
      glob_to_multiple: {
        expand: true,
        flatten: true,
        cwd: 'js/app/',
        src: ['**/*.coffee','*.coffee'],
        dest: 'dist/',
        ext: '.js'
      }
    },
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
        dest: 'dist/js/base.js'
      },

      app: {
        src: ['dist/*.js'],
        dest: 'dist/js/app.js'
      },

      css: {
        src: ['bower_components/bootstrap/dist/css/bootstrap.css',
              'bower_components/bootstrap/dist/css/bootstrap-theme.css',
              'stylesheets/style.css'
        ],
        dest: 'dist/css/app.css'
      }
    },
    uglify: {
      options: {
        banner: '\n'
      },
      bulid: {
        files:{
          'dist/js/app.min.js': ['dist/js/app.js'],
          'dist/js/base.min.js': ['dist/js/base.js']
        }
      }
    },
    cssmin:{
      build:{
        files:{
          'dist/css/app.min.css': ['dist/css/app.css']
        }
      }
    },
    copy: {
      main: {
        files: [
          {
            expand: true,
            src: ['images/*'],
            dest: 'dist',
            filter: 'isFile'
          },
          {
            expand: true,
            cwd: 'bower_components/bootstrap/dist/fonts/'
            src: ['*'],
            dest: 'dist/fonts',
            filter: 'isFile'
          }
        ]
      }
    }

  })

  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-cssmin')
  grunt.loadNpmTasks('grunt-contrib-concat')
  grunt.loadNpmTasks('grunt-contrib-uglify')
  grunt.loadNpmTasks('grunt-contrib-copy')

  grunt.registerTask('default', ['coffee','concat','uglify','cssmin','copy'])