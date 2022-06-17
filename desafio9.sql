SELECT COUNT(historico.id_musica) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico AS historico
INNER JOIN SpotifyClone.usuario AS usuario
ON historico.id_usuario = usuario.id_usuario
WHERE usuario.nome_usuario = 'Bill';