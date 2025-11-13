#!/usr/bin/env python3

import subprocess
from pathlib import Path


class ThemeSwitcher:
    def __init__(self) -> None:
        self.base_dir = Path(__file__).resolve().parent
        self.script_dir = self.base_dir / "scripts"

    def run_script(self, script_name: str, *args) -> bool:
        script_path = self.script_dir / script_name

        try:
            subprocess.run(
                [str(script_path), *args], check=True, capture_output=True, text=True
            )
            return True

        except subprocess.CalledProcessError as e:
            print(f"{script_name} failed: {e.stderr.strip()}")
            return False
