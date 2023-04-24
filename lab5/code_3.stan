data {
  int<lower=1> N;
  vector[N] miles;
  int accidents[N];
}

parameters {
  real alpha[N];
  real theta;
}

transformed parameters {
  real lambda[N];
  for (i in 1:N) {
    lambda[i] = exp(alpha[i] + theta * miles[i]);
  }
}


model {
  alpha ~ normal(3, 1);
  theta ~ normal(0.5, 0.1);
  
  for (i in 1:N) {
    accidents[i] ~ poisson(lambda[i]);
  }
}
