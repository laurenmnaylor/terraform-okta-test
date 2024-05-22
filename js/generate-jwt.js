const njwt = require('njwt');

console.log(process.argv[0].length);
console.log(process.argv[1].length);
console.log(process.argv[2].length);
console.log(process.argv[3].length);
console.log(process.argv[4].length);

const privateKey = process.argv[2].split(String.raw`\n`).join('\n');
console.log(privateKey.length);
const clientId = process.argv[3];

const now = Math.floor( new Date().getTime() / 1000 ); // seconds since epoch
const plus5Minutes = new Date( ( now + (5*60) ) * 1000); // Date object
const alg = 'RS256'; // one of RSA or ECDSA algorithms: RS256, RS384, RS512, ES256, ES384, ES512

const url = process.argv[4];
const claims = {
    aud: "https://" + url + "/oauth2/default/v1/token", // audience
};

const jwt = njwt.create(claims, privateKey, alg)
    .setIssuedAt(now)
    .setExpiration(plus5Minutes)
    .setIssuer(clientId)
    .setSubject(clientId)
    .compact();

console.log(jwt);