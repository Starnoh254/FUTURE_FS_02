import {type Request,type Response} from 'express';
import express from 'express'
import { errorHandler } from './middlewares/errorHandler';
import routes from './routes/index';

const app = express();

app.use(express.json());

// basic home route
app.get("/" , (req : Request , res : Response) => {
    res.send("Welcome to CRM apis")
})


// Routes 

app.use('/api/v1' , routes);


// Global error Handler (should be after routes)

app.use(errorHandler);

export default app;