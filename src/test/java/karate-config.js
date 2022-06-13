function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	myVarName: 'someValue',
	baseUrl: 'https://api.spotify.com/v1',
	bearerToken: 'Bearer ' + 'BQDGKsflMHcZBVGnogja8mxeq9bNFGInE6nkRQrZzserN50Q3X_AtpiFuIGJxQUCDP8pc2ycjKa2B0_9LJU4sZH3mLmc2WTDP6RBkjGKQT0r_2ICYwI-UvvUkAkUa2UcwbguWxwJ-1heIm2AhuKD77yYBjh8msg1e61rt7eidC49kw5MxNV10W22arvd3P70qXVyKPozj--4alWEXJNvElzi9a1iJ_A-Oo2oL1eACkt-v2IB1dXb05wLEuGtXbfBuf5KbSHjoZizdJrH3SeyYXVbj04uVlVPaLup'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}