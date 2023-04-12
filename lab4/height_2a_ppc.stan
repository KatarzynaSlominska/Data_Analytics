data {
   int N;
   real <lower=0> weight[N];
}

generated quantities {
   real sigma = normal_rng(15, 3);
   real alpha = normal_rng(154.59, 7.74);
   real betha = normal_rng(0, 1);

   real <lower=20, upper=260> height[N];

   for (i in 1:N) 
   {
      height[i] = normal_rng(alpha + betha * weight[i], sigma);
   }
}
