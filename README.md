# 📱 App_Trabalho

> Guia de referência rápida para colaboradores do projeto — comandos Git e Flutter essenciais.

---

## 📋 Índice

- [Configuração Inicial](#-configuração-inicial)
- [Fluxo de Commits Git](#-fluxo-de-commits-git)
- [Branches](#-branches)
- [Sincronização com o Repositório](#-sincronização-com-o-repositório)
- [Dependências Flutter](#-dependências-flutter)
- [Correção de Erros de Compilação](#-correção-de-erros-de-compilação)
- [Comandos Úteis Flutter](#-comandos-úteis-flutter)

---

## ⚙️ Configuração Inicial

Antes de começar, configure seu nome e e-mail no Git:

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seuemail@exemplo.com"
```

Clone o repositório na sua máquina:

```bash
git clone https://github.com/usuario/App_Trabalho.git
cd App_Trabalho
```

---

## ✅ Fluxo de Commits Git

Siga sempre esta sequência para enviar alterações:

### 1. Verificar o status dos arquivos modificados
```bash
git status
```

### 2. Adicionar arquivos para o commit

Adicionar todos os arquivos modificados:
```bash
git add .
```

Adicionar um arquivo específico:
```bash
git add caminho/do/arquivo.dart
```

### 3. Criar o commit com mensagem descritiva
```bash
git commit -m "feat: descrição clara do que foi feito"
```

> **Dica de boas práticas para mensagens de commit:**
> | Prefixo | Quando usar |
> |---------|-------------|
> | `feat:` | Nova funcionalidade |
> | `fix:` | Correção de bug |
> | `refactor:` | Refatoração de código |
> | `style:` | Ajustes de formatação/estilo |
> | `docs:` | Atualização de documentação |
> | `chore:` | Tarefas de manutenção |

### 4. Enviar para o repositório remoto
```bash
git push origin nome-da-branch
```

---

## 🌿 Branches

Criar e trocar para uma nova branch:
```bash
git checkout -b nome-da-branch
```

Trocar para uma branch existente:
```bash
git checkout nome-da-branch
```

Listar todas as branches:
```bash
git branch -a
```

Deletar uma branch local (após merge):
```bash
git branch -d nome-da-branch
```

---

## 🔄 Sincronização com o Repositório

Baixar as últimas alterações sem mesclar:
```bash
git fetch origin
```

Baixar e mesclar as alterações da branch remota:
```bash
git pull origin nome-da-branch
```

Mesclar uma branch na branch atual:
```bash
git merge nome-da-branch
```

> ⚠️ Sempre faça `git pull` antes de começar a trabalhar para evitar conflitos.

---

## 📦 Dependências Flutter

### Instalar todas as dependências do projeto
```bash
flutter pub get
```

### Atualizar todas as dependências
```bash
flutter pub upgrade
```

### Atualizar uma dependência específica
```bash
flutter pub upgrade nome_do_pacote
```

### Verificar dependências desatualizadas
```bash
flutter pub outdated
```

### Adicionar uma nova dependência
```bash
flutter pub add nome_do_pacote
```

### Remover uma dependência
```bash
flutter pub remove nome_do_pacote
```

---

## 🔧 Correção de Erros de Compilação

### Limpeza geral do projeto *(usar quando algo não compilar)*
```bash
flutter clean
flutter pub get
```

### Invalidar cache do Dart
```bash
dart pub cache repair
```

### Corrigir problemas automaticamente detectados pelo Flutter
```bash
flutter pub fix
```

### Verificar o ambiente Flutter e dependências
```bash
flutter doctor
```

### Verificar problemas com o ambiente com mais detalhes
```bash
flutter doctor -v
```

### Regenerar arquivos de build (Android)
```bash
cd android
./gradlew clean
cd ..
flutter run
```

### Atualizar o Flutter para a versão estável mais recente
```bash
flutter upgrade
```

### Resolver conflito de versões no `pubspec.lock`
```bash
flutter pub cache clean
flutter pub get
```

---

## 🚀 Comandos Úteis Flutter

### Rodar o app no dispositivo/emulador
```bash
flutter run
```

### Rodar em um dispositivo específico
```bash
flutter devices                  # lista dispositivos disponíveis
flutter run -d id_do_dispositivo
```

### Rodar em modo release
```bash
flutter run --release
```

### Analisar o código em busca de warnings e erros
```bash
flutter analyze
```

### Rodar os testes do projeto
```bash
flutter test
```

### Gerar APK de release
```bash
flutter build apk --release
```

### Gerar App Bundle (para Play Store)
```bash
flutter build appbundle --release
```

---

## 👥 Colaboradores

| Nome | GitHub |
|------|--------|
|Adrian|adriansouza05|
|Gabriel|Noluvvvv|

---

> 📌 *Mantenha este README atualizado conforme o projeto evoluir.*
