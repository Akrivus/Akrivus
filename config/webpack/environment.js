const { environment } = require('@rails/webpacker')
var webpack = require('webpack')

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    Popper: ['popper.js', 'default'],
    $: 'jquery',
    jQuery: 'jquery',
  })
)

module.exports = environment
