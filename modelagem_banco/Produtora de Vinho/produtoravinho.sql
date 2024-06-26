SELECT idProdutor FROM produtores
WHERE idProdutor IN(
SELECT idProdutor FROM produtores, regiao
WHERE produtores.idRegiao = regiao.idRegiao
AND regiao = 'Alentejo')
AND idProdutor IN(
SELECT DISTINCT idProdutor
FROM vinho
WHERE grau > 13.5);