module.exports = {
  host: process.env.RDS_HOSTNAME || 'localhost',
  user: process.env.RDS_USERNAME || 'root',
  password: process.env.RDS_PASSWORD || 'maddy20bo',
  database: process.env.RDS_DB_NAME || 'purrget'
};
