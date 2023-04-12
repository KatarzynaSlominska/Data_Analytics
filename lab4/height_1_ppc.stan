generated quantities {
    real mu = normal_rng(154.59, 7.74);
    real sigma = normal_rng(15, 1);
    real <lower=20, upper=260> height = normal_rng(mu, sigma);
}