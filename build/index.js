"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const EntradasRoutes_1 = __importDefault(require("./routes/EntradasRoutes"));
const CarteleraRoutes_1 = __importDefault(require("./routes/CarteleraRoutes"));
const BeneficiosRoutes_1 = __importDefault(require("./routes/BeneficiosRoutes"));
const CombosRoutes_1 = __importDefault(require("./routes/CombosRoutes"));
const PersonasRoutes_1 = __importDefault(require("./routes/PersonasRoutes"));
const ProximosEstrenosRoutes_1 = __importDefault(require("./routes/ProximosEstrenosRoutes"));
const SolicitantesRoutes_1 = __importDefault(require("./routes/SolicitantesRoutes"));
const cors_1 = __importDefault(require("cors"));
const morgan_1 = __importDefault(require("morgan"));
class Servidor {
    constructor() {
        this.app = express_1.default();
        this.config();
        this.routes();
    }
    config() {
        this.app.set('port', process.env.PORT || 3000);
        this.app.use(morgan_1.default('dev'));
        this.app.use(cors_1.default(0));
        this.app.use(express_1.default.json());
        this.app.use(express_1.default.urlencoded({ extended: false }));
    }
    routes() {
        this.app.use(EntradasRoutes_1.default);
        this.app.use(CarteleraRoutes_1.default);
        this.app.use(CombosRoutes_1.default);
        this.app.use(PersonasRoutes_1.default);
        this.app.use(SolicitantesRoutes_1.default);
        this.app.use(ProximosEstrenosRoutes_1.default);
        this.app.use(BeneficiosRoutes_1.default);
    }
    start() {
        this.app.listen(this.app.get('port'), () => {
            console.log('Servidor en puerto ', this.app.get('port'));
        });
    }
}
const servidor = new Servidor();
servidor.start();
