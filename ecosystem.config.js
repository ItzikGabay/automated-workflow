module.exports = {
  apps: [
    {
      name: "client",
      script: "./apps/client/index.js",
      env_production: {
        NODE_ENV: "production",
      },
      env_development: {
        NODE_ENV: "development",
      },
      watch: true,
    },
    {
      name: "server",
      script: "./apps/server/index.js",
      env_production: {
        NODE_ENV: "production",
      },
      env_development: {
        NODE_ENV: "development",
      },
      watch: true,
    },
  ],
};
