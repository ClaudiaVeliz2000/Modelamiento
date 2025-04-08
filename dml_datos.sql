INSERT INTO clientes (nombre, contacto, empresa) VALUES
('Cliente A', '999111222', 'Empresa X'),
('Cliente B', '999222333', 'Empresa Y'),
('Cliente C', '999333444', 'Empresa Z'),
('Cliente D', '999444555', 'Empresa W'),
('Cliente E', '999555666', 'Empresa V'),
('Cliente F', '999666777', 'Empresa U'),
('Cliente G', '999777888', 'Empresa T'),
('Cliente H', '999888999', 'Empresa S'),
('Cliente I', '999999000', 'Empresa R'),
('Cliente J', '999000111', 'Empresa Q'),
('Cliente K', '999111222', 'Empresa P'),
('Cliente L', '999222333', 'Empresa O'),
('Cliente M', '999333444', 'Empresa N'),
('Cliente N', '999444555', 'Empresa M'),
('Cliente O', '999555666', 'Empresa L');

INSERT INTO empleados (nombres, numero_documento, email, telefono, cargo) VALUES
('Juan Pérez', '12345678', 'juan.perez@email.com', '987654321', 'Desarrollador'),
('Ana Gómez', '23456789', 'ana.gomez@email.com', '987654322', 'Gerente de Proyecto'),
('Carlos Ruiz', '34567890', 'carlos.ruiz@email.com', '987654323', 'Analista'),
('María López', '45678901', 'maria.lopez@email.com', '987654324', 'QA'),
('Pedro Sánchez', '56789012', 'pedro.sanchez@email.com', '987654325', 'Desarrollador'),
('Laura Díaz', '67890123', 'laura.diaz@email.com', '987654326', 'Scrum Master'),
('Luis Herrera', '78901234', 'luis.herrera@email.com', '987654327', 'Tester'),
('Sofía Medina', '89012345', 'sofia.medina@email.com', '987654328', 'Arquitecto de Software'),
('Jorge Castro', '90123456', 'jorge.castro@email.com', '987654329', 'DevOps'),
('Elena Vargas', '01234567', 'elena.vargas@email.com', '987654330', 'Product Owner'),
('Ricardo Torres', '11112222', 'ricardo.torres@email.com', '987654331', 'Analista'),
('Natalia Ríos', '22223333', 'natalia.rios@email.com', '987654332', 'Desarrollador'),
('Martín Gómez', '33334444', 'martin.gomez@email.com', '987654333', 'Gerente de Proyecto'),
('Gabriela Suárez', '44445555', 'gabriela.suarez@email.com', '987654334', 'QA'),
('Francisco Morales', '55556666', 'francisco.morales@email.com', '987654335', 'Desarrollador');

-- Insertar datos en la tabla proyectos (asociados a clientes)
INSERT INTO proyectos (cliente_id, nombre, descripcion, fecha_inicio, fecha_fin, estado) VALUES
(1, 'Proyecto Alpha', 'Sistema de gestión interna', '2024-01-10', '2024-06-30', 'En desarrollo'),
(2, 'Proyecto Beta', 'Plataforma de ventas online', '2024-02-15', '2024-07-30', 'En pruebas'),
(3, 'Proyecto Gamma', 'Sistema de facturación', '2024-03-01', '2024-08-20', 'En planificación'),
(4, 'Proyecto Delta', 'Aplicación móvil', '2024-04-10', '2024-09-15', 'Finalizado'),
(5, 'Proyecto Epsilon', 'Sistema de inventarios', '2024-05-05', '2024-10-01', 'En desarrollo'),
(6, 'Proyecto Zeta', 'Plataforma educativa', '2024-06-01', '2024-11-15', 'En desarrollo'),
(7, 'Proyecto Eta', 'Sistema de recursos humanos', '2024-07-01', '2024-12-30', 'En pruebas'),
(8, 'Proyecto Theta', 'Portal de servicios', '2024-08-15', '2025-01-30', 'En planificación'),
(9, 'Proyecto Iota', 'CRM para clientes', '2024-09-01', '2025-02-20', 'En desarrollo'),
(10, 'Proyecto Kappa', 'Sistema de gestión de almacenes', '2024-10-01', '2025-03-10', 'En pruebas'),
(11, 'Proyecto Lambda', 'Rediseño de e-commerce', '2024-11-01', '2025-04-05', 'En planificación'),
(12, 'Proyecto Mu', 'Automatización de procesos', '2024-12-01', '2025-05-01', 'En desarrollo'),
(13, 'Proyecto Nu', 'Software contable', '2025-01-01', '2025-06-10', 'En desarrollo'),
(14, 'Proyecto Xi', 'Sistema de tickets', '2025-02-01', '2025-07-20', 'En pruebas'),
(15, 'Proyecto Omicron', 'Chatbot de atención al cliente', '2025-03-01', '2025-08-30', 'En planificación');

-- Insertar datos en la tabla equipos
INSERT INTO equipos (proyecto_id, nombre, acnt_integrantes, descripcion) VALUES
(1, 'Equipo Alpha', 5, 'Equipo de desarrollo para Alpha'),
(2, 'Equipo Beta', 6, 'Equipo de pruebas para Beta'),
(3, 'Equipo Gamma', 4, 'Analistas para Gamma'),
(4, 'Equipo Delta', 3, 'Desarrolladores y testers de Delta'),
(5, 'Equipo Epsilon', 5, 'Scrum Team de Epsilon'),
(6, 'Equipo Zeta', 7, 'Equipo de desarrollo y QA de Zeta'),
(7, 'Equipo Eta', 6, 'Ingenieros de software para Eta'),
(8, 'Equipo Theta', 5, 'Analistas y Devs para Theta'),
(9, 'Equipo Iota', 4, 'Arquitectos de software para Iota'),
(10, 'Equipo Kappa', 6, 'Equipo full stack de Kappa'),
(11, 'Equipo Lambda', 5, 'Diseñadores y desarrolladores de Lambda'),
(12, 'Equipo Mu', 4, 'Especialistas en automatización para Mu'),
(13, 'Equipo Nu', 7, 'Contadores y desarrolladores para Nu'),
(14, 'Equipo Xi', 6, 'QA y soporte para Xi'),
(15, 'Equipo Omicron', 5, 'Desarrolladores de IA para Omicron');

-- Insertar datos en la tabla detalles_equipos (empleados en equipos)
INSERT INTO detalles_equipos (equipo_id, empleado_id, horas_asignadas) VALUES
(1, 1, 40), (1, 2, 35), (1, 3, 20),
(2, 4, 30), (2, 5, 25), (2, 6, 40),
(3, 7, 20), (3, 8, 35), (3, 9, 30),
(4, 10, 40), (4, 11, 25), (4, 12, 30),
(5, 13, 40), (5, 14, 20), (5, 15, 25);

INSERT INTO entregables (proyecto_id, nombre, descripcion, fecha_entrega) VALUES
(1, 'MVP Alpha', 'Versión inicial del software', '2024-06-15'),
(1, 'Versión Final Alpha', 'Entrega con todas las funcionalidades', '2024-07-30'),

(2, 'Beta Testing', 'Pruebas de usuario', '2024-07-10'),
(2, 'Lanzamiento Oficial', 'Versión final para producción', '2024-08-20'),

(3, 'Documentación Gamma', 'Manual de usuario y técnico', '2024-08-05'),
(3, 'Sistema de Facturación Core', 'Implementación del módulo principal', '2024-09-15'),

(4, 'Aplicación móvil v1', 'Primera versión funcional', '2024-09-10'),
(4, 'Integración con API externa', 'Conexión con proveedores externos', '2024-10-05'),

(5, 'Sistema de inventarios v1', 'Implementación del módulo de stock', '2024-10-05'),
(5, 'Optimización del rendimiento', 'Mejoras en tiempos de respuesta', '2024-11-01'),

(6, 'Demo Plataforma Educativa', 'Versión demo para clientes', '2024-11-01'),
(6, 'Implementación de Gamificación', 'Módulo de incentivos y logros', '2024-12-10'),

(7, 'HR System Core', 'Módulo principal de RRHH', '2024-12-15'),
(7, 'Gestión de Nómina', 'Automatización de pagos y retenciones', '2025-01-05'),

(8, 'Portal de Servicios Beta', 'Pruebas iniciales del portal', '2025-01-10'),
(8, 'Dashboard de Análisis', 'Panel con métricas en tiempo real', '2025-02-15'),

(9, 'CRM Dashboard', 'Tablero con métricas principales', '2025-02-05'),
(9, 'Gestión de Clientes Premium', 'Segmentación de clientes de alto valor', '2025-03-01'),

(10, 'SGA v1', 'Primer lanzamiento del sistema de almacenes', '2025-03-01'),
(10, 'Módulo de Logística', 'Optimización de rutas y despachos', '2025-04-10'),

(11, 'E-Commerce Rediseño', 'Nuevo diseño y mejoras UX', '2025-04-10'),
(11, 'Implementación de Métodos de Pago', 'Integración con múltiples pasarelas', '2025-05-05'),

(12, 'Automatización de Procesos v1', 'Primera versión de automatización', '2025-05-15'),
(12, 'Integración con Sistemas ERP', 'Conexión con SAP y Oracle', '2025-06-20'),

(13, 'Software Contable Final', 'Entrega final del software contable', '2025-06-01'),
(13, 'Módulo de Reportes Fiscales', 'Generación de balances y estados financieros', '2025-07-10'),

(14, 'Ticketing System Alpha', 'Prototipo del sistema de tickets', '2025-07-05'),
(14, 'Gestión de SLA', 'Monitoreo de tiempos de respuesta', '2025-08-15'),

(15, 'Chatbot IA', 'Versión inicial del chatbot con IA', '2025-08-20'),
(15, 'Mejoras en NLP', 'Optimización del procesamiento de lenguaje natural', '2025-09-10');

--select * from clientes;