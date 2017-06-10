MathJax.Hub.Config({
  extensions: ["tex2jax.js","TeX/AMSmath.js","TeX/AMSsymbols.js",
               "TeX/noErrors.js","TeX/noUndefined.js"],
  tex2jax: {
    inlineMath: [ ['$','$'], ["\\(","\\)"] ],
    displayMath: [ ['$$','$$'], ["\\[","\\]"] ]
  },
  TeX: {
    Macros: {
      C: '{\\mathbb C}',
      R: '{\\mathbb R}',
      Q: '{\\mathbb Q}',
      Z: '{\\mathbb Z}',
      diag: '\\mathop{\\mathrm{diag}}\\nolimits',
      np: ['{#1}#2{#1}', 2]
    }
  }
});
