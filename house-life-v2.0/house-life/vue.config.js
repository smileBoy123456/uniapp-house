module.exports = {
  publicPath: './',
  devServer: {
    proxy: {
      '/api': {
        target: 'https://sourcebyte.cn',
        changeOrigin: true,
        pathRewrite: {
          '^/api': '/api'
        }
      }
    }
  }
}