
# Smart Power Controller - Sistema Web e IoT
**Avaliação Extensionista PBL - Engenharia de Software**

O **Smart Power Controller** é um ecossistema projetado para o monitoramento, análise de métricas e gerenciamento remoto de consumo energético de eletrodomésticos via hardware IoT.

## Engenharia e Métodos Ágeis Aplicados
- **Framework Scrum & XP (Extreme Programming):** Sprints semanais com foco em refatoração contínua para diminuir *Code-smells* estruturais.
- **Padrão Arquitetural:** MVC (Model-View-Controller) isolando regras de negócio da API, interface cliente e firmware.
- **Abordagem de Testes:** Práticas de TDD (Test-Driven Development) nas funções críticas de cálculo de telemetria.

---

## Levantamento e Especificação de Requisitos

### Requisitos Funcionais (RF)
| ID | Nome | Descrição |
|----|------|-----------|
| RF001 | Controle de Dispositivos | Cadastro de hardware IoT com geração automática de token Bearer exclusivo. |
| RF002 | Monitoramento de Métricas | Recebimento periódico e armazenamento de telemetrias (potência, corrente). |
| RF003 | Comandos e Agendamentos | Envio assíncrono de comandos remotos de ligar/desligar com agendamento de data/hora. |
| RF004 | Sistema de Notificações | Alertas ao usuário caso o consumo ultrapasse o limite ou o dispositivo fique offline. |
| RF005 | Gestão de Usuários | Cadastro, autenticação e isolamento de dados por conta. |

### Requisitos Não Funcionais (RNF)
| ID | Nome | Descrição |
|----|------|-----------|
| RNF001 | Segurança de Comunicação | Tráfego de dados baseado em protocolo HTTPS e chaves de segurança ponta a ponta. |
| RNF002 | Desempenho (API) | Tempo máximo de resposta de endpoints inferior a 500ms sob estresse comum. |
| RNF003 | Confiabilidade (Offline) | Armazenamento temporário em buffer local pelo firmware em caso de queda de rede. |

---

## Design de Interface e Protótipo no Figma


## Equipe e Desenvolvimento
