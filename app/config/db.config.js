module.exports = {
  HOST: "localhost",
  USER: "root",
  PASSWORD: "P@ssw0rd",
  DB: "dev_registration",
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};
