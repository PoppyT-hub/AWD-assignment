module.exports = function (grunt) {
    const sass = require('sass');

    // Load Grunt plugins for Sass, JS minification, file watching and concurrency
    grunt.loadNpmTasks('grunt-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks("grunt-contrib-uglify");
    grunt.loadNpmTasks("grunt-concurrent");

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        // Compile SCSS → CSS
        sass: {
            main: {
                options: {
                    sourcemap: true,
                    outputStyle: "compressed",
                    implementation: sass,
                },
                files: {
                    './css/styles.css': './scss/main.scss'
                }
            }
        },

        // Watch SCSS and JS files for changes
        watch: {
            scss: {
                files: ['./scss/**/*.scss'],
                tasks: ['sass:main']
            },
            js: {
                files: ['./js/**/*.js'],
                tasks: ['uglify:main'],
                options: { spawn: false }
            },
        },

        // Minify JavaScript files
        uglify: {
            main: {
                options: {
                    sourceMap: false,
                    compress: true,
                    mangle: false,
                },
                files: {
                    "./js/scripts.min.js": ["./js/**/*.js"],
                }
            },

            // Minify vendor JS files
            vendor: {
                options: {
                    sourceMap: false,
                    compress: true,
                    mangle: false,
                },
                files: {
                    "./js/scripts-vendor.min.js": [
                        "./node_modules/bootstrap/dist/js/bootstrap.min.js",
                        "./node_modules/lightgallery/lightgallery.min.js",
                    ],
                },
            },
        },

        // Run SCSS and JS watchers at the same time
        concurrent: {
            options: {
                logConcurrentOutput: true,
                limit: 10,
            },
            watchall: {
                tasks: ["watch:scss", "watch:js"],
            },
        },

    });

    // Register tasks
    grunt.registerTask('default', ['concurrent:watchall']);
    grunt.registerTask("vendors", ["uglify:vendor"]);
};
