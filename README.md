# espresso-rollup-demo
This repository facillitates integration demos for Espresso Sequencer. The following rollups are currently supported:
- Optimism
- Polygon ZKEVM

We provide a simple set of commands for launching Espresso Sequencer and supported rollup demos. For more detailed information about each integration, take a look at the rollup repositories listed above. 

## Prequisites 
- Obtain code: ```git clone --recursive git@github.com:EspressoSystems/espresso-rollup-demo```.
- Make sure nix is installed.
- Activate the environment with nix-shell, or nix develop, or direnv allow if using direnv.

## Run
```
just setup # Prepares rollups by configuring all necessary dependencies (i.e. contract compilation)
just sequencer # Launch Espresso Sequencer
just op # Launch OP stack rollup
just zkevm # Launch Polygon ZKEVM rollup
just clean # Shutdown Espresso sequencer and all rollups
just really-clean # Revert repository to a pre-setup state. Only use as a last resort. 
```

To interact with specific rollup demos in interesting ways, refer to that rollup integration's readme. 
