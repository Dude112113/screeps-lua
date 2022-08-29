-- WARNING: THIS FILE IS GENERATED, DO NOT MODIFY.


--- <p><img align="right" alt="" src="./Screeps Documentation_files/road_plain.png"/></p> <p>Decreases movement cost to 1. Using roads allows creating creeps with less <code>MOVE</code> body parts. You can also build roads on top of natural terrain walls which are otherwise impassable.</p> <table class="table gameplay-info"><tbody><tr><td><strong>Controller level</strong></td><td>Any (including neutral rooms)</td></tr><tr><td><strong>Cost</strong></td><td><ul><li>300 on plain land</li><li>1,500 on swamp</li><li>45,000 on walls</li></ul></td></tr><tr><td><strong>Hits</strong></td><td><ul><li>5,000 on plain land</li><li>25,000 on swamp</li><li>750,000 on walls</li></ul></td></tr><tr><td><strong>Decay</strong></td><td><ul><li>Loses 100 hits every 1,000 ticks on plain land</li><li>Loses 500 hits every 1,000 ticks on swamp</li><li>Loses 15,000 hits every 1,000 ticks on walls</li></ul>            Note: every creep step decreases the decay timer for 1 tick per each creep body part</td></tr></tbody></table>
---@class StructureRoad
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
--- <p>The amount of game ticks when this road will lose some hit points.</p>
---@field ticksToDecay number
--- <h2 class="api-property api-property--method api-property--inherited" id="StructureRoad.destroy"><div class="api-property__inherited">Inherited from <a href="https://docs.screeps.com/api/#Structure">Structure</a></div><span class="api-property__name">destroy</span><span class="api-property__args">()</span><div class="api-property__cpu api-property__cpu--A" title="This method is an action that changes game state. It has additional 0.2 CPU cost added to its natural cost in case if OK code is returned."></div></h2> <p>Destroy this structure immediately.</p>
---@field destroy fun(self:StructureRoad)
--- <h2 class="api-property api-property--method api-property--inherited" id="StructureRoad.isActive"><div class="api-property__inherited">Inherited from <a href="https://docs.screeps.com/api/#Structure">Structure</a></div><span class="api-property__name">isActive</span><span class="api-property__args">()</span><div class="api-property__cpu api-property__cpu--2" title="This method has medium CPU cost."></div></h2> <p>Check whether this structure can be used. If room controller level is insufficient, then this method will return false, and the structure will be highlighted with red in the game.</p>
---@field isActive fun(self:StructureRoad)
--- <h2 class="api-property api-property--method api-property--inherited" id="StructureRoad.notifyWhenAttacked"><div class="api-property__inherited">Inherited from <a href="https://docs.screeps.com/api/#Structure">Structure</a></div><span class="api-property__name">notifyWhenAttacked</span><span class="api-property__args">(enabled)</span><div class="api-property__cpu api-property__cpu--A" title="This method is an action that changes game state. It has additional 0.2 CPU cost added to its natural cost in case if OK code is returned."></div></h2> <p>Toggle auto notification when the structure is under attack. The notification will be sent to your account email. Turned on by default.</p>
---@field notifyWhenAttacked fun(self:StructureRoad,enabled:boolean)
local StructureRoad = {}
