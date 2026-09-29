-- 04_consultas.sql
-- Projeto CondoFácil

USE condominio;

-- CONSULTAS
SELECT * FROM usuario;
SELECT * FROM categoria;
SELECT * FROM servico;
SELECT * FROM produto;
SELECT * FROM mensagem;
SELECT * FROM avaliacao;

-- UPDATE: atualização do valor de um serviço
UPDATE servico
SET valor = 90.00
WHERE id_servico = 1;

SELECT * FROM servico
WHERE id_servico = 1;

-- DELETE: registro temporário para demonstrar remoção
INSERT INTO produto
(id_usuario, id_categoria, nome, descricao, valor, data_publicacao)
VALUES
(4, 5, 'Produto de teste', 'Registro criado para testar a exclusão.', 10.00, '2026-09-29');

SELECT * FROM produto
WHERE nome = 'Produto de teste';

DELETE FROM produto
WHERE nome = 'Produto de teste';

SELECT * FROM produto;

-- INNER JOIN: serviços relacionados aos respectivos prestadores
SELECT
    servico.titulo AS servico,
    servico.descricao,
    servico.valor,
    usuario.nome AS prestador
FROM servico
INNER JOIN usuario
    ON servico.id_usuario = usuario.id_usuario;
