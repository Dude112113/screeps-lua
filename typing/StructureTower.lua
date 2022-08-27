-- WARNING: THIS FILE IS GENERATED, DO NOT MODIFY.


--- <p><img align="right" alt="" src="./Screeps Documentation_files/tower.png"/></p> <p>Remotely attacks or heals creeps, or repairs structures. Can be targeted to any object in the room. However, its effectiveness linearly depends on the distance. Each action consumes energy.</p> <table class="table gameplay-info"><tbody><tr><td colspan="2"><strong>Controller level</strong></td></tr><tr><td>1-2</td><td>—</td></tr><tr><td>3-4</td><td>1 tower</td></tr><tr><td>5-6</td><td>2 towers</td></tr><tr><td>7</td><td>3 towers</td></tr><tr><td>8</td><td>6 towers</td></tr><tr><td><strong>Cost</strong></td><td>5,000</td></tr><tr><td><strong>Hits</strong></td><td>3,000</td></tr><tr><td><strong>Capacity</strong></td><td>1,000</td></tr><tr><td><strong>Energy per action</strong></td><td>10</td></tr><tr><td><strong>Attack effectiveness</strong></td><td>600 hits at range ≤5 to 150 hits at range ≥20</td></tr><tr><td><strong>Heal effectiveness</strong></td><td>400 hits at range ≤5 to 100 hits at range ≥20</td></tr><tr><td><strong>Repair effectiveness</strong></td><td>800 hits at range ≤5 to 200 hits at range ≥20</td></tr></tbody></table>
---@class StructureTower
--- <p>Applied effects, an array of objects with the following properties:</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>effect</code></td><td>number</td><td><p>Effect ID of the applied effect. Can be either natural effect ID or Power ID.</p></td></tr><tr><td><code>level</code><br/><em>optional</em></td><td>number </td><td><p>Power level of the applied effect. Absent if the effect is not a Power effect.</p></td></tr><tr><td><code>ticksRemaining</code></td><td>number</td><td><p>How many ticks will the effect last.</p></td></tr></tbody></table>
---@field effects any[]
--- <p>An object representing the position of this object in the room.</p>
---@field pos RoomPosition
--- <p>The link to the Room object. May be undefined in case if an object is a flag or a construction site and is placed in a room that is not visible to you.</p>
---@field room Room
--- <p>The current amount of hit points of the structure.</p>
---@field hits number
--- <p>The total amount of hit points of the structure.</p>
---@field hitsMax number
--- <p>A unique object identificator. You can use <a href="https://docs.screeps.com/api/#Game.getObjectById"><code>Game.getObjectById</code></a> method to retrieve an object instance by its <code>id</code>.</p>
---@field id string
--- <p>One of the <code>STRUCTURE_*</code> constants.</p>
---@field structureType string
--- <p>Whether this is your own structure.</p>
---@field my boolean
--- <div class="api-deprecated"><p>This property is deprecated and will be removed soon.</p></div> <p>An alias for <a href="https://docs.screeps.com/api/#StructureExtension.store"><code>.store[RESOURCE_ENERGY]</code></a>.</p>
---@field energy number
--- <div class="api-deprecated"><p>This property is deprecated and will be removed soon.</p></div> <p>An alias for <a href="https://docs.screeps.com/api/#Store.getCapacity"><code>.store.getCapacity(RESOURCE_ENERGY)</code></a>.</p>
---@field energyCapacity number
--- <p>A <a href="https://docs.screeps.com/api/#Store"><code>Store</code></a> object that contains cargo of this structure.</p>
---@field store Store
--- <p>Destroy this structure immediately.</p>
---@field destroy fun()
--- <p>Check whether this structure can be used. If room controller level is insufficient, then this method will return false, and the structure will be highlighted with red in the game.</p>
---@field isActive fun()
--- <p>Toggle auto notification when the structure is under attack. The notification will be sent to your account email. Turned on by default.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>enabled</code></td><td>boolean</td><td><p>Whether to enable notification or disable.</p></td></tr></tbody></table>
---@field notifyWhenAttacked fun(enabled:any)
--- <p>Remotely attack any creep, power creep or structure in the room.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Creep">Creep</a>, <a href="https://docs.screeps.com/api/#PowerCreep">PowerCreep</a>, <a href="https://docs.screeps.com/api/#Structure">Structure</a></td><td><p>The target creep.</p></td></tr></tbody></table>
---@field attack fun(target:any)
--- <p>Remotely heal any creep or power creep in the room.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Creep">Creep</a>, <a href="https://docs.screeps.com/api/#PowerCreep">PowerCreep</a></td><td><p>The target creep.</p></td></tr></tbody></table>
---@field heal fun(target:any)
--- <p>Remotely repair any structure in the room.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Structure">Structure</a></td><td><p>The target structure.</p></td></tr></tbody></table>
---@field repair fun(target:any)
---@field owner StructureTower.owner
local StructureTower = {}

--- <p>An object with the structure’s owner info containing the following properties:</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>username</code></td><td>string</td><td><p>The name of the owner user.</p></td></tr></tbody></table>
---@class StructureTower.owner
local owner = {}