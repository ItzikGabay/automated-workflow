module.exports = {
  apps: [
    {
      name: "client",
      script: "./node_modules",
      env_production: {
        NODE_ENV: "production",
      },
      env_development: {
        NODE_ENV: "development",
      },
      watch: true,
    },
    // {
    //   name: "./apps/app-server",
    //   script: "./apps",
    //   env_production: {
    //     NODE_ENV: "production",
    //   },
    //   env_development: {
    //     NODE_ENV: "development",
    //   },
    //   watch: true,
    // },
  ],
};
