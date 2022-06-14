SELECT musica.nome_musica AS cancao, COUNT(historico.id_musica) AS reproducoes
FROM SpotifyClone.musica AS musica
INNER JOIN SpotifyClone.historico AS historico
ON musica.id_musica = historico.id_musica
GROUP BY musica.nome_musica
ORDER BY reproducoes DESC, cancao
LIMIT 2;