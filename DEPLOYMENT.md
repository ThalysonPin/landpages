# Publicação da Landpages

Site: https://landpages.tedsptech.com

## Build no Coolify

- Repositório: `ThalysonPin/landpages`.
- Branch: `main`.
- Build strategy: Docker Compose.
- Base directory: `/`.
- Docker Compose location: `/docker-compose.coolify.yml`.
- Serviço: `landpages`, porta interna `80`.

O Dockerfile serve `portfolio/` como raiz e combina suas demos com `demos/`
da raiz. A infraestrutura e o certificado HTTPS são gerenciados na hospedagem.

## Atualizações

Envie as alterações à `main` e use **Redeploy** na aplicação Landpages do Coolify.
O deploy automático por webhook não está configurado.

A publicação inicial foi verificada em 31/10/2026: página inicial e demos de
estética, odontologia e academia retornaram HTTP 200, com HTTPS válido.

## Conteúdo ausente no repositório

Estes arquivos já estavam ausentes antes da configuração da hospedagem:

- `demos/advocacia/index.html`, anunciado na página inicial.
- `demos/academia/assets/coach-2.jpg`.
- `demos/academia/assets/coach-3.jpg`.
- `demos/academia/assets/coach-4.jpg`.
- `demos/academia/assets/og.jpg`, usado na prévia de compartilhamento.

Esses caminhos respondem 404. A hospedagem não substitui páginas ausentes pela
página inicial.
