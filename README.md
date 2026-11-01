# landpages

Site: https://landpages.tedsptech.com

## Publicação no Coolify

- Repositório público: `ThalysonPin/landpages`, branch `main`.
- Build strategy: Docker Compose.
- Base directory: `/`.
- Docker Compose location: `/docker-compose.coolify.yml`.
- Serviço: `landpages`, porta interna `80`.

O Dockerfile serve `portfolio/` como página inicial e combina suas demos com
`demos/` da raiz. A configuração usa a rede externa `coolify-edge`, existente
na VPS. O gateway da VPS encaminha o domínio à aplicação e termina HTTPS.

Depois de atualizar a `main`, use **Redeploy** na aplicação Landpages do Coolify.
O deploy automático por webhook não está configurado.
