module.exports = function(grunt) {

    // Project configuration.
    grunt.initConfig({
        pkg : grunt.file.readJSON('package.json'),
        sass : {
            dist : {
                options : {
                    style : 'compressed',
                    sourcemap : 'none',
                },
                files : [{
                    expand : true,
                    cwd : 'scss',
                    src : ['*.scss'],
                    dest : 'build/themes/melt-plastic/css',
                    ext : '.css'
                }]
            }
        },
        uglify : {
            app : {
                options: {
                    compress: {
                        drop_console: true
                    }
                },
                files : [{
                    expand : true,
                    cwd: 'src',
                    src: '**/*.js',
                    dest: 'compiled/'
                }]
            }
        },
        concat: {
            dist: {
                src: ['compiled/responsive-menu.js', 'compiled/general.js'],
                dest: 'build/themes/melt-plastic/javascript/app.min.js'
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-concat');

    // Default task(s).
    grunt.registerTask('default', ['sass', 'uglify', 'concat']);

};