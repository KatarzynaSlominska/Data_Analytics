data {
   int N;
   real<lower=0, upper=200> weight[N];
}

generated quantities {
   real mu = normal_rng(154.59, 7.74);
   real sigma = normal_rng(15, 1);
   real alpha = normal_rng(154.59, 7.74);
   real betha = lognormal_rng(log(0.02), 0.5);

   real <lower=20, upper=260> height[N];
   for (i in 1:N) {
      height[i] = normal_rng(alpha + betha * weight[i], sigma);
  }
}