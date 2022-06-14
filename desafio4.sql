SELECT usuario.nome_usuario AS usuario,
IF (YEAR(MAX(historico.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico AS historico
ON historico.id_usuario = usuario.id_usuario
GROUP BY usuario.id_usuario
ORDER BY usuario;