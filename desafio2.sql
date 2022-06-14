SELECT COUNT(DISTINCT musica.id_musica) AS cancoes,
COUNT(DISTINCT album.id_artista) AS artistas,
COUNT(DISTINCT musica.id_album) AS albuns
FROM SpotifyClone.musica AS musica
INNER JOIN SpotifyClone.album AS album;