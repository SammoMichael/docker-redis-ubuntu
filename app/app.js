const Redis = require('ioredis');

// `redis` is registered in /etc/hosts
// automatically by docker-compose
// it maps to the ip address of the
// redis container and is akin to
// localhost -> 127.0.0.1
const redis = new Redis(6379, 'redis');

(async () => {
  await redis.set('foo', 'bar');
  const results = await redis.get('foo');
  
  console.log({ results });

  redis.disconnect();
})();
