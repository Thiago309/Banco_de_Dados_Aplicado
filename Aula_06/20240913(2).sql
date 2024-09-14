--CREATE TABLE Aluno(CPF_Aluno CHAR(11) NOT NULL PRIMARY KEY,
--					Nome VARCHAR(50) NOT NULL, 
--					Sexo CHAR(1) NOT NULL,
--					Nascimento DATE NOT NULL,
--					Telefone VARCHAR(20) NOT NULL,
--					E_mail VARCHAR(20) NOT NULL
--					);

--CREATE TABLE Turno(Cod_Turno INTEGER NOT NULL PRIMARY KEY,
--					Descricao VARCHAR(50) NOT NULL,
--					HoraInicio TIME,
--					HoraTermino TIME
--					);

--CREATE TABLE Atividade(Cod_Atividade INTEGER NOT NULL PRIMARY KEY,
--						Descricao VARCHAR(30) NOT NULL);

--CREATE TABLE Professor(CPF_Professor CHAR(11) NOT NULL PRIMARY KEY,
--						Nome VARCHAR(50) NOT NULL,
--						Sexo CHAR(1) NOT NULL,
--						Nascimento DATE NOT NULL,
--						Telefone VARCHAR(50) NOT NULL,
--						E_mail VARCHAR(50)
						--);

--CREATE TABLE Turma(Cod_Turma INTEGER NOT NULL PRIMARY KEY,
--					QtdAlunos INTEGER NOT NULL,
--					Cod_Turno INTEGER REFERENCES Turno(Cod_Turno) NOT NULL,
--					Cod_Atividade INTEGER REFERENCES Atividade(Cod_Atividade) NOT NULL
--					);

--CREATE TABLE aluno_turma(CPF_Aluno CHAR(11) NOT NULL,
--						 Cod_Turma INTEGER NOT NULL
--						 FOREIGN KEY(CPF_Aluno) REFERENCES Aluno(CPF_Aluno),
--						 FOREIGN KEY(Cod_Turma) REFERENCES Turma(Cod_Turma)
--						 );

--SELECT * FROM aluno_turma;

--CREATE TABLE professor_turma(CPF_Professor CHAR(11) NOT NULL,
--							Cod_Turma INTEGER NOT NULL
--							FOREIGN KEY(CPF_Professor) REFERENCES Professor(CPF_Professor),
--							FOREIGN KEY(Cod_Turma) REFERENCES Turma(Cod_Turma)
							--);

--SELECT * FROM professor_turma;