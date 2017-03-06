DROP TABLE tbAnulados;
CREATE TABLE tbAnulados (
  Id AUTOINC NOT NULL,
  Fecha DATE,
  Usuario INTEGER,
  Tipo VARCHAR(10),
  Nro VARCHAR(20),
  Descripcion VARCHAR(70), 
  INDEX Id (Id), 
  INDEX Usuario (Usuario), 
  INDEX Fecha (Fecha), 
  INDEX TipoyNro (Tipo, Nro)
);

