const express = require('express');
const requestIp = require('request-ip');

const app = express();

// Middleware to get the visitor's IP address
app.use(requestIp.mw());

app.get('/', (req, res) => {
  const currentTimestamp = new Date();
  const ipAddress = req.clientIp;

  const data = {
    timestamp: currentTimestamp,
    ip: ipAddress,
  };

  res.json(data);
});

//const port = process.env.PORT || 3000;
const port = process.env.PORT_NUMBER;

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
