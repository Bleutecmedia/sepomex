-- Obtener detalles de un Código Postal
SELECT
  dat.ast_nombre AS Tipo
  ,ase.as_nombre AS Asentamiento
  ,ciu.ciu_nombre AS Ciudad
  ,mun.mun_nombre AS Municipio
  ,es.est_nombre AS Estado
  ,cp.cpid AS CP
  FROM dir_cp cp
  JOIN dir_municipios mun ON mun.munid = cp.cp_munid
  JOIN dir_estados es ON es.estaid = mun.mun_estaid
  JOIN dir_asentamientos ase ON ase.as_munid = mun.munid
  LEFT JOIN dir_ciudades ciu ON ciu.ciuid = ase.as_ciuid
  JOIN dir_asentamientos_cp dac ON dac.asc_cpid = cp.cpid
  JOIN dir_asentamientos_tipos dat ON dat.astid = ase.as_astid
  WHERE cp.cpid = 28979