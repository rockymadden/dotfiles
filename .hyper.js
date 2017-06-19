module.exports = {
  config: {
    fontSize: 14,
    fontFamily: '"SourceCodePro+Powerline+Awesome Regular", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    cursorColor: 'rgba(255, 255, 255, 0.5)',
    cursorShape: 'BEAM',
    cursorBlink: true,
    foregroundColor: '#eceff1',
    backgroundColor: '#263238',
    borderColor: '#222d32',
    css: `
      .hyper_main {
        border: none !important;
      }
      .header_header {
        background: #222d32 !important;
      }
      .tab_tab {
        border: 0;
      }
      .tab_textActive {
        border-bottom: 2px solid #2b98f0;
      }
      .splitpane_divider {
        background-color: rgba(170, 187, 195, 0.16) !important;
      }
    `,
    termCSS: `
      x-row > span {
        line-height: 1.4em;
      }
      x-screen a {
        color: #2b98f0;
        text-decoration: underline;
      }
      x-screen a.hover {
        text-decoration: none;
      }
    `,
    showHamburgerMenu: '',
    showWindowControls: '',
    padding: '8px 8px',
    colors: {
      black: '#263238',
      red: '#ff5252',
      green: '#9ccC65',
      yellow: '#fee94e',
      blue: '#2b98f0',
      magenta: '#b38bfc',
      cyan: '#68b6f3',
      white: '#eceff1',
      lightBlack: '#617d8a',
      lightRed: '#fc625d',
      lightGreen: '#9ccc65',
      lightYellow: '#fee94e',
      lightBlue: '#2b98f0',
      lightMagenta: '#b38bfc',
      lightCyan: '#68b6f3',
      lightWhite: '#ffffff'
    },
    shell: '/usr/local/bin/zsh',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false
  },
  plugins: [
    'hyperlinks',
    'hyperterm-dibdabs',
    'hyperterm-paste',
    'hyper-broadcast'
  ],
  localPlugins: []
};
