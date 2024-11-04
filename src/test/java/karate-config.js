function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	baseUrl: 'https://gorest.co.in/',
    tokenID : 'a3055564f5961360b20045a0afbf918eced060b887576bba9ad7b2fc3ee0412e',
    headerConfig : '{ "Content-Type" : "text/xml;charset=ISO-8859-1", "Accept-Encoding" : "gzip,deflate", "Connection" : "Keep-Alive", "Expect" : "100-continue" }'
     }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}