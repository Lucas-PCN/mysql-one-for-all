SELECT artista.nome_artista AS artista, album.nome_album AS album
FROM SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album  AS album
ON album.id_artista = artista.id_artista
WHERE nome_artista = 'Walter Phoenix';