# Windows 11
## Theme
**Alacritty config location**
- `%APPDATA%\alacritty\alacritty.toml` if `alacritty.toml` does not exist create it
    - [Themes Source](https://github.com/alacritty/alacritty-theme)
- Copy all *theme* folder into the *alacritty config location*
- Copy the content of the desired *theme* and paste it at the buttom of `alacritty.toml`
```bash
# or you can run the following one-liner
echo ./themes/{theme}.toml >> ./alacritty.toml
```
