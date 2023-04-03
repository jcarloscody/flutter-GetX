## Pilares

- Desempenho
- Produtividade
  - sintaxe fácil
  - Adiciona recursos como gerencia de estado, gerencia de dependencias, rotas  e outros
- Organização
  - a ideia do getx é dividir as responsabilidades, desacoplando tudo da sua view. Ex: para fazer ID em flutter você teria que adicionar essas dependencias dentro da sua árvore de widget, usando o INHERITEDWIDGET. Já com o getx traz um motor de ID totalmente desacoplado da sua arvore de widget
    - podendo assim deixar oque é de tela na tela e suas regras de negocio isoladas.

### Gerência de Estado
- não usa stream ou changeNotifier.
- para melhorar o tempo de resposta e reduzir o consumo de RAM, criamos o GETSTREAM, que é uma solução de baixa latência que entrega  muito desempenho, com baixo custo operacional. ele não usa stream pura e simples, pq ele implementou uma stream.
- Reatividade: tudo é reativo. nada depende de geradores de codigo, aumentando a produtividade
  - controle granular: 
  - nao precisa de StreamBuilder
  - nao precisa criar uma classe para cada estado
### Gerência de Rotas
- navegacao sem contexto.
- navegação simples: Get.to(pagina())
- navegacoa nomeada: Get.toNamed("")
- Middlewares: possibilidades de colocar açoes antes de carregar a tela
- SnackBar, Dialogs, BottomSheat sem contexto 

### Gerência de dependencias
- pode adicionar instancia  com uma linha de codigo. Get.put
- fabrica de instancia
- pode ser usado com qq state manager
- se integrado com statemanager do getx traz o contexto de ciclo de vida (onInit, OnReady, onClose
- controle de memoria automatico: descartes de instancias