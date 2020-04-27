# Causality

Attempt at putting definitions together.

Many definitions are being merged in this paper:

- [50 Years of Test (Un)fairness: Lessons for Machine Learning](https://dl.acm.org/doi/pdf/10.1145/3287560.3287600)

## Notations

- $A$: sensitive attribute (gender, etc.)
- $Y$: ground truth of target variable
- $R$: output score of model
- $D$: final decision, but in this post I will call it $\hat{Y}$.

## Definitions

This definition is weak:

- $A \perp R$: demographic parity (sometimes I see $A \perp D$ instead), i.e. balancing predicted class for both subpopulations.

Some people consider it's unfair (positive discrimination).

These two definitions are mutually exclusive:

- $A \perp \hat Y\|Y$: separation, equalized odds, conditional procedure accuracy, i.e. balancing true positive rates and true negative rates
- $A \perp Y\|\hat Y$: sufficiency, conditional use accuracy equality

As you can see, it has something to do with the shape of the underlying causal model (graphical model). To put it (too) simply: how are oriented the arrows in the triangle made by the variables $A$, $Y$, $\hat{Y}$?

Sometimes equalized odds are too strict so a weaker assumption is made:

- $A \perp \hat Y\|Y = 1$: equality of opportunity (Moritz and Hardt, [2016](http://research.google.com/bigpicture/attacking-discrimination-in-ml/)), i.e. balancing true positive rates.

## Specifically: confounders

If there are no confounders, then:

$$E[Y|T = 1] = E[Y|do(T = 1)]$$

See this 101 abount confounding:

- [Confounding](http://www.rebeccabarter.com/blog/2017-07-05-confounding/)

<script type="text/x-mathjax-config">
MathJax.Hub.Config({
  tex2jax: {
    inlineMath: [['$','$'], ['\\(','\\)']],
    processEscapes: true
  }
});
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
