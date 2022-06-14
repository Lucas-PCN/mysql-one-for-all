SELECT usuario.nome_usuario AS usuario, COUNT(DISTINCT historico.id_musica) AS qtde_musicas_ouvidas, ROUND(SUM(musica.musica_duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico AS historico
ON usuario.id_usuario = historico.id_usuario
INNER JOIN SpotifyClone.musica AS musica
ON musica.id_musica = historico.id_musica
GROUP BY usuario.id_usuario
ORDER BY usuario ASC;