-- WARNING: THIS FILE IS GENERATED, DO NOT MODIFY.


--- <p><code>InterShardMemory</code> object provides an interface for communicating between shards. Your script is executed separatedly on each shard, and their <a href="https://docs.screeps.com/api/#Memory"><code>Memory</code></a> objects are isolated from each other. In order to pass messages and data between shards, you need to use <code>InterShardMemory</code> instead.</p> <p>Every shard can have its own 100 KB of data in string format that can be accessed by all other shards. A shard can write only to its own data, other shards' data is read-only.</p> <p>This data has nothing to do with <code>Memory</code> contents, it's a separate data container.      </p>
---@class InterShardMemory
--- ![0](imgs/cpu_0.png) - Insignificant CPU cost
--- <p>Returns the string contents of the current shard's data. </p>
---@field getLocal fun(self:InterShardMemory)
--- ![0](imgs/cpu_0.png) - Insignificant CPU cost
--- <p>Replace the current shard's data with the new value.</p>
---@field setLocal fun(self:InterShardMemory,value:string)
--- ![0](imgs/cpu_0.png) - Insignificant CPU cost
--- <p>Returns the string contents of another shard's data.</p>
---@field getRemote fun(self:InterShardMemory,shard:string)
local InterShardMemory = {}
