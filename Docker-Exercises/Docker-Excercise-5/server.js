const express = require('express');

const app = express();

app.listen(process.env.port, () => {
  console.log(`Server started on port ${process.env.port}`);
});