import express from 'express';
import { createServer } from 'http';
import seedrandom from 'seedrandom';
    
const app = express();
app.use(express.json());

const rng = seedrandom();
const prngMax = 0.5;

const router = express.Router();
router.get(
  '/',
  async (
    request: express.Request,
    response: express.Response,
    nextFunc: express.NextFunction,
  ) => {  
    rng() > prngMax ?
      response.send('OK') : 
      response.status(404).send();
  }
);
app.use(router);

const port = 10010;
console.log('app is running on port: ' + port);
createServer(app).listen(port);
  