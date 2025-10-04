.PHONY: lint lint-md lint-yaml check

lint: lint-md lint-yaml

lint-md:
	npx --yes markdownlint-cli2 "**/*.md"

lint-yaml:
	python - <<'PY'
import glob, yaml, sys
ok=True
for f in glob.glob('**/*.y*ml', recursive=True):
    try:
        yaml.safe_load(open(f, 'r', encoding='utf-8'))
        print('OK', f)
    except Exception as e:
        print('ERR', f, e)
        ok=False
sys.exit(0 if ok else 1)
PY

check: lint
