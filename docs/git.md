# 🧰 LazyGit – Pohodlné Git rozhraní v terminálu

LazyGit je rychlý a přehledný nástroj pro práci s Gitem přímo z terminálu. Ideální pro práci v Neovimu nebo CLI prostředí.

---

## 🚀 Instalace

### Arch Linux

```bash
sudo pacman -S lazygit
```

### Konfigurace (volitelné)

```bash
mkdir -p ~/.config/lazygit
```

#### Prázdný soubor (výchozí chování):

```bash
touch ~/.config/lazygit/config.yml
```

#### Minimální `config.yml`:

```yaml
gui:
  theme:
    activeBorderColor: [blue, bold]
    inactiveBorderColor: [white]
```

---

## 💡 Spuštění LazyGit

Z terminálu:

```bash
lazygit
```

V Neovimu:

```vim
:terminal lazygit
```

S LazyVim zkratkou (pokud nastaveno):

```
<leader>gg
```

---

## 🖱️ Základní ovládání


| Klávesa | Akce                |
|---------|---------------------|
| ← / →   | Přepínání panelů    |
| ↑ / ↓   | Pohyb v seznamu     |
| Enter   | Detaily nebo akce   |
| c       | Commit              |
| p       | Pull               |
| f       | Fetch               |
| P       | Push              |
| q       | Zavření LazyGit     |
| h       | Nápověda            |

---

## 📦 Tipy

- LazyGit sleduje `.gitignore`
- Můžeš ho spustit i ve splitu v Neovimu: `:vsplit | terminal lazygit`
- Ideální pro použití ve tmavém terminálu

---

## 🔗 Odkazy

- [Repozitář LazyGit](https://github.com/jesseduffield/lazygit)
- [Oficiální dokumentace](https://github.com/jesseduffield/lazygit#configuration)
