import subprocess
from pathlib import Path


class ScriptRunner:
    def __init__(self) -> None:
        self.base_dir = Path(__file__).resolve().parent.parent.parent
        self.script_dir = self.base_dir / "scripts"

    def set_gtk_themes(
        self, theme: str, icon: str, cursor: str, color_scheme: str
    ) -> None:
        script_path = self.script_dir / "set_gtk_themes.sh"
        subprocess.run([str(script_path), theme, icon, cursor, color_scheme])

    def set_kitty(self, theme: str) -> None:
        script_path = self.script_dir / "set_kitty.sh"
        subprocess.run([str(script_path), theme])

    def set_qt_theme(self, theme: str) -> None:
        script_path = self.script_dir / "set_qt_theme.sh"
        subprocess.run([str(script_path), theme])
