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
    extensions: ['', '.js', '.cjsx', '.coffee']
  },
  module: {
    loaders: [
      { test: /\.cjsx$/, loaders: ['coffee', 'cjsx']},
      { test: /\.coffee$/, loader: 'coffee' }
    ]
  }
};
