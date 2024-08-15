-- 1 - Buscar o nome e ano dos filmes
select nome, ano from Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano from Filmes order by ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select Nome, Ano, Duracao from Filmes where nome = 'de volta para o futuro';

-- 4 - Buscar os filmes lan�ados em 1997
select Nome, Ano, Duracao from Filmes where Ano = 1997;

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
select Nome, Ano, Duracao from Filmes where Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao;

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select 
	Ano, 
	count(id) as quantidade 
from Filmes group by Ano order by quantidade desc;

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M';

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome;

-- 10 - Buscar o nome do filme e o g�nero
select F.Nome, G.Genero from Filmes F
join FilmesGenero FG on FG.IdFilme = F.Id
join Generos G on G.Id = FG.IdGenero;

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select F.Nome, G.Genero from Filmes F
join FilmesGenero FG on FG.IdFilme = F.Id
join Generos G on G.Id = FG.IdGenero
where g.Genero = 'mist�rio';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
from Filmes F 
join ElencoFilme EF on EF.IdFilme = F.Id
join Atores A on A.Id = EF.IdAtor




