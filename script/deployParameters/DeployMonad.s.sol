// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/types/RouterParameters.sol';

contract DeployMonad is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0x000000000022D473030F116dDEE9F6B43aC78BA3,
            weth9: 0x3bd359C1119dA7Da1D913D1C4D2B7c461115433A,
            v2Factory: 0xCe104732685B9D7b2F07A09d828F6b19786cdA32,
            v3Factory: 0x30Db57A29ACf3641dfc3885AF2e5f1F5A408D9CB,
            pairInitCodeHash: 0x1305842295bb388975eec146e164811bee4ac15606baa6205d5749e933f26762,
            poolInitCodeHash: 0x574937a78cfdd44f299af1e468b13c9405677431f9e9d1eb8763760416e3bd73,
            v4PoolManager: address(0),
            v3NFTPositionManager: 0x16eb676BbBe51EB6E4E9DDF57BfBEe0537aA4d7B,
            v4PositionManager: address(0)
        });

        unsupported = address(0);
    }
}
