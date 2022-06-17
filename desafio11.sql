SELECT musica.nome_musica AS nome_musica, 
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(musica.nome_musica, 'Streets', 'Code Review'), 'Her Own', 'Trybe'), 'Inner Fire', 'Project'), 'Silly', 'Nice'), 'Circus', 'Pull Request') AS novo_nome
FROM SpotifyClone.musica AS musica
WHERE musica.nome_musica LIKE '%Her Own%' OR 
musica.nome_musica LIKE '%Streets' OR 
musica.nome_musica LIKE '%Inner Fire%' OR
musica.nome_musica LIKE '%Silly%' OR
musica.nome_musica LIKE '%Circus%'
ORDER BY nome_musica;