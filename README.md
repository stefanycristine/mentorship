# Mentoria - Grupo 4

## Descrição

Nesta edição do Rails Girls São Paulo, vamos criar um projeto de mentoria.
Nesse projeto, queremos viabilizar a conexão entre pessoas que querem:
- dar mentoria (mentoras)
- receber mentoria (mentorandas)

### Requisitos e Premissas

* Toda pessoa que participa de uma sessão de mentoria, seja a pessoa que oferece conselhos ou a que escuta, precisa contar um pouco de si para que a conversa flua. Então, no nosso caso, precisamos dos dados básicos de uma pessoa, uma URL ( WhatsApp, IN, Calendly, etc) e uma mini bio.
* Uma pessoa que dá mentoria também pode estar interessada em receber mentorias, então a pessoa pode ter mais de um perfil.
* As pessoas mentoras podem indicar 1 ou mais especialidades sobre às quais ela pode dar uma mentoria.
* As pessoas mentoradas devem ter uma forma de buscar mentoras através dessas especialidades.
* Deve ser possível agendar ou solicitar uma mentoria através da plataforma.

### Durante o evento
As participantes do Rails Girls SP 2024 serão divididas em equipes de 3 a 5 participantes e 1 pessoa mentora. A ideia é que vocês evoluam em time o máximo possível desse projeto.

Algumas das tarefas que as equipes podem executar durante o evento já foram criadas nesse [trello](https://trello.com/b/k5kpvZNU/rails-girls-sp-2024). Sua equipe deve duplicar o trelo e dividir as tarefas dentro da equipe da forma que acharem que funciona melhor.

O objetivo maior é aprender, então terminar o projeto é só um detalhe. Portanto, escrevam testes, inventem novas funcionalidades e, mais importante de tudo, se divirtam!

## Configuração
### Requisitos do sistema

| Dependência     | Versão     |
| -------------- | ----------- |
| PostgreSQL     | **13.x**    |
| Docker         | **24.0.6**  |
| Docker-compose | **2.22.0**  |

### Executando a aplicação

Para construir o sistema, execute: `make build`

Certifique-se de que a rede "mentorship" esteja criada: `docker network create mentorship`

Para instalar e/ou atualizar as dependências, execute: `make bundle-install`

Para executar a aplicação, execute: `make run`

Para executar um terminal com debug (pry), execute: `make run-debugging`

O projeto estará rodando em [http://localhost:3000/](http://localhost:3000/)

### Testes e linting

**Testes**
```bash
make test # roda todos os testes
make test spec/path_to_spec.rb # roda os testes de um arquivo ou pasta em específico
make test spec/path_to_spec.rb:34 # roda os testes que estão em uma linha específica de um arquivo

make test-failures # roda apenas testes que falharam anteriormente
```

**Lint**
```bash
make lint # roda o lint
make lint-fix # roda o lint e automaticamente corrige ofensas
```
