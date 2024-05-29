--1ª Consulta
SELECT 
	Nome,
	Ano 
FROM Filmes

--2ª Consulta
SELECT 
	Nome, 
	Ano
FROM Filmes ORDER BY Ano 

--3ª Consulta
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE 
	Nome = 'De volta para o futuro'

--4ª Consulta
SELECT 
	Nome, 
	Ano, 
	Duracao
FROM Filmes 
WHERE 
	Ano = 1997

--5ª Consulta
SELECT 
	Nome, 
	Ano, 
	Duracao
FROM Filmes 
WHERE 
	Ano > 2000
ORDER BY
	Ano

--6ª Consulta
SELECT 
	Nome, 
	Ano, 
	Duracao
FROM Filmes 
WHERE 
	Duracao > 100 AND Duracao < 150
ORDER BY
	Duracao

--7ª Consulta
SELECT  
	Ano, 
	COUNT(*) Quantidade
FROM Filmes 
GROUP BY Ano 
ORDER BY Quantidade DESC

--8ª Consulta
SELECT 
	Id, 
	PrimeiroNome, 
	UltimoNome,
	Genero 
FROM Atores 
WHERE Genero = 'M'

--9ª Consulta
SELECT 
	Id, 
	PrimeiroNome, 
	UltimoNome,
	Genero 
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10ª Consulta
SELECT
	Filmes.Nome,
	Generos.Genero 
FROM 
	Filmes 
INNER JOIN
	FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN
	Generos ON Generos.Id = FilmesGenero.IdGenero

--11ª Consulta
SELECT
	Filmes.Nome,
	Generos.Genero
FROM 
	Filmes
INNER JOIN 
	FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN 
	Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE 
	Generos.Genero = 'Mistério'

--12ª Consulta
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM 
	Filmes
INNER JOIN 
	ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN 
	Atores ON ElencoFilme.IdAtor = Atores.Id




 



