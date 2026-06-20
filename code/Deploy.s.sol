// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/TokenizeArt.sol";

contract Deploy is Script {
    function run() external {
        // .env에서 불러온 개인키로 트랜잭션 서명 시작
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        // 컨트랙트 배포 — 메타데이터 URI를 생성자에 전달
        new TokenizeArt(
            "ipfs://bafkreibpuvb4ehyxxwtachnid5whw4nw3q3vhupewzj2mcflxo4oo4vd6i"
        );

        vm.stopBroadcast();
    }
}