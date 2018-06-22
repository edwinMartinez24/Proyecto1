BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `usuario` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`nombre`	TEXT NOT NULL,
	`email`	TEXT NOT NULL,
	`contrasena`	TEXT NOT NULL,
	`tipo_usuario`	TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `tarea` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`nombre`	TEXT NOT NULL,
	`descripcion`	TEXT,
	`fecha`	INTEGER NOT NULL,
	`fecha_completado`	INTEGER,
	`estado`	TEXT NOT NULL DEFAULT 'Pendiente',
	`usuario_creador_id`	INTEGER NOT NULL,
	`usuario_asignado_id`	INTEGER NOT NULL,
	`categoria_id`	INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS `categoria` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`nombre`	TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `usuario_categoria` (
	`usuario_id`	INTEGER NOT NULL,
	`categoria_id`	INTEGER NOT NULL
);
COMMIT;
