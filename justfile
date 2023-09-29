setup:
    cd op-espresso-integration; nix develop -c bash -c "make"
    cd op-espresso-integration; nix develop -c bash -c "make cannon-prestate"
    cd espresso-polygon-zkevm-demo; nix develop -c bash -c "just npm i"
    cd espresso-polygon-zkevm-demo; nix develop -c bash -c "just hardhat compile"
    cd espresso-polygon-zkevm-demo; nix develop -c bash -c "just update-contract-bindings"
    cd espresso-polygon-zkevm-demo; nix develop -c bash -c "just update-zkevm-node-contract-bindings"

sequencer:
    cd espresso-sequencer; nix develop -c bash -c "just demo"

op:
    cd op-espresso-integration; nix develop -c bash -c "make devnet-up-espresso-demo"

zkevm:
    cd espresso-polygon-zkevm-demo; nix develop -c bash -c "just deploy-on-sequencer"

clean:
    cd espresso-sequencer; nix develop -c bash -c "just down --volumes"
    cd op-espresso-integration; nix develop -c bash -c "make demo-down"
    cd op-espresso-integration; nix develop -c bash -c "make devnet-clean"

really-clean:
    just clean
    cd op-espresso-integration; nix develop -c bash -c "make nuke"

