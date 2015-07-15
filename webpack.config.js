var path = require('path');
var webpack = require('webpack');

module.exports = {
  entry: './public/js/app',
  devtool: "eval",
  output: {
    path: path.join(__dirname, "app/assets/javascripts"),
    filename: 'bundle.js'
  },
  resolveLoader: {
    modulesDirectories: ['node_modules']
  },
  resolve: {
    extensions: ['', '.js']
  },
  module: {
    loaders: [
      { test: /\.js$/, exclude: /node_modules/, loader: "babel-loader"}
    ]
  }
};
