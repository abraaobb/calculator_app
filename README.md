# Calculadora Flutter

Uma aplicação de calculadora desenvolvida em Flutter com interface moderna e funcionalidades básicas de cálculo.

## 📱 Sobre o Projeto

Este projeto é uma calculadora simples desenvolvida em Flutter que oferece operações matemáticas básicas com uma interface intuitiva e responsiva. O aplicativo foi desenvolvido seguindo as melhores práticas do Flutter e utiliza componentes personalizados para uma melhor organização do código.

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework de desenvolvimento multiplataforma
- **Dart**: Linguagem de programação
- **Material Design**: Design system do Google

## 📋 Pré-requisitos

Antes de executar o projeto, certifique-se de ter instalado:

### Ferramentas Essenciais
- **Flutter SDK**: Versão 3.35.7 ou superior
- **Dart SDK**: Versão 3.9.2 ou superior (incluído com Flutter)
- **Java Development Kit (JDK)**: Versão 17 ou superior
- **Android SDK**: Para desenvolvimento Android
- **FVM (Flutter Version Management)**: Para gerenciamento de versões do Flutter (recomendado)

### Ferramentas de Build
- **Gradle**: Versão 8.7
- **Android Gradle Plugin**: Versão 8.6.0
- **Kotlin**: Versão 2.1.0

## 📦 Dependências do Projeto

### Dependências Principais
```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  auto_size_text: ^3.0.0
```

### Dependências de Desenvolvimento
```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^4.0.0
```

### Versões Específicas Utilizadas
- **Flutter**: 3.35.7 (stable)
- **Dart**: 3.9.2
- **cupertino_icons**: 1.0.8
- **auto_size_text**: 3.0.0
- **flutter_lints**: 4.0.0

## 🚀 Como Executar o Projeto

### 1. Clone o Repositório
```bash
git clone <url-do-repositorio>
cd calculator_app
```

### 2. Instale o FVM (Recomendado)
```bash
# Instalar FVM globalmente
dart pub global activate fvm

# Instalar a versão específica do Flutter
fvm install 3.35.7

# Usar a versão específica no projeto
fvm use 3.35.7
```

### 3. Instale as Dependências
```bash
# Se estiver usando FVM
fvm flutter pub get

# Ou se estiver usando Flutter diretamente
flutter pub get
```

### 4. Verifique a Configuração
```bash
# Verificar se tudo está configurado corretamente
fvm flutter doctor
```

### 5. Execute o Projeto

#### Para Android
```bash
# Conectar um dispositivo Android ou iniciar um emulador
fvm flutter run

# Ou especificar o dispositivo
fvm flutter run -d <device-id>
```

#### Para Build de Produção
```bash
# Build APK para Android
fvm flutter build apk --release

# Build Bundle para Android (recomendado para Play Store)
fvm flutter build appbundle --release
```

## 📱 Plataformas Suportadas

- ✅ **Android** (API 21+)
- ✅ **iOS** (iOS 11.0+)
- ✅ **Web**
- ✅ **Linux Desktop**
- ✅ **macOS Desktop**
- ✅ **Windows Desktop**

## 🏗️ Estrutura do Projeto

```
lib/
├── components/          # Componentes reutilizáveis
│   ├── button.dart     # Botão personalizado
│   ├── button_row.dart # Linha de botões
│   ├── display.dart    # Display da calculadora
│   └── keyboard.dart   # Teclado numérico
├── models/             # Modelos de dados
│   └── memory.dart     # Lógica de cálculo
├── screens/            # Telas da aplicação
│   └── calculator.dart # Tela principal
└── main.dart          # Ponto de entrada
```

## 🔧 Configurações de Build

### Android
- **compileSdk**: Definido pelo Flutter
- **minSdk**: Definido pelo Flutter
- **targetSdk**: Definido pelo Flutter
- **Java Version**: 17
- **Kotlin Version**: 2.1.0

### Gradle
- **Gradle Version**: 8.7
- **Android Gradle Plugin**: 8.6.0

## 🐛 Solução de Problemas

### Erro de Build Gradle
Se encontrar erros relacionados ao Gradle, execute:
```bash
# Limpar cache do Flutter
fvm flutter clean

# Limpar cache do Gradle
rm -rf android/.gradle android/build android/app/build

# Reinstalar dependências
fvm flutter pub get
```

### Problemas de Conectividade
Se houver problemas de rede durante o build:
```bash
# Verificar conectividade
fvm flutter doctor

# Tentar novamente após resolver problemas de rede
fvm flutter run
```

### Versões Incompatíveis
Se encontrar avisos sobre versões desatualizadas:
1. Atualize as versões no arquivo `android/settings.gradle`
2. Atualize a versão do Gradle em `android/gradle/wrapper/gradle-wrapper.properties`
3. Execute `fvm flutter clean` e `fvm flutter pub get`

## 📝 Comandos Úteis

```bash
# Hot reload durante desenvolvimento
r

# Hot restart
R

# Listar comandos disponíveis
h

# Detachar do dispositivo (manter app rodando)
d

# Limpar console
c

# Sair
q
```

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 📞 Suporte

Se você encontrar algum problema ou tiver dúvidas:

1. Verifique se todas as dependências estão instaladas corretamente
2. Execute `fvm flutter doctor` para diagnosticar problemas
3. Consulte a [documentação oficial do Flutter](https://docs.flutter.dev/)
4. Abra uma issue neste repositório

---

**Desenvolvido com ❤️ usando Flutter**