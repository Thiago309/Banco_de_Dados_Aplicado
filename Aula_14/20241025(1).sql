-- Realiza query direto da memoria cache da base de dados (Esse processo � conhecido como memoria suja).
SELECT * FROM agenda WITH (NOLOCK); 