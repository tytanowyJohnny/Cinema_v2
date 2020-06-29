const webpack = require('webpack');
const path = require('path')
const CopyPlugin = require('copy-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const FixStyleOnlyEntriesPlugin = require("webpack-fix-style-only-entries");
const {CleanWebpackPlugin} = require('clean-webpack-plugin');
const sass = require('node-sass');

module.exports = {
    mode: 'development',
    watch: true,
    entry: {
        index: './src/js/index.js',
        main: './src/scss/index.scss'
    },
    output: {
        path: path.resolve(__dirname, 'dist')
    },
    module: {
        rules: [
            {
                test: /\.js&/,
                exclude: '/node_modules/',
                include: path.resolve(__dirname, 'src'),
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
        new CopyPlugin({
            patterns: [{
                from: 'src/images',
                to: 'images'
            }]
        }),
        new MiniCssExtractPlugin({
            filename: "css/[name].css",
        }),
        new webpack.ProvidePlugin({
            $: 'jquery',
            jQuery: 'jquery'
        })
    ]
}