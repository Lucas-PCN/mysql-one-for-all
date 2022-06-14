SELECT CAST(MIN(plano.valor_plano) AS DECIMAL(5, 2)) AS 'faturamento_minimo', 
CAST(MAX(plano.valor_plano) AS DECIMAL(5, 2)) AS 'faturamento_maximo',
CAST(ROUND(AVG(plano.valor_plano), 2) AS DECIMAL(5, 2)) AS 'faturamento_medio',
CAST(ROUND(SUM(plano.valor_plano), 2) AS DECIMAL(5, 2)) AS 'faturamento_total'
FROM SpotifyClone.plano AS plano
INNER JOIN SpotifyClone.usuario AS usuario
ON usuario.id_plano = plano.id_plano;