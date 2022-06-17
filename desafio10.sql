SELECT musica.nome_musica AS nome, COUNT(historico.id_musica) AS reproducoes
FROM SpotifyClone.musica AS musica
INNER JOIN SpotifyClone.historico AS historico
ON musica.id_musica = historico.id_musica
RIGHT JOIN SpotifyClone.usuario AS usuario
ON historico.id_usuario = usuario.id_usuario
RIGHT JOIN SpotifyClone.plano AS plano
ON usuario.id_plano = plano.id_plano
WHERE plano.nome_plano IN ('pessoal', 'gratuito')
GROUP BY musica.nome_musica
ORDER BY musica.nome_musica;
