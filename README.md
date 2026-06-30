## ❄️ NixOS & Quickshell Configs

Uma configuração **NixOS** modular, minimalista e focada em performance, gerenciada via **Flakes** e **Home-Manager**. O grande destaque é uma shell própria, com diversos recursos e totalmente customizada utilizando o toolkit **Quickshell**.

> ⚠️ **AVISO:** O suporte a múltiplos monitores ainda não foi testado.

---

## 🚀 Filosofia do Projeto

Pensado para um fluxo de trabalho dinâmico, visualmente limpo e de baixo consumo de recursos, este repositório entrega um sistema pronto para uso produtivo. A arquitetura foi desenhada para que a adição ou remoção de novos usuários e compositores (Wayland) seja feita apenas declarando novos arquivos e alternando chaves booleanas.

### ✨ Conteúdo

* **Arquitetura Modular:** Crie e adicione novos perfis de usuários na pasta `users` e ative ou desative interfaces (ex: `Niri`, `Sway`, `Hyperland`...) declarando-as no arquivo `configuration.nix`.

* **Shell Própria (Quickshell):** Interface escrita em QML com suporte a notificações, controle de volume/brilho, menu de aplicativos, facilidade de troca de cores e fontes através do arquivo de registro (default: Gruvbox e Krypton) e lockscreen integrada via PAM.

* **Otimizações de Kernel:** Ajustes para uma inicialização mais rápida, como a desativação de watchdogs e kernel customizado.

---

## 📁 Estrutura do Repositório

A árvore do projeto separa a base do sistema e as configurações específicas de usuário:

```text
├── flake.nix                  # Entrada do ecossistema (Inputs/Outputs de pacotes)
├── quickshell/                # Todo o código relacionado a shell customizada
├── configurations/
│   └── configuration.nix      # Configuração global do sistema NixOS
└── users/
    └── mateus/                # Dotfiles e home-manager do usuário
        └── settings/          # Configurações pessoais de apps (Alacritty, Neovim, etc.)
```

## 🧩 Recursos Internos da Quickshell

A pasta quickshell/modules gerencia diversos recursos direto no painel:

    • Monitor de Bateria & Gerenciamento de Energia (Upower)

    • Controles de Volume e Microfone via PipeWire

    • Módulo Bluetooth & NetworkManager integrado

    • Controle de Mídia via MPRIS

    • Gerenciador de Área de Transferência (Clipboard)

    • Tela de Bloqueio customizada com prompt de senha integrado ao PAM
