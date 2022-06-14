SELECT COUNT(DISTINCT musica.musica_id) AS cancoes, COUNT(DISTINCT album.artista_id) AS artistas, COUNT(DISTINCT musica.album_id) AS albuns
FROM SpotifyClone.musica AS musica
INNER JOIN SpotifyClone.album AS album;