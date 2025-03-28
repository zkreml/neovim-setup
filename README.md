# 📘 Neovim Setup – Osobní konfigurace a učení Neovimu

Tento repozitář bude sloužit jako
*můj osobní prostor pro učení a konfiguraci Neovimu.*  
Chci si zde postupně budovat přizpůsobené nastavení,  
sbírat důležité klávesové zkratky a tvořit návody,  
které mi pomohou efektivně pracovat s tímto editorem.

---

## 🎯 Cíle repozitáře

✅ Vytvořit přehlednou a funkční konfiguraci Neovimu  
✅ Mít podrobný návod na instalaci a použití  
✅ Sbírat užitečné klávesové zkratky a příkazy  
✅ Postupně rozšiřovat o nové funkce a vylepšení  

---

## 📌 Co bude součástí?

- **LazyVim konfigurace** (rozšířené nastavení Neovimu)  
- **Návod na instalaci a nastavení**  
- **Seznam užitečných klávesových zkratek**  

- **Automatizovaný skript pro rychlou instalaci**  

## Neovim

### Ovládání Neovimu - Základy

## 📖 Neovim & LazyVim Základy

## 🔹 1. Módy v Neovimu

| Mód           | Aktivace | Popis |
|--------------|---------|--------|
| **Normální** | `Esc` | Výchozí režim – pohyb, mazání, kopírování. |
| **Vkládací** | `i`, `a`, `o` | Režim pro psaní. |
| **Vizuální** | `v`, `V`, `Ctrl+v` | Výběr textu (řádkový, blokový). |
| **Příkazový** | `:` | Spouštění příkazů (např. `:wq`). |

---

## 🔹 2. Základní příkazy

| Příkaz | Popis |
|--------|-------|
| `:q` | Zavře Neovim. |
| `:w` | Uloží soubor. |
| `:wq` nebo `:x` | Uloží a zavře. |
| `:q!` | Zavře bez uložení. |
| `:e filename` | Otevře soubor. |
| `:sp filename` | Horizontální split. |
| `:vsp filename` | Vertikální split. |
| `:tabnew filename` | Otevře soubor v novém panelu. |

---

## 🔹 3. Pohyb v souboru

| Klávesa | Akce |
|---------|------|
| `h`, `j`, `k`, `l` | Pohyb kurzoru (←, ↓, ↑, →). |
| `w`, `b` | Skok po slovech (dopředu/dozadu). |
| `gg`, `G` | Skok na začátek/konec souboru. |
| `^`, `$` | Začátek/konec řádku. |

---

## 🔹 4. Instalace LazyVim

```sh
mv ~/.config/nvim ~/.config/nvim.backup  # Záloha starého nastavení
```

```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

``` bash
nvim  # První spuštění
```

## 📖 LazyVim – Základní klávesové zkratky

## 🖥️ Navigace & Správa souborů

| Klávesa         | Akce |
|----------------|------|
| `<leader> f f` | Otevře **Telescope** pro vyhledávání souborů. |
| `<leader> f r` | Otevře **nedávné soubory**. |
| `<leader> f g` | Hledání v souborech pomocí **grep**. |
| `<leader> e`   | Otevře **file explorer (nvim-tree)**. |

## 📑 Práce se soubory & Panely

| Klávesa         | Akce |
|----------------|------|
| `<leader> w`   | Uloží soubor (`:w`). |
| `<leader> q`   | Zavře aktuální okno. |
| `<leader> Q`   | Zavře všechny panely (`:qa`). |
| `<leader> c`   | Zavře aktuální **buffer**. |
| `<leader> b n` | Přepne na další buffer. |
| `<leader> b p` | Přepne na předchozí buffer. |

## 🔍 Pohyb v textu

| Klávesa         | Akce |
|----------------|------|
| `H`, `L`       | Skok na začátek/konec řádku. |
| `Ctrl + d`, `Ctrl + u` | Posun o půl stránky dolů/nahoru. |
| `n`, `N`       | Pohyb mezi výsledky hledání (`/text`). |
| `<leader> s s` | Hledání a nahrazování (`Spectre`). |

## 🛠️ Kódování & Formátování

| Klávesa         | Akce |
|----------------|------|
| `<leader> l a` | Otevře **LSP diagnostiku**. |
| `<leader> l r` | Přejmenuje proměnnou (`LSP rename`). |
| `<leader> l f` | Automaticky formátuje soubor. |
| `<leader> l d` | Zobrazí definici funkce. |
| `<leader> l h` | Zobrazí dokumentaci k funkci. |

## 🖊️ Editace textu

| Klávesa | Akce |
|---------|------|
| `J`     | Spojí řádky dohromady. |
| `x`     | Smaže znak pod kurzorem. |
| `dd`    | Smaže celý řádek. |
| `yy`    | Zkopíruje celý řádek. |
| `p`     | Vloží text **za** kurzor. |
| `P`     | Vloží text **před** kurzor. |

## 🖥️ Okna & Panely

| Klávesa         | Akce |
|----------------|------|
| `<leader> w s` | Horizontální split (`:split`). |
| `<leader> w v` | Vertikální split (`:vsplit`). |
| `Ctrl + h / j / k / l` | Přepínání mezi okny (← ↓ ↑ →). |
| `<leader> w q` | Zavře aktuální okno. |

## 📂 Git integrace

| Klávesa         | Akce |
|----------------|------|
| `<leader> g g` | Otevře **Lazygit** (pokud je nainstalovaný). |
| `<leader> g b` | Zobrazí **Git blame** pro aktuální řádek. |
| `<leader> g d` | Zobrazí změny oproti poslednímu commitu. |
| `<leader> g c` | Otevře seznam commitů. |

## 🎨 UI & Uživatelské rozhraní

| Klávesa         | Akce |
|----------------|------|
| `<leader> u i` | Přepínání mezi světlým/tmavým módem. |
| `<leader> u n` | Přepíná číslování řádků (absolutní/relativní). |
| `<leader> u w` | Přepíná zobrazení **neviditelných znaků**. |

## ✨ Další užitečné zkratky v NeoTree

| Klávesa | Akce                         |
|---------|------------------------------|
| `a`     | Přidat soubor nebo složku    |
| `d`     | Smazat soubor                |
| `r`     | Přejmenovat                  |
| `yy`    | Kopírovat                    |
| `p`     | Vložit                       |
| `x`     | Vyjmout                      |
| `TAB`   | Rozbalit/sbalit složku       |
| `q`     | Zavřít NeoTree               |

---

**📝 Poznámky:**

- **`<leader>` je mezerník** (výchozí nastavení v LazyVim).
- Pokud nějaká klávesová zkratka nefunguje, může být potřeba ji aktivovat v konfiguraci.
