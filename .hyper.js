module.exports = {
  config: {
    fontSize: 14,
    fontFamily: '"SourceCodePro+Powerline+Awesome Regular", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    cursorColor: 'rgba(255, 255, 255, 0.2)',
    cursorShape: 'BEAM',
    cursorBlink: true,
    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#333',
    css: '',
    termCSS: `
      x-row > span {
        line-height: 1.4em;
      }
    `,
    showHamburgerMenu: '',
    showWindowControls: '',
    padding: '4px 4px',
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },
    shell: '',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false
  },
  plugins: [
    'hyperline',
    'hyperlinks',
    'hyperterm-dibdabs',
    'hyperterm-material',
    'hyperterm-paste',
    'hyper-broadcast'
  ],
  localPlugins: []
};
