pragma circom 2.0.0;

include "node_modules/circomlib/circuits/poseidon.circom";

template PoseidonHasher() {
    signal input in;
    signal input hash;

    component poseidon = Poseidon(1);
    poseidon.inputs[0] <== in;
    hash === poseidon.out;
}

component main {public [hash]} = PoseidonHasher();