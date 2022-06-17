SELECT artista.artista_nome AS artista, album.album_nome AS album, COUNT(seguidores.artista_id) AS seguidores
FROM SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album
ON artista.artista_id = album.artista_id
INNER JOIN SpotifyClone.usuario_seguindo AS seguidores
ON seguidores.artista_id = album.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;