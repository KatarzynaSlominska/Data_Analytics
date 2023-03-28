generated quantities {
   int<lower=0> N=50; 
   real<lower=0, upper=1> p; 
   int<lower=0, upper=N> y;  
   p = normal_rng(0.2, 0.05);
   y = binomial_rng(N, p);
}