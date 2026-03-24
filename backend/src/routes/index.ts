import { Router , type Request , type Response} from "express";


const routes : Router = Router();

routes.use("/test" , (req : Request , res : Response) => {
    console.log("This is a successful test");
    res.send("Hello World")
})

export default routes;