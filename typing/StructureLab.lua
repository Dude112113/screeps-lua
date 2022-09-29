-- WARNING: THIS FILE IS GENERATED, DO NOT MODIFY.


--- <p><img align="right" alt="" src="./Screeps Documentation_files/lab.png"/></p> <p>Produces mineral compounds from base minerals, boosts and unboosts creeps. Learn more about minerals from <a href="https://docs.screeps.com/resources.html">this article</a>.</p> <table class="table gameplay-info"><tbody><tr><td colspan="2"><strong>Controller level</strong></td></tr><tr><td>1-5</td><td>—</td></tr><tr><td>6</td><td>3 labs</td></tr><tr><td>7</td><td>6 labs</td></tr><tr><td>8</td><td>10 labs</td></tr><tr><td><strong>Cost</strong></td><td>50,000</td></tr><tr><td><strong>Hits</strong></td><td>500</td></tr><tr><td><strong>Capacity</strong></td><td>3000 mineral units, 2000 energy units</td></tr><tr><td><strong>Produce</strong></td><td>5 mineral compound units per reaction</td></tr><tr><td><strong>Reaction cooldown</strong></td><td>Depends on the reaction (see <a href="https://docs.screeps.com/resources.html">this article</a>)</td></tr><tr><td><strong>Distance to input labs</strong></td><td>2 squares</td></tr><tr><td><strong>Boost cost</strong></td><td>30 mineral units, 20 energy units per body part</td></tr></tbody></table>
---@class StructureLab
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
--- <p>The amount of game ticks the lab has to wait until the next reaction or unboost operation is possible.</p>
---@field cooldown number
--- <div class="api-deprecated"><p>This property is deprecated and will be removed soon.</p></div> <p>An alias for <a href="https://docs.screeps.com/api/#StructureExtension.store"><code>.store[RESOURCE_ENERGY]</code></a>.</p>
---@deprecated
---@field energy number
--- <div class="api-deprecated"><p>This property is deprecated and will be removed soon.</p></div> <p>An alias for <a href="https://docs.screeps.com/api/#Store.getCapacity"><code>.store.getCapacity(RESOURCE_ENERGY)</code></a>.</p>
---@deprecated
---@field energyCapacity number
--- <div class="api-deprecated"><p>This property is deprecated and will be removed soon.</p></div> <p>An alias for <a href="https://docs.screeps.com/api/#StructureExtension.store"><code>lab.store[lab.mineralType]</code></a>.</p>
---@deprecated
---@field mineralAmount number
--- <p>The type of minerals containing in the lab. Labs can contain only one mineral type at the same time.</p>
---@field mineralType string
--- <div class="api-deprecated"><p>This property is deprecated and will be removed soon.</p></div> <p>An alias for <a href="https://docs.screeps.com/api/#Store.getCapacity"><code>lab.store.getCapacity(lab.mineralType || yourMineral)</code></a>.</p>
---@deprecated
---@field mineralCapacity number
--- <p>A <a href="https://docs.screeps.com/api/#Store"><code>Store</code></a> object that contains cargo of this structure.</p>
---@field store Store
--- ![A](imgs/cpu_A.png) - Additional 0.2 CPU if OK is returned.
--- <p>Destroy this structure immediately.</p>
---@field destroy fun(self:StructureLab):(OK|ERR_NOT_OWNER|ERR_BUSY)
--- ![2](imgs/cpu_2.png) - Medium CPU cost.
--- <p>Check whether this structure can be used. If room controller level is insufficient, then this method will return false, and the structure will be highlighted with red in the game.</p>
---@field isActive fun(self:StructureLab)
--- ![A](imgs/cpu_A.png) - Additional 0.2 CPU if OK is returned.
--- <p>Toggle auto notification when the structure is under attack. The notification will be sent to your account email. Turned on by default.</p>
---@field notifyWhenAttacked fun(self:StructureLab,enabled:boolean):(OK|ERR_NOT_OWNER|ERR_INVALID_ARGS)
--- ![A](imgs/cpu_A.png) - Additional 0.2 CPU if OK is returned.
--- <p>Boosts creep body parts using the containing mineral compound. The creep has to be at adjacent square to the lab. </p>
---@field boostCreep fun(self:StructureLab,creep:Creep,bodyPartsCount:any?):(OK|ERR_NOT_OWNER|ERR_NOT_FOUND|ERR_NOT_ENOUGH_RESOURCES|ERR_INVALID_TARGET|ERR_NOT_IN_RANGE|ERR_RCL_NOT_ENOUGH)
--- ![A](imgs/cpu_A.png) - Additional 0.2 CPU if OK is returned.
--- <p>Breaks mineral compounds back into reagents. The same output labs can be used by many source labs.</p>
---@field reverseReaction fun(self:StructureLab,lab1:StructureLab,lab2:StructureLab):(OK|ERR_NOT_OWNER|ERR_NOT_ENOUGH_RESOURCES|ERR_INVALID_TARGET|ERR_FULL|ERR_NOT_IN_RANGE|ERR_INVALID_ARGS|ERR_TIRED|ERR_RCL_NOT_ENOUGH)
--- ![A](imgs/cpu_A.png) - Additional 0.2 CPU if OK is returned.
--- <p>Produce mineral compounds using reagents from two other labs. The same input labs can be used by many output labs.</p>
---@field runReaction fun(self:StructureLab,lab1:StructureLab,lab2:StructureLab):(OK|ERR_NOT_OWNER|ERR_NOT_ENOUGH_RESOURCES|ERR_INVALID_TARGET|ERR_FULL|ERR_NOT_IN_RANGE|ERR_INVALID_ARGS|ERR_TIRED|ERR_RCL_NOT_ENOUGH)
--- ![A](imgs/cpu_A.png) - Additional 0.2 CPU if OK is returned.
--- <p>Immediately remove boosts from the creep and drop 50% of the mineral compounds used to boost it onto the ground regardless of the creep's remaining time to live. The creep has to be at adjacent square to the lab. Unboosting requires cooldown time equal to the total sum of the reactions needed to produce all the compounds applied to the creep.</p>
---@field unboostCreep fun(self:StructureLab,creep:Creep):(OK|ERR_NOT_OWNER|ERR_NOT_FOUND|ERR_INVALID_TARGET|ERR_NOT_IN_RANGE|ERR_TIRED|ERR_RCL_NOT_ENOUGH)
---@field owner StructureLab.owner
local StructureLab = {}

--- <p>An object with the structure’s owner info containing the following properties:</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>username</code></td><td>string</td><td><p>The name of the owner user.</p></td></tr></tbody></table>
---@class StructureLab.owner
local owner = {}
