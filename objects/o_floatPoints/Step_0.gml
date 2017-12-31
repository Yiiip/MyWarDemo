alpha -= alphaRate;
scale += scaleRate;

if (alpha <= 0) instance_destroy();