-- 1
SELECT Nome, Ano 
FROM Filmes

-- 2
SELECT Nome, Ano, Duracao 
FROM Filmes 
ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT * 
FROM Filmes 
WHERE Ano = 1997

-- 5
SELECT * 
FROM Filmes 
WHERE Ano > 2000

-- 6
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao

-- 7
SELECT Ano, COUNT(*) AS Quantidade 
FROM Filmes 
GROUP BY Ano 
ORDER BY SUM(Duracao) DESC

-- 8
SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores 
WHERE Genero = 'M'

-- 9
SELECT PrimeiroNome, UltimoNome, Genero  
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome

-- 10
SELECT  F.Nome,
		G.Genero
FROM Filmes F 
INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id

-- 11
SELECT  F.Nome,
		G.Genero
FROM Filmes F 
INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

-- 12
SELECT  F.Nome as Nome,
		A.PrimeiroNome as PrimeiroNome,
		A.UltimoNome as UltimoNome,
		E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON F.Id = E.Id
INNER JOIN Atores A ON A.Id = E.Id
