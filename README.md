# Commercial Architecture Simulator

An Elixir/Phoenix simulator that models commercial/enterprise system topologies for architecture analysis and comparison.

## Stack
- Elixir `~> 1.7`
- Phoenix framework (`apps/simulator`)
- PostgreSQL (simulator dev DB)
- JS asset pipeline: webpack 4 + node-sass (legacy — see Known Issues)

## Layout
```
apps/
  simulator/        # Phoenix app (mix.exs, lib/, config/, priv/, test/)
    assets/         # JS/CSS build (webpack.config.js, package.json)
    config/         # dev/prod/test config
    lib/            # application + domain code
    priv/           # migrations + static
    test/           # ExUnit tests
```

## Run
```bash
cd apps/simulator
mix deps.get
mix phx.server
# or with assets: mix phx.server (assets build via webpack)
```

## Known Issues
- The JS asset pipeline uses `node-sass@4` + `webpack@4` (deprecated; carries known CVEs). A migration to `dart-sass` + `webpack@5` is recommended but not yet done — asset builds still work on compatible Node versions.
- Phoenix/Elixir versions are pinned to an older release line; plan an upgrade pass before production use.

## Notes
- This repo is the actual application; the root previously carried a stale `package-lock.json` decoy. Build from `apps/simulator`.
