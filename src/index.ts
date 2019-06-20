import express, {Application } from 'express';
import entradasRoutes from './routes/EntradasRoutes';
import carteleraRoutes from './routes/CarteleraRoutes';
import beneficiosRoutes from './routes/BeneficiosRoutes';
import combosRoutes from './routes/CombosRoutes';
import personasRoutes from './routes/PersonasRoutes';
import proximosEstrenosRoutes from './routes/ProximosEstrenosRoutes';
import solicitantesRoutes from './routes/SolicitantesRoutes';
import ciudadesRoutes from './routes/CiudadesRoutes';
import consultasRoutes from './routes/ConsultasRoutes';
import usuariosRoutes from './routes/UsuariosRoutes';
import cors from 'cors';
import morgan from 'morgan';

// parte marketing , lo demas no toque nada 
import marketingRoutes from './routes/MarketingRoutes';
import transmitenRoutes from './routes/TransmitenRoutes';
class Servidor{

    public app:Application;

    constructor(){
       this.app= express();
       this.config(); 
       this.routes();
    }
    config(){
        this.app.set('port', process.env.PORT || 3000);
        this.app.use(morgan('dev'));
        this.app.use(cors(0));
        this.app.use(express.json()); 
        this.app.use(express.urlencoded({extended: false}));
    }
    routes(){
        this.app.use(entradasRoutes);
        this.app.use(carteleraRoutes);
        this.app.use(combosRoutes);
        this.app.use(personasRoutes);
        this.app.use(solicitantesRoutes);
        this.app.use(proximosEstrenosRoutes);
        this.app.use(beneficiosRoutes);
        this.app.use(ciudadesRoutes);
	    this.app.use(consultasRoutes);
		this.app.use(usuariosRoutes);
        // agrego lo de marketing
        this.app.use(marketingRoutes);
        this.app.use(transmitenRoutes);
        

    } 
    start(){
        this.app.listen(this.app.get('port'),()=>{
                console.log('Servidor en puerto ', this.app.get('port'));

        });

    }

}

const servidor= new Servidor();
servidor.start();