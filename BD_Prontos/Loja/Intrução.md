# Importando o banco de dados 'Loja'

Para fazer isso funcionar iremos usar o próprio terminal do *MySQL*. Devemos criar primeiro um banco de dados usando esse comando.

```sql
CREATE SCHEMA LOJA;
USE LOJA;
```

<br>

Em seguida vamos importar os arquivos *.SQL* com esse comando.

```powershell
\. <diretorio/para/arquivo.sql>
```

<br>

**OBS:** É necessario que você importe cada arquivo manualmente para dentro do banco de dados.