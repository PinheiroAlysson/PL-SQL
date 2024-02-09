CREATE TABLE PAIS (ID_PAIS NUMBER GENERATED ALWAYS AS IDENTITY, 
                    NOME VARCHAR(30),
                    PRIMARY KEY(ID_PAIS));
                    
CREATE TABLE ESTADO (ID_ESTADO NUMBER GENERATED ALWAYS AS IDENTITY,
                     NOME VARCHAR(30),
                     ID_PAIS NUMBER,
                     PRIMARY KEY(ID_ESTADO));
                     
ALTER TABLE ESTADO ADD CONSTRAINT FK_ESTADO FOREIGN KEY (ID_PAIS) REFERENCES PAIS;

CREATE TABLE CIDADE (ID_CIDADE NUMBER GENERATED ALWAYS AS IDENTITY,
                     NOME VARCHAR(30),
                     ID_ESTADO NUMBER,
                     PRIMARY KEY(ID_ESTADO));

CREATE TABLE BAIRRO(ID_BAIRRO NUMBER GENERATED ALWAYS AS IDENTITY,
                    NOME VARCHAR(30),
                    ID_CIDADE NUMBER,
                    PRIMARY KEY (ID_BAIRRO));
                    
ALTER TABLE CIDADE ADD CONSTRAINT FK_BAIRRO FOREIGN KEY (ID_BAIRRO) REFERENCES CIDADE;

CREATE TABLE ENDERECO_CLIENTE (ID_ENDERECO NUMBER GENERATED ALWAYS AS IDENTITY,
                   CEP VARCHAR(30),
                   ID_BAIRRO NUMBER,
                   REFERENCIA VARCHAR(30),
                   PRIMARY KEY(ID_ENDERECO));
                   
ALTER TABLE ENDERECO_CLIENTE ADD CONSTRAINT
FK_ENDERECO FOREIGN KEY (ID_BAIRRO) REFERENCES BAIRRO;