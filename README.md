# claude-settings.json

Configuration Claude Code partagée : plugins **ECC** (`ecc@ecc`) et **Replica** (`replica-skill@replica-skill`).

## Utilisation

- **Dans un projet** : copiez `.claude/settings.json` dans le dossier `.claude/` du projet.
  Claude Code proposera d'installer les deux plugins à l'ouverture du projet.
- **Pour tout votre compte (votre machine)** : fusionnez le contenu de `.claude/settings.json`
  dans `~/.claude/settings.json`.
- **Environnement cloud Claude Code** : collez le contenu de `setup-script.sh` dans
  le champ *Setup script* de l'environnement. Il installe les plugins et les règles
  communes ECC à chaque nouvelle session.
