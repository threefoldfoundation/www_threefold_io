// Fetches website content via RMB and creates content directory, 
// from which the static website is generated

import { HTTPMessageBusClient } from "ts-rmb-http-client";

async function main() {
    const dstNodeId = 4;

    async function deploy() {
        try {
            const rmb = new HTTPMessageBusClient(414, "https://gridproxy.test.grid.tf", "https://graphql.test.grid.tf/graphql", "idle tourist member mail flame often invest ring region fashion cloth zebra"); // second url graph url
            const msg = rmb.prepare("zos.statistics.get", [dstNodeId], 0, 2);
            const retMsg = await rmb.send(msg, "{'test':'test'}");
            const result = await rmb.read(retMsg);
            console.log(`the read response is:`);
            console.log(result);
        } catch(err) {
            // fails at node/httpClient.js:142 when signing
            // or cannot verify signature at node/httpClient.js:167 when provided mnemonics
            console.log(err)
        }
    }

    deploy();

}

main();

/* Once content .md files can be fetched using RMB, this will auto build the content dir.

const fs = require("fs")
const initDir = 'content'
const initMDFile = 'content/_index.md'
const initValue = ``

if(!fs.existsSync(initDir)) {
  fs.mkdirSync(initDir)
}
if(!fs.existsSync(initMDFile)) {
  fs.writeFileSync(initMDFile, initValue)
}
*/