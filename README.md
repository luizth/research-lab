# research-lab

Machine and research workstation bootstrap &amp; Standard structure for research projects

## Bootstrap

Make everything executable and run it

```bash
cd ~/research-lab/infra

chmod +x bootstrap.sh
chmod +x scripts/*.sh

./bootstrap.sh
```

## Running experiments

```bash
./scripts/run.sh
```

## Repository structure

```txt
research-lab/
├── infra/
│   ├── bootstrap.sh
│   ├── scripts/
│   │   ├── install-python.sh
│   │   ├── install-claude.sh
│   │   └── install-herdr.sh
│   ├── config/
│   │   └── environment.example
│   ├── (not implemented) docker/nix
│   │   └── README.md
│
└── template/
    ├── pyproject.toml
    ├── src/
    ├── experiments/
    ├── configs/
    ├── tests/
    └── scripts/
```

