#!/bin/bash
# Installe les plugins Claude Code à chaque nouvelle session cloud
claude plugin marketplace add https://github.com/affaan-m/ECC || true
claude plugin install ecc@ecc --scope user --config hooks_enabled=true --config hook_profile=standard || true

claude plugin marketplace add Jakeschincariol/replica-skill || true
claude plugin install replica-skill@replica-skill --scope user || true

# Règles communes ECC
rm -rf /tmp/ecc-src && git clone --depth 1 https://github.com/affaan-m/ECC /tmp/ecc-src \
  && mkdir -p ~/.claude/rules/ecc && cp -R /tmp/ecc-src/rules/common ~/.claude/rules/ecc/ || true

# Skill find-skills (vercel-labs)
mkdir -p ~/.claude/skills/find-skills && curl -fsSL https://raw.githubusercontent.com/vercel-labs/skills/main/skills/find-skills/SKILL.md -o ~/.claude/skills/find-skills/SKILL.md || true
