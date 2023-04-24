generated quantities {
  real theta = normal_rng(0.5, 0.1);
  real alpha = normal_rng(3, 1);
  real n = normal_rng(0, 1);
  real lambda = exp(alpha + theta * n);
  int accidents = poisson_rng(lambda);
}
