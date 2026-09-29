-- 03_inserts.sql
-- Projeto CondoFácil
-- Dados de exemplo

USE condominio;

INSERT INTO usuario (nome, email, telefone, senha) VALUES
('Ana Silva', 'ana@email.com', '31999990001', '123456'),
('Carlos Souza', 'carlos@email.com', '31999990002', '123456'),
('Mariana Oliveira', 'mariana@email.com', '31999990003', '123456'),
('João Santos', 'joao@email.com', '31999990004', '123456');

INSERT INTO categoria (nome, tipo) VALUES
('Limpeza', 'servico'),
('Manutenção', 'servico'),
('Aulas', 'servico'),
('Alimentos', 'produto'),
('Artesanato', 'produto');

INSERT INTO servico
(id_usuario, id_categoria, titulo, descricao, valor, data_publicacao) VALUES
(1, 1, 'Serviço de limpeza', 'Limpeza de apartamentos e áreas internas.', 80.00, '2026-09-25'),
(2, 2, 'Pequenos reparos', 'Serviços de manutenção e pequenos consertos.', 50.00, '2026-09-25'),
(3, 3, 'Aulas de reforço', 'Aulas de reforço escolar para crianças.', 40.00, '2026-09-25');

INSERT INTO produto
(id_usuario, id_categoria, nome, descricao, valor, data_publicacao) VALUES
(1, 4, 'Bolo caseiro', 'Bolo caseiro feito sob encomenda.', 35.00, '2026-09-25'),
(4, 5, 'Peças artesanais', 'Produtos artesanais feitos à mão.', 25.00, '2026-09-25');

INSERT INTO mensagem
(id_remetente, id_destinatario, conteudo, data_envio) VALUES
(1, 2, 'Olá, gostaria de saber mais sobre o serviço.', '2026-09-25 10:00:00'),
(2, 1, 'Olá! Posso explicar como funciona.', '2026-09-25 10:05:00');

INSERT INTO avaliacao
(id_servico, id_usuario, nota, comentario, data_avaliacao) VALUES
(1, 2, 5, 'Serviço muito bom.', '2026-09-25'),
(2, 3, 4, 'Bom atendimento.', '2026-09-25');
