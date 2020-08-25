const pkg = require('./package.json');

module.exports = {
  plugins: ['@babel/plugin-proposal-class-properties'],
  presets: [
    [
      '@babel/preset-env',
      {
        targets: {
          node: pkg.engines.node,
        },
      },
    ],
  ],
};
