module.exports = {
  content: ["./themes/**/*.{html,tpl,tmpl}"],
  theme: {
    extend: {},
  },
  plugins: [],
  corePlugins: {
    preflight: false, // Se precisar evitar conflitos com o Tailwind
  },
};
