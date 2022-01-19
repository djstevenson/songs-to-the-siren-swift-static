module.exports = {
  content: ['./output/**/*.html'],
  theme: {
    container: {
      center: true,
    },
    extend: {},
    colors: {
      banner: {
        DEFAULT: '#d2b40a',
        border:  '#106020'
      },
      link: {
        DEFAULT: '#72bcbc',
        hover:   '#cf6e6e',
        active:  '#db2777'
      },
      red: {
        medium: '#803333'
      },
      grey: {
        bg:      '#252729',
        medium:  '#212325',
        dark:    '#1d1f21',
        darkest: '#0e1011',
      },
      body: {
        text:    '#d0d3d6',
      },
      black: {
        DEFAULT: '#000000',
      },
      transparent: 'transparent',
    },
  },
  plugins: [
    require('@tailwindcss/aspect-ratio'),
  ],
};
