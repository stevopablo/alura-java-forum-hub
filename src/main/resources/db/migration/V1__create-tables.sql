CREATE TABLE autores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE
    nome VARCHAR(255) NOT NULL,
);

CREATE TABLE cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria ENUM('mobile', 'programação', 'front-end','back-end' 'devops', 'ux & design', 'data science', 'inovação & gestão', 'inteligência artificial') NOT NULL
    nome VARCHAR(255) NOT NULL,
);

CREATE TABLE topicos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    data_criacao DATETIME NOT NULL,
    mensagem TEXT NOT NULL,
    autor_id BIGINT NOT NULL,
    curso_id BIGINT NOT NULL,
    status VARCHAR(50) NOT NULL,

    FOREIGN KEY (curso_id) REFERENCES cursos(id)
    FOREIGN KEY (autor_id) REFERENCES autores(id),
);

CREATE TABLE respostas (

    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    topico_id BIGINT NOT NULL,
    autor_id BIGINT NOT NULL,
    solucao TEXT,
    data_criacao DATETIME NOT NULL,

    FOREIGN KEY (autor_id) REFERENCES autores(id)
    FOREIGN KEY (topico_id) REFERENCES topicos(id),
);