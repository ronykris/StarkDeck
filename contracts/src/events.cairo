pub mod game_events {
    use starknet::ContractAddress;

    pub mod game_phase {
        #[derive(Drop, Serde, Copy, PartialEq, starknet::Event, starknet::Store)]
        pub struct PreFlop {}

        #[derive(Drop, Serde, Copy, PartialEq, starknet::Event, starknet::Store)]
        pub struct Flop {}

        #[derive(Drop, Serde, Copy, PartialEq, starknet::Event, starknet::Store)]
        pub struct Turn {}

        #[derive(Drop, Serde, Copy, PartialEq, starknet::Event, starknet::Store)]
        pub struct River {}

        #[derive(Drop, Serde, Copy, PartialEq, starknet::Event, starknet::Store)]
        pub struct Showdown {}
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct GameStarted {}

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct PlayerLeft {
        #[key]
        pub player: ContractAddress
    }


    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct PlayerJoined {
        #[key]
        pub player: ContractAddress
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct PlayerFolded {
        #[key]
        pub player: ContractAddress
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct Shuffled {}

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct HandDealt {}

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct PlayerCommitted {
        #[key]
        pub player: ContractAddress
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct PotUpdated {
        pub amount: u256
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct PlayerRevealed {
        #[key]
        pub address: ContractAddress,
        pub hand: ByteArray
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct BetPlaced {
        #[key]
        pub address: ContractAddress,
        pub amount: u256
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct PotDistributed {
        pub pot_amount: u256,
        pub winners: Array<ContractAddress>,
        pub num_winners: u256
    }
}