data {
    int<lower=0> N;
    vector[N] heights;
    vector[N] weights;
}

parameters {
    real<lower=0> alpha;
    real<lower=0> sigma;
    real<lower=0> betha;
}

transformed parameters {
    vector[N] mean;
    for (i in 1:N) {
      mean[i] = alpha + betha * weights[i];
  }
}

model {
    alpha ~ normal(154.59, 7.74);
    sigma ~ normal(15, 3);
    betha ~ lognormal(0, 1);
    
    for (i in 1:N) {
      heights[i] ~ normal(mean[i], sigma);
    }
}

generated quantities {
    vector[N] h;
    for (i in 1:N) {
        h[i] = normal_rng(mean[i], sigma);
    }
}