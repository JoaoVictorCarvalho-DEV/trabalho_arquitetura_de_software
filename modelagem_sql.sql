-- ====================================================================
-- DICIONÁRIO DE DADOS (DDL) - MODELO LÓGICO DE DOMÍNIO
-- ====================================================================

-- Tabela Pai (Entidade Forte)
CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela Filha (Relacionamento 1:N com Usuários)
CREATE TABLE dispositivos_iot (
    id_dispositivo SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL REFERENCES usuarios(id_usuario) ON DELETE CASCADE,
    nome_dispositivo VARCHAR(50) NOT NULL,
    identificador_unico VARCHAR(100) UNIQUE NOT NULL,
    token_autenticacao VARCHAR(255) NOT NULL,
    status_ativo BOOLEAN DEFAULT TRUE,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela Filha (Relacionamento 1:N com Dispositivos - Alto Volume de Dados)
CREATE TABLE historico_telemetria (
    id_telemetria BIGSERIAL PRIMARY KEY,
    id_dispositivo INT NOT NULL REFERENCES dispositivos_iot(id_disp_iot) ON DELETE CASCADE,
    corrente_ampere NUMERIC(6,3) NOT NULL,
    potencia_watt NUMERIC(8,2) NOT NULL,
    estado_rele BOOLEAN NOT NULL,
    registrado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Agendamentos de Comandos
CREATE TABLE agendamentos_comandos (
    id_comando SERIAL PRIMARY KEY,
    id_dispositivo INT NOT NULL REFERENCES dispositivos_iot(id_dispositivo),
    comando_executar VARCHAR(20) NOT NULL, -- 'LIGAR' ou 'DESLIGAR'
    data_hora_programada TIMESTAMP NOT NULL,
    status_execucao VARCHAR(20) DEFAULT 'PENDENTE'
);