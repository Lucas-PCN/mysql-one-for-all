SELECT artista.nome_artista AS artista, album.nome_album AS album, COUNT(seguidores.id_artista) AS seguidores
FROM SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album
ON artista.id_artista = album.id_artista
INNER JOIN SpotifyClone.usuario_seguindo AS seguidores
ON seguidores.id_artista = album.id_artista
GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;