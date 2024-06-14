-- Crear la base de datos si no existe
CREATE SCHEMA IF NOT EXISTS multideportiv;

-- DROP DATABASE nombre_de_la_base_de_datos;

-- Usar la base de datos multideportivo
USE multideportivo;

-- Crear la tabla Disciplina_deportiva
CREATE TABLE IF NOT EXISTS `multideportivo`.`Disciplina_deportiva` (
  `id_disciplina` INT NOT NULL AUTO_INCREMENT,                          -- Id único para cada deporte, se incrementa automáticamente
  `nombre_disciplina` VARCHAR(25) NULL,                                 -- nombre del deporte, opcional, alfanumerico
  `descripcion` VARCHAR(50) NULL,                                       --- descripcion del deporte, opcional, alfanumerico
  PRIMARY KEY (`id_disciplina`))                                       -- clave primaria
ENGINE = InnoDB;

-- Crear la tabla Evento
CREATE TABLE IF NOT EXISTS `multideportivo`.`Evento` (
  `id_evento` INT NOT NULL AUTO_INCREMENT,                               -- Id único para cada evento, se incrementa automáticamente
  `nombre_evento` VARCHAR(25) NULL,                                      -- nombre del evento, , opcional, alfanumerico
  `fecha_inicio` DATE NULL,                                               -- fecha de inicio, opcional, fecha
  `fecha_cierre` DATE NULL,                                               -- fecha de cierre, opcional, fecha
  PRIMARY KEY (`id_evento`))                                             -- clave primaria
ENGINE = InnoDB;
);
		
-- Crear la tabla Participante
CREATE TABLE IF NOT EXISTS `multideportivo`.`Participante` (
  `id_Participante` INT NOT NULL AUTO_INCREMENT,                          -- Id único para cada participante, se incrementa automáticamente
  `nombre` VARCHAR(25) NULL,                                               -- nombre del participante, opcional, alfanumerico
  `apellido` VARCHAR(25) NULL,                                              -- apellido del participante, opcional, alfanumerico
  `edad` INT NULL,                                                           -- edad del participante, opcional, numerico
  `genero` ENUM('hombre', 'mujer') NULL,                                    -- genero del participante, opcional, binario (hombre o mujer)
  PRIMARY KEY (`id_Participante`))                                          -- clave primaria
ENGINE = InnoDB;

);

-- Crear la tabla Encuentro
CREATE TABLE IF NOT EXISTS `multideportivo`.`Encuentro` (
  `id_encuentro` INT NOT NULL AUTO_INCREMENT,                              -- Id único para cada encuentro, se incrementa automáticamente
  `fecha_encuentro` DATE NULL,                                             -- fecha encuentro, opcional, fecha
  `hora_encuentro` TIME NULL,                                              -- hora encuentro, opcional, hora
  `FK_Evento_id` INT NOT NULL,                                             -- clave foranea
  PRIMARY KEY (`id_encuentro`, `FK_Evento_id`),                           -- clave primaria de la relacion, compusta con claves foraneas
  INDEX `fk_Encuentro_Evento1_idx` (`FK_Evento_id` ASC) VISIBLE,           
  CONSTRAINT `fk_Encuentro_Evento1`                                        -- restricciones de integridad de la clave foranea
    FOREIGN KEY (`FK_Evento_id`)                                           -- clave foranea
    REFERENCES `multideportivo`.`Evento` (`id_evento`)                     -- referencias de la clave foranea
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
);

-- Crear la tabla Compite
CREATE TABLE IF NOT EXISTS `multideportivo`.`Compite` (
  `FK_Disciplina_deportiva_id` INT NOT NULL,                                   -- clave foranea                           
  `FK_Participante_id` INT NOT NULL,                                           -- clave foranea
  `rol` VARCHAR(25) NULL,                                                      -- atributo de la relacion, rol del participante en el deporte, opcional, alfanumerico
  PRIMARY KEY (`FK_Disciplina_deportiva_id`, `FK_Participante_id`),           --clave primaria de la relacion, compusta con claves foraneas
  INDEX `fk_Disciplina_deportiva_has_Participante_Participante1_idx` (`FK_Participante_id` ASC) VISIBLE,
  INDEX `fk_Disciplina_deportiva_has_Participante_Disciplina_deporti_idx` (`FK_Disciplina_deportiva_id` ASC) VISIBLE,
  CONSTRAINT `fk_Disciplina_deportiva_has_Participante_Disciplina_deportiva1`   -- restricciones de la clave foranea
    FOREIGN KEY (`FK_Disciplina_deportiva_id`)                                 -- clave foranea
    REFERENCES `multideportivo`.`Disciplina_deportiva` (`id_disciplina`)       -- referencias de la clave foranea
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Disciplina_deportiva_has_Participante_Participante1`           -- restricciones de la clave foranea
    FOREIGN KEY (`FK_Participante_id`)                                          -- clave foranea
    REFERENCES `multideportivo`.`Participante` (`id_Participante`)             -- referencias de la clave foranea
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- Crear la tabla Incluye
CREATE TABLE IF NOT EXISTS `multideportivo`.`Incluye` (
  `FK_Disciplina_deportiva_id` INT NOT NULL,                                -- clave foranea
  `FK_Evento_id` INT NOT NULL,                                              -- clave foranea
  PRIMARY KEY (`FK_Disciplina_deportiva_id`, `FK_Evento_id`),               -- clave primaria de la relacion, compusta con claves foraneas
  INDEX `fk_Disciplina_deportiva_has_Evento_Evento1_idx` (`FK_Evento_id` ASC) VISIBLE,
  INDEX `fk_Disciplina_deportiva_has_Evento_Disciplina_deportiva1_idx` (`FK_Disciplina_deportiva_id` ASC) VISIBLE,
  CONSTRAINT `fk_Disciplina_deportiva_has_Evento_Disciplina_deportiva1`     -- restricciones de la clave foranea
    FOREIGN KEY (`FK_Disciplina_deportiva_id`)                              -- clave foranea
    REFERENCES `multideportivo`.`Disciplina_deportiva` (`id_disciplina`)    -- referencias de la clave foranea
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Disciplina_deportiva_has_Evento_Evento1`                     -- restricciones de la clave foranea
    FOREIGN KEY (`FK_Evento_id`)                                             -- clave foranea
    REFERENCES `multideportivo`.`Evento` (`id_evento`)                      -- referencias de la clave foranea
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Crear la tabla Participa
CREATE TABLE IF NOT EXISTS `multideportivo`.`Participa` (
  `FK_Participante_id` INT NOT NULL,                                       -- clave foranea
  `FK_Evento_id` INT NOT NULL,                                             -- clave foranea
  PRIMARY KEY (`FK_Participante_id`, `FK_Evento_id`),                      -- clave primaria de la relacion, compusta con claves foraneas
  INDEX `fk_Participante_has_Evento_Evento1_idx` (`FK_Evento_id` ASC) VISIBLE,
  INDEX `fk_Participante_has_Evento_Participante1_idx` (`FK_Participante_id` ASC) VISIBLE,
  CONSTRAINT `fk_Participante_has_Evento_Participante1`                     -- restricciones de la clave foranea
    FOREIGN KEY (`FK_Participante_id`)                                      -- clave foranea
    REFERENCES `multideportivo`.`Participante` (`id_Participante`)          -- referencias de la clave foranea
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Participante_has_Evento_Evento1`                            -- restricciones de la clave foranea
    FOREIGN KEY (`FK_Evento_id`)                                            -- clave foranea
    REFERENCES `multideportivo`.`Evento` (`id_evento`)                      -- referencias de la clave foranea
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



