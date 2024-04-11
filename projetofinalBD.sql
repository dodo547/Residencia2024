CREATE TABLE usuarios(
    id serial PRIMARY KEY,
    ativo bool DEFAULT true,
    nome varchar(258) NOT NULL,
    sobrenome varchar(258) NOT NULL,
    cpf char(11) NOT NULL UNIQUE,
    email varchar(258) NOT NULL UNIQUE,
    datanascimento DATE NOT NULL,
    vendedor bool DEFAULT false
);
CREATE TABLE enderecos(
    id_usuario int REFERENCES usuarios(id) NOT NULL,
    id_endereco serial PRIMARY KEY,
    UF varchar(2) NOT NULL,
    cidade varchar(100) NOT NULL,
    bairro varchar(100) NOT NULL,
    rua varchar(100) NOT NULL,
    cep varchar(8) NOT NULL,
    numero_moradia int NOT NULL,
    complemento varchar(50)
);
CREATE TABLE telefones(
    id_usuario int REFERENCES usuarios(id) NOT NULL,
    id serial PRIMARY KEY,
    telefone varchar(11) NOT NULL UNIQUE
);
CREATE TABLE categorias(
    id serial PRIMARY KEY,
    ativo bool DEFAULT true,
    nome varchar(258) NOT NULL,
    descricao varchar(258) NOT NULL
);
CREATE TABLE produtos(
    id serial PRIMARY KEY,
    id_vendedor int REFERENCES usuarios(id) NOT NULL,
    id_categoria int REFERENCES categorias(id) NOT NULL,
    ativo bool DEFAULT true,
    nome varchar(258) NOT NULL,
    descricao_produto text NOT NULL,
    data_fabricacao date NOT NULL,
    quantidade_estoque int DEFAULT 1,
    valor_unitario real DEFAULT 0.0
);
CREATE TABLE pedidos(
    id serial PRIMARY KEY,
    id_cliente int REFERENCES usuarios(id) NOT NULL,
    id_vendedor int REFERENCES usuarios(id) NOT NULL,
    ativo bool DEFAULT true,
    data_pedido timestamp DEFAULT CURRENT_TIMESTAMP,
    quantidade_pedido int DEFAULT 1
);
CREATE TABLE produtospedidos(
    id_pedido int REFERENCES pedidos(id) NOT NULL,
    id_produto int REFERENCES produtos(id) NOT NULL,
    PRIMARY KEY (id_pedido, id_produto)
);  
INSERT INTO categorias
(
    nome, descricao
)
VALUES
('Automotivo', 'Categoria destinada a automóveis e peças.'),
('Computadores e Informática', 'Categoria destinada a computadores e componentes.'),
('Eletrônicos e Eletrodomésticos', 'Categoria destinada a equipamentos de TV, Audio e eletrodomésticos no geral.'),
('Games e Consoles', 'Categoria destinada a jogos e consoles.'),
('Roupas, Calçados e Acessórios', 'Categoria destinada a roupas calçados e acessórios no geral.')
;
INSERT INTO usuarios
(
    nome,sobrenome, cpf, email, datanascimento,vendedor
)

VALUES 
('Ian','Santos', 12345678901, 'ian@gmai.com','01-01-2001',true),
('Lucas','Silva', 24681357900, 'Lucas@gmail.com','02-02-2002',true),
('Marcos','Castro', 99887766554, 'Marcos@gmail.com','03-03-2003',true),
('Douglas','Costa', 98765432109, 'Douglas@gmai.com','04-04-2004',false),
('Alexandre','Pires', 81231231231, 'Alexandre@gmail.com','05-05-2005',false)
;
INSERT INTO  enderecos
(
   id_usuario, uf, cidade, bairro, rua, cep,  numero_moradia,  complemento
)
VALUES 
(1,'rj','petropolis','minecascata', 'rua zero', 123,15, 'perto do bar do za'),
(2,'rj','petropolis','cascatinha', 'Rua Um', 456,16, 'perto do bar do ze'),
(3,'rj','petropolis','cascatamedia','Rua Dois', 789,17, 'perto do bar do zi'),
(4,'rj','petropolis','cascatão', 'Rua Três', 101,18, 'perto do bar do zo'),
(5,'rj','petropolis','cascatiço', 'Rua Quatro', 121,19, 'perto do bar do zu')
;
INSERT INTO  telefones
(
   id_usuario, telefone 
)
VALUES 
(1, 24987654321),
(2, 31765432109),
(3, 24543210987),
(4, 24876543210),
(5, 24765432109)
;
INSERT INTO pedidos
(
    id_cliente,id_vendedor,quantidade_pedido
)

VALUES 
(1,1,1),
(2,2,2),
(3,2,3),
(4,3,4),
(5,1,5)
;
INSERT INTO Produtos (nome, data_fabricacao, quantidade_estoque, valor_unitario, descricao_produto, id_categoria, id_vendedor)
VALUES 

('Turbina Holset Cummins Constellation 25390', '2022-08-04', 5, 5600.00, 'Constellation Euro V,  Advantech', 1, 1),
('Intercooler Street 2-1/2 Polegadas Universal', '2018-06-01', 12, 1789.00, 'Construídos em alumínio 6061
 e soldados cuidadosamente com solda Tig, os Intercoolers da Metal Horse
 garantem a refrigeração necessária para os carros turbo mais potentes do mercado.', 1, 1),
('Placa de video 1660 Super', '2024-03-25', 17, 1229.00, 'A gtx 1660 super possui 6 GB de memória GDDR6,
 uma velocidade de clock base de 1530 MHz e uma velocidade de clock boost de 1785 MHz.', 2, 2),
('Monitor Samsung Odyssey G30', '2024-01-05', 29, 1463.90, ' 24p, FHD, Tela Plana, Painel VA,
 144Hz, 1Ms, HDMI, FreeSync Premium', 2, 2),
('Samsung Smart TV Crystal 55" ', '2023-09-12', 76, 3339.00, 'Smart TV Crystal 55" 4K UHD CU7700
Alexa built in, Samsung Gaming Hub', 3, 3),
('Lava e Seca Smart LG', '2024-12-02', 32, 5979.80, 'Lava e Seca Smart LG VC4 13kg Aço Escovado
 com Inteligência Artificial AIDD™ - CV5013EC4 - Motor Inverter', 3, 1),
('Console PlayStation 5', '2023-06-09', 55, 4499.90, 'Maravilhe-se com os gráficos
 incríveis e experimente os recursos do novo PS5.', 4, 2),
('The Last of Us Part II', '2022-08-11', 8, 216.17, 'Vencedor de mais de 300 prêmios de Jogo do Ano,
 remasterizado para o console PS5', 4, 3),
('Tênis Masculino L003 Lacoste 2k24', '2024-01-03', 5, 1389.99, 'O L003 Lacoste 2K24 é o passo para
 o futuro da linguagem de design dos tênis Lacoste.
 Este tênis é desenvolvido para os amantes de tênis da moda', 5, 3),
('Tênis Nike Versair Feminino', '2021-02-02', 91, 854.99, 'O que está na agenda hoje? Pernas?
 Cardio? Aula? No ágil e flexível Versair, você pode realizar uma ampla variedade de treinos.', 5, 1)
;
INSERT INTO produtospedidos
(
	id_pedido,id_produto
)
VALUES
(1,2),
(2,3),
(3,4),
(4,8),
(5,1)
;
SELECT
    p.nome, c.nome, p.valor_unitario
FROM produtos p
INNER JOIN categorias c
ON (p.id_categoria=c.id)
;
SELECT
    u.nome, p.nome, p.quantidade_estoque
FROM usuarios u
JOIN produtos p
ON (p.id_vendedor=u.id)
;
SELECT
    u.nome,v.id,p.nome,p.valor_unitario,v.quantidade_pedido
FROM usuarios u
JOIN produtos p ON u.id = p.id_vendedor
JOIN pedidos v ON u.id = v.id_cliente
WHERE u.id=1
;
SELECT
	u.nome,count(*) as quantidade
FROM produtos p
JOIN usuarios u ON u.id=p.id_vendedor
GROUP BY u.nome
ORDER BY quantidade desc
;
SELECT
	u.nome,u.cpf,e.uf,e.cidade,e.bairro,e.rua,e.cep,e.numero_moradia,e.complemento,v.data_pedido,p.nome,p.valor_unitario,v.quantidade_pedido,
	(p.valor_unitario*v.quantidade_pedido)AS valor_total
FROM produtospedidos pp
JOIN pedidos v ON v.id=pp.id_pedido
JOIN produtos p ON p.id=pp.id_produto
JOIN usuarios u ON u.id=v.id_cliente
JOIN enderecos e ON e.id_usuario=v.id_cliente
WHERE pp.id_pedido=3
;
UPDATE usuarios
SET email = 'lucas.voigt@gmail.com'
WHERE id = 2 
DELETE FROM produtos
WHERE id = 9