# Projeto de Tratamento de Dados com Pandas e SQLAlchemy

Este projeto prático faz parte da disciplina de Projeto Integrador do curso de Ciência de Dados e Engenharia da Computação da Univesp. O objetivo é tratar e enviar dados de um arquivo CSV para um banco de dados PostgreSQL utilizando as bibliotecas Pandas e SQLAlchemy.

## Fontes dos Dados:
Os dados utilizados neste projeto foram obtidos a partir do portal de [Dados Abertos CNPJ](https://dadosabertos.rfb.gov.br/CNPJ/dados_abertos_cnpj/2024-08/).

## Estrutura do Projeto

- `dados_brutos/`: Pasta contendo os baixados do Site de Origem.
- `dados_csv/`: Pasta contendo os arquivos CSV.
- `scripts/`: Pasta contendo os scripts Python para tratamento e envio dos dados.
- `notebooks/`: Pasta contendo os Jupyter Notebooks utilizados no projeto.
- `.gitignore`: Arquivo para ignorar arquivos e diretórios desnecessários no controle de versão.
- `README.md`: Este arquivo.

## Pré-requisitos

- Python 3.6 ou superior
- PostgreSQL
- Bibliotecas Python:
  - pandas
  - sqlalchemy
  - psycopg2-binary
  - chardet
  - python-dotenv

## Instalação

1. Clone o repositório:
   ```sh
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio
  ```

2. Crie o ambiente virtual e ative:
   ```sh   
   python -m venv .venv
   source .venv/bin/activate  # No Windows, use .venv\Scripts\activate
   ```
  
```
3. Instale as dependencias:
   ```sh
   pip install pandas sqlalchemy psycopg2-binary chardet python-dotenv
   ```
  
4. Crie um arquivo .env na raiz do projeto com as seguintes variáveis (configure de acordo com o seu banco de dados):
   ```python
   DB_USER=usuario
   DB_PASSWORD=senha
   DB_HOST=host
   DB_PORT=porta
   DB_NAME=nome_do_banco
   ```