CREATE TABLE Pro_Nivel (
  idPro_Nivel INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nivel VARCHAR(50) NULL,
  PRIMARY KEY(idPro_Nivel)
);

CREATE TABLE Pro_Grado (
  idPro_Grado INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nombre INTEGER UNSIGNED NULL,
  PRIMARY KEY(idPro_Grado)
);

CREATE TABLE Pro_Pagos (
  idPro_Pagos INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Tipo_Pago VARCHAR(20) NULL,
  Descripcion_Pago TEXT NULL,
  Monto_Pago DOUBLE NULL,
  Fecha_Pago DATE NULL,
  Estado_T INT NULL,
  PRIMARY KEY(idPro_Pagos)
);

CREATE TABLE Pro_Seccion (
  idPro_Seccion INTEGER UNSIGNED NOT NULL,
  Nomenaclatura_Seccion VARCHAR(3) NULL,
  Capacidad_Seccion INTEGER UNSIGNED NULL,
  Estado_Seccion BOOL NULL,
  PRIMARY KEY(idPro_Seccion)
);

CREATE TABLE Pro_Puesto (
  idPro_Puesto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Puesto VARCHAR(50) NULL,
  PRIMARY KEY(idPro_Puesto)
);

CREATE TABLE Pro_Encargado (
  idPro_Encargado INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nombre1 VARCHAR(50) NULL,
  Nombre2 VARCHAR(50) NULL,
  Nombre3 VARCHAR(50) NULL,
  Apellido1 VARCHAR(50) NULL,
  Apellido2 VARCHAR(50) NULL,
  Diteccion VARCHAR(100) NULL,
  Telefono VARCHAR(15) NULL,
  Telefono2 VARCHAR(15) NULL,
  Relacion VARCHAR(100) NULL,
  FechaNac DATE NULL,
  PRIMARY KEY(idPro_Encargado)
);

CREATE TABLE Pro_Carrera (
  idPro_Carrera INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nombre INTEGER UNSIGNED NULL,
  PRIMARY KEY(idPro_Carrera)
);

CREATE TABLE Pro_Docente (
  idPro_Docente INTEGER UNSIGNED NOT NULL,
  Pro_Puesto_idPro_Puesto INTEGER UNSIGNED NOT NULL,
  Nombre_1 VARCHAR(50) NULL,
  Nombre_2 VARCHAR(50) NULL,
  Nombre_3 VARCHAR(50) NULL,
  Apellido_1 INTEGER UNSIGNED NULL,
  PRIMARY KEY(idPro_Docente),
  INDEX Pro_Docente_FKIndex1(Pro_Puesto_idPro_Puesto),
  FOREIGN KEY(Pro_Puesto_idPro_Puesto)
    REFERENCES Pro_Puesto(idPro_Puesto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Pro_Empleado (
  idPro_Empleado INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Pro_Puesto_idPro_Puesto INTEGER UNSIGNED NOT NULL,
  Nombre_1 VARCHAR(50) NULL,
  Nombre_2 VARCHAR(50) NULL,
  Nombre_3 VARCHAR(50) NULL,
  Apellido_1 VARCHAR(50) NULL,
  Apellido_2 VARCHAR(50) NULL,
  Fecha_Nac DATE NULL,
  CUI VARCHAR(50) NULL,
  PRIMARY KEY(idPro_Empleado),
  INDEX Pro_Empleado_FKIndex1(Pro_Puesto_idPro_Puesto),
  FOREIGN KEY(Pro_Puesto_idPro_Puesto)
    REFERENCES Pro_Puesto(idPro_Puesto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Pro_Estudiante (
  idPro_Estudiante INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Pro_Seccion_idPro_Seccion INTEGER UNSIGNED NOT NULL,
  Pro_Encargado_idPro_Encargado INTEGER UNSIGNED NOT NULL,
  Pro_Carrera_idPro_Carrera INTEGER UNSIGNED NOT NULL,
  Pro_Grado_idPro_Grado INTEGER UNSIGNED NOT NULL,
  Pro_Nivel_idPro_Nivel INTEGER UNSIGNED NOT NULL,
  Nombre1 VARCHAR(50) NULL,
  Nombre2 VARCHAR(50) NULL,
  Nombre3 VARCHAR(50) NULL,
  Apellido_1 VARCHAR(50) NULL,
  Apellido_2 VARCHAR(50) NULL,
  Cui INTEGER UNSIGNED NULL,
  Codigo INTEGER UNSIGNED NULL,
  FechaNac DATE NULL,
  Contraseña VARCHAR(50) NULL,
  PRIMARY KEY(idPro_Estudiante, Pro_Seccion_idPro_Seccion),
  INDEX Pro_Estudiante_FKIndex1(Pro_Nivel_idPro_Nivel),
  INDEX Pro_Estudiante_FKIndex2(Pro_Grado_idPro_Grado),
  INDEX Pro_Estudiante_FKIndex3(Pro_Carrera_idPro_Carrera),
  INDEX Pro_Estudiante_FKIndex4(Pro_Encargado_idPro_Encargado),
  INDEX Pro_Estudiante_FKIndex5(Pro_Seccion_idPro_Seccion),
  FOREIGN KEY(Pro_Nivel_idPro_Nivel)
    REFERENCES Pro_Nivel(idPro_Nivel)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Grado_idPro_Grado)
    REFERENCES Pro_Grado(idPro_Grado)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Carrera_idPro_Carrera)
    REFERENCES Pro_Carrera(idPro_Carrera)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Encargado_idPro_Encargado)
    REFERENCES Pro_Encargado(idPro_Encargado)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Seccion_idPro_Seccion)
    REFERENCES Pro_Seccion(idPro_Seccion)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Pro_MallaCurricular (
  idPro_MallaCurricular INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Pro_Docente_idPro_Docente INTEGER UNSIGNED NOT NULL,
  Pro_Seccion_idPro_Seccion INTEGER UNSIGNED NOT NULL,
  Pro_Carrera_idPro_Carrera INTEGER UNSIGNED NOT NULL,
  Pro_Grado_idPro_Grado INTEGER UNSIGNED NOT NULL,
  Pro_Nivel_idPro_Nivel INTEGER UNSIGNED NOT NULL,
  Curso VARCHAR(100) NULL,
  PRIMARY KEY(idPro_MallaCurricular),
  INDEX Pro_MallaCurricular_FKIndex1(Pro_Nivel_idPro_Nivel),
  INDEX Pro_MallaCurricular_FKIndex2(Pro_Grado_idPro_Grado),
  INDEX Pro_MallaCurricular_FKIndex3(Pro_Carrera_idPro_Carrera),
  INDEX Pro_MallaCurricular_FKIndex4(Pro_Seccion_idPro_Seccion),
  INDEX Pro_MallaCurricular_FKIndex5(Pro_Docente_idPro_Docente),
  FOREIGN KEY(Pro_Nivel_idPro_Nivel)
    REFERENCES Pro_Nivel(idPro_Nivel)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Grado_idPro_Grado)
    REFERENCES Pro_Grado(idPro_Grado)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Carrera_idPro_Carrera)
    REFERENCES Pro_Carrera(idPro_Carrera)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Seccion_idPro_Seccion)
    REFERENCES Pro_Seccion(idPro_Seccion)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Docente_idPro_Docente)
    REFERENCES Pro_Docente(idPro_Docente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Pro_Colegiatura (
  idPro_Colegiatura INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Pro_Pagos_idPro_Pagos INTEGER UNSIGNED NOT NULL,
  Pro_Estudiante_Pro_Seccion_idPro_Seccion INTEGER UNSIGNED NOT NULL,
  Pro_Estudiante_idPro_Estudiante INTEGER UNSIGNED NOT NULL,
  Pro_Estado_Colegiatura BOOL NULL,
  PRIMARY KEY(idPro_Colegiatura),
  INDEX Pro_Colegiatura_FKIndex1(Pro_Estudiante_idPro_Estudiante, Pro_Estudiante_Pro_Seccion_idPro_Seccion),
  INDEX Pro_Colegiatura_FKIndex2(Pro_Pagos_idPro_Pagos),
  FOREIGN KEY(Pro_Estudiante_idPro_Estudiante, Pro_Estudiante_Pro_Seccion_idPro_Seccion)
    REFERENCES Pro_Estudiante(idPro_Estudiante, Pro_Seccion_idPro_Seccion)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Pagos_idPro_Pagos)
    REFERENCES Pro_Pagos(idPro_Pagos)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Pro_Usuario (
  idPro_Usuario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Pro_Docente_idPro_Docente INTEGER UNSIGNED NOT NULL,
  Pro_Estudiante_Pro_Seccion_idPro_Seccion INTEGER UNSIGNED NOT NULL,
  Pro_Estudiante_idPro_Estudiante INTEGER UNSIGNED NOT NULL,
  Pro_Empleado_idPro_Empleado INTEGER UNSIGNED NOT NULL,
  Nick_Usuario VARCHAR(50) NULL,
  Pass_Usuario VARCHAR(50) NULL,
  Estado_Usuario INT NULL,
  PRIMARY KEY(idPro_Usuario),
  INDEX Pro_Usuario_FKIndex1(Pro_Empleado_idPro_Empleado),
  INDEX Pro_Usuario_FKIndex2(Pro_Estudiante_idPro_Estudiante, Pro_Estudiante_Pro_Seccion_idPro_Seccion),
  INDEX Pro_Usuario_FKIndex3(Pro_Docente_idPro_Docente),
  FOREIGN KEY(Pro_Empleado_idPro_Empleado)
    REFERENCES Pro_Empleado(idPro_Empleado)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Estudiante_idPro_Estudiante, Pro_Estudiante_Pro_Seccion_idPro_Seccion)
    REFERENCES Pro_Estudiante(idPro_Estudiante, Pro_Seccion_idPro_Seccion)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pro_Docente_idPro_Docente)
    REFERENCES Pro_Docente(idPro_Docente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


