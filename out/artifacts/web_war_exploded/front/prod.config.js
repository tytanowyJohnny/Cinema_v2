const path = require('path');
const CopyPlugin = require('copy-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const FixStyleOnlyEntriesPlugin = require("webpack-fix-style-only-entries");
const {CleanWebpackPlugin} = require('clean-webpack-plugin');
const sass = require('node-sass');
const TerserPlugin = require('terser-webpack-plugin');
const ImageminPlugin = require('imagemin-webpack-plugin').default;
const imageminMozjpeg = require('imagemin-mozjpeg');
const FaviconsWebpackPlugin = require('favicons-webpack-plugin');

module.exports = {
    mode: "production",
    devtool: "source-map",
    entry: {
        index: './src/js/index.js',
        main: './src/scss/index.scss'
    },
    output: {
        path: path.resolve(__dirname, 'dist')
    },
    optimization: {
        minimize: true,
        removeAvailableModules: true,
        removeEmptyChunks: true,
        mergeDuplicateChunks: true,
        minimizer: [
            new TerserPlugin({
                cache: true,
                parallel: true,
                sourceMap: true,
                terserOptions: {
                    output: {
                        comments: false,
                    },
                },
                extractComments: false,
            })
        ]
    },
    module: {
        rules: [
            {
                test: /\.js&/,
                exclude: '/node_modules/',
                use: {
                    loader: "babel-loader"
                }
            },
            {
                test: /\.scss$/,
                use: [
                    MiniCssExtractPlugin.loader,
                    {
                        loader: "css-loader",
                        options: {
                            sourceMap: true
                        }
                    },
                    {
                        loader: "postcss-loader",
                        options: {
                            sourceMap: true,
                        }
                    },
                    {
                        loader: 'resolve-url-loader',
                        options: {
                            sourceMap: true
                        }
                    },
                    {
                        loader: "sass-loader",
                        options: {
                            sourceMap: true,
                            implementation: sass,
                        }
                    }
                ]
            },
            {
                test: /\.(png|jpg|gif)?$/,
                use: {
                    loader: "file-loader",
                    options: {
                        name: '[name].[ext]',
                        outputPath: 'images',
                        publicPath: '../images'
                    }
                }
            },
            {
                test: /\.(ttf|eot|svg|woff|woff2)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
                use: {
                    loader: 'file-loader',
                    options: {
                        outputPath: 'fonts',
                        publicPath: '../fonts'
                    }
                }
            }
        ]
    },
    plugins: [
        new FixStyleOnlyEntriesPlugin(),
        new CleanWebpackPlugin({
            cleanAfterEveryBuildPatterns: [
                '!fonts/**/*',
                '!images/**/*',
                'css/**/*'
            ]
        }),
        new FaviconsWebpackPlugin({
            logo: './src/images/logo.svg',
            prefix: 'favicons'
        }),
        new CopyPlugin({
            patterns: [{
                from: 'src/images',
                to: 'images'
            }]
        }),
        new MiniCssExtractPlugin({
            filename: "css/[name].css",
        }),
        new ImageminPlugin({
            pngquant: {
                quality: '75'
            },
            plugins: [
                imageminMozjpeg({
                    quality: 65,
                    progressive: true
                })
            ]
        })
    ]
};