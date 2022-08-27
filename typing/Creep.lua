-- WARNING: THIS FILE IS GENERATED, DO NOT MODIFY.


--- <p>Creeps are your units. Creeps can move, harvest energy, construct structures, attack another creeps, and perform other actions. Each creep consists of up to 50 body parts with the following possible types:<img alt="" src="./Screeps Documentation_files/bodyparts.png"/> </p> <table class="table gameplay-info"><tbody><tr><th style="width: 20%;">Body part</th><th style="width: 8%;">Build cost</th><th>Effect per one body part</th></tr><tr><td><code data-darkreader-inline-bgcolor="" data-darkreader-inline-bgimage="" data-darkreader-inline-color="" style="background: rgb(51, 51, 51); color: rgb(169, 183, 198); --darkreader-inline-bgimage: initial; --darkreader-inline-bgcolor:#262a2b; --darkreader-inline-color:#bbb5ac;">MOVE</code></td><td>50</td><td>Decreases fatigue by 2 points per tick.</td></tr><tr><td><code data-darkreader-inline-bgcolor="" data-darkreader-inline-bgimage="" data-darkreader-inline-color="" style="background: rgb(51, 51, 51); color: rgb(255, 229, 109); --darkreader-inline-bgimage: initial; --darkreader-inline-bgcolor:#262a2b; --darkreader-inline-color:#ffe466;">WORK</code></td><td>100</td><td><p>Harvests 2 energy units from a source per tick.</p><p>Harvests 1 resource unit from a mineral or a deposit per tick.</p><p>Builds a structure for 5 energy units per tick.</p><p>Repairs a structure for 100 hits per tick consuming 1 energy unit per tick.</p><p>Dismantles a structure for 50 hits per tick returning 0.25 energy unit per tick.</p><p>Upgrades a controller for 1 energy unit per tick.</p></td></tr><tr><td><code data-darkreader-inline-bgcolor="" data-darkreader-inline-bgimage="" data-darkreader-inline-color="" style="background: rgb(51, 51, 51); color: rgb(119, 119, 119); --darkreader-inline-bgimage: initial; --darkreader-inline-bgcolor:#262a2b; --darkreader-inline-color:#9d9488;">CARRY</code></td><td>50</td><td>Can contain up to 50 resource units.</td></tr><tr><td><code data-darkreader-inline-bgcolor="" data-darkreader-inline-bgimage="" data-darkreader-inline-color="" style="background: rgb(51, 51, 51); color: rgb(249, 56, 66); --darkreader-inline-bgimage: initial; --darkreader-inline-bgcolor:#262a2b; --darkreader-inline-color:#f9424c;">ATTACK</code></td><td>80</td><td>Attacks another creep/structure with 30 hits per tick in a short-ranged attack.</td></tr><tr><td><code data-darkreader-inline-bgcolor="" data-darkreader-inline-bgimage="" data-darkreader-inline-color="" style="background: rgb(51, 51, 51); color: rgb(93, 128, 178); --darkreader-inline-bgimage: initial; --darkreader-inline-bgcolor:#262a2b; --darkreader-inline-color:#6b93b9;">RANGED_ATTACK</code></td><td>150</td><td><p>Attacks another single creep/structure with 10 hits per tick in a long-range attack up to 3 squares long.</p><p>Attacks all hostile creeps/structures within 3 squares range with 1-4-10 hits (depending on the range).</p></td></tr><tr><td><code data-darkreader-inline-bgcolor="" data-darkreader-inline-bgimage="" data-darkreader-inline-color="" style="background: rgb(51, 51, 51); color: rgb(101, 253, 98); --darkreader-inline-bgimage: initial; --darkreader-inline-bgcolor:#262a2b; --darkreader-inline-color:#62fd5f;">HEAL</code></td><td>250</td><td>Heals self or another creep restoring 12 hits per tick in short range or 4 hits per tick at a distance.</td></tr><tr><td><code data-darkreader-inline-bgcolor="" data-darkreader-inline-bgimage="" data-darkreader-inline-color="" style="background: rgb(51, 51, 51); color: rgb(185, 156, 251); --darkreader-inline-bgimage: initial; --darkreader-inline-bgcolor:#262a2b; --darkreader-inline-color:#ab89fa;">CLAIM</code></td><td>600</td><td><p>Claims a neutral room controller.</p><p>Reserves a neutral room controller for 1 tick per body part.</p><p>Attacks a hostile room controller downgrading its timer by 300 ticks per body parts.</p><p>Attacks a neutral room controller reservation timer by 1 tick per body parts.</p><p>A creep with this body part will have a reduced life time of 600 ticks and cannot be renewed.</p></td></tr><tr><td><code data-darkreader-inline-bgcolor="" data-darkreader-inline-bgimage="" data-darkreader-inline-color="" style="background: rgb(51, 51, 51); color: rgb(255, 255, 255); --darkreader-inline-bgimage: initial; --darkreader-inline-bgcolor:#262a2b; --darkreader-inline-color:#e8e6e3;">TOUGH</code></td><td>10</td><td>No effect, just additional hit points to the creep's body. Can be boosted to resist damage.</td></tr></tbody></table>
---@class Creep
--- <p>Applied effects, an array of objects with the following properties:</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>effect</code></td><td>number</td><td><p>Effect ID of the applied effect. Can be either natural effect ID or Power ID.</p></td></tr><tr><td><code>level</code><br/><em>optional</em></td><td>number </td><td><p>Power level of the applied effect. Absent if the effect is not a Power effect.</p></td></tr><tr><td><code>ticksRemaining</code></td><td>number</td><td><p>How many ticks will the effect last.</p></td></tr></tbody></table>
---@field effects any[]
--- <p>An object representing the position of this object in the room.</p>
---@field pos RoomPosition
--- <p>The link to the Room object. May be undefined in case if an object is a flag or a construction site and is placed in a room that is not visible to you.</p>
---@field room Room
--- <p>An array describing the creep’s body. Each element contains the following properties:</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>boost</code></td><td>string | undefined</td><td><p>If the body part is boosted, this property specifies the mineral type which is used for boosting. One of the <code>RESOURCE_*</code> constants. <a href="https://docs.screeps.com/resources.html">Learn more</a></p></td></tr><tr><td><code>type</code></td><td>string</td><td><p>One of the body part types constants.</p></td></tr><tr><td><code>hits</code></td><td>number</td><td><p>The remaining amount of hit points of this body part.</p></td></tr></tbody></table>
---@field body any[]
--- <div class="api-deprecated"><p>This property is deprecated and will be removed soon.</p></div> <p>An alias for <a href="https://docs.screeps.com/api/#Store.getCapacity"><code>Creep.store.getCapacity()</code></a>.</p>
---@field carryCapacity number
--- <p>The movement fatigue indicator. If it is greater than zero, the creep cannot move.</p>
---@field fatigue number
--- <p>The current amount of hit points of the creep.</p>
---@field hits number
--- <p>The maximum amount of hit points of the creep.</p>
---@field hitsMax number
--- <p>A unique object identificator. You can use <a href="https://docs.screeps.com/api/#Game.getObjectById"><code>Game.getObjectById</code></a> method to retrieve an object instance by its <code>id</code>.</p>
---@field id string
--- <p>A shorthand to <code>Memory.creeps[creep.name]</code>. You can use it for quick access the creep’s specific memory data object. <a href="https://docs.screeps.com/global-objects.html#Memory-object">Learn more about memory</a></p>
---@field memory any
--- <p>Whether it is your creep or foe.</p>
---@field my boolean
--- <p>Creep’s name. You can choose the name while creating a new creep, and it cannot be changed later. This name is a hash key to access the creep via the <a href="https://docs.screeps.com/api/#Game.creeps">Game.creeps</a> object.</p>
---@field name string
--- <p>The text message that the creep was saying at the last tick.</p>
---@field saying string
--- <p>Whether this creep is still being spawned.</p>
---@field spawning boolean
--- <p>A <a href="https://docs.screeps.com/api/#Store"><code>Store</code></a> object that contains cargo of this creep.</p>
---@field store Store
--- <p>The remaining amount of game ticks after which the creep will die.</p>
---@field ticksToLive number
--- <p>Attack another creep, power creep, or structure in a short-ranged attack. Requires the <code>ATTACK</code> body part. If the target is inside a rampart, then the rampart is attacked instead. The target has to be at adjacent square to the creep. If the target is a creep with <code>ATTACK</code> body parts and is not inside a rampart, it will automatically hit back at the attacker.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Creep">Creep</a>, <a href="https://docs.screeps.com/api/#PowerCreep">PowerCreep</a>, <a href="https://docs.screeps.com/api/#Structure">Structure</a></td><td><p>The target object to be attacked.</p></td></tr></tbody></table>
---@field attack fun(target:any)
--- <p>Decreases the controller's downgrade timer by 300 ticks per every <code>CLAIM</code> body part, or reservation timer by 1 tick per every <code>CLAIM</code> body part. If the controller under attack is owned, it cannot be upgraded or attacked again for the next 1,000 ticks. The target has to be at adjacent square to the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#StructureController">StructureController</a></td><td><p>The target controller object.</p></td></tr></tbody></table>
---@field attackController fun(target:any)
--- <p>Build a structure at the target construction site using carried energy. Requires <code>WORK</code> and <code>CARRY</code> body parts. The target has to be within 3 squares range of the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#ConstructionSite">ConstructionSite</a></td><td><p>The target construction site to be built.</p></td></tr></tbody></table>
---@field build fun(target:any)
--- <p>Cancel the order given during the current game tick.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>methodName</code></td><td>string</td><td><p>The name of a creep's method to be cancelled.</p></td></tr></tbody></table>
---@field cancelOrder fun(methodName:any)
--- <p>Claims a neutral controller under your control. Requires the <code>CLAIM</code> body part. The target has to be at adjacent square to the creep. You need to have the corresponding Global Control Level in order to claim a new room. If you don't have enough GCL, consider <a href="https://docs.screeps.com/api/#reserveController">reserving</a> this room instead. <a href="https://docs.screeps.com/control.html#Global-Control-Level">Learn more</a></p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#StructureController">StructureController</a></td><td><p>The target controller object.</p></td></tr></tbody></table>
---@field claimController fun(target:any)
--- <p>Dismantles any structure that can be constructed (even hostile) returning 50% of the energy spent on its repair. Requires the <code>WORK</code> body part. If the creep has an empty <code>CARRY</code> body part, the energy is put into it; otherwise it is dropped on the ground. The target has to be at adjacent square to the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Structure">Structure</a></td><td><p>The target structure.</p></td></tr></tbody></table>
---@field dismantle fun(target:any)
--- <p>Drop this resource on the ground.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>resourceType</code></td><td>string</td><td><p>One of the <code>RESOURCE_*</code> constants.</p></td></tr><tr><td><code>amount</code><br/><em>optional</em></td><td>number</td><td><p>The amount of resource units to be dropped. If omitted, all the available carried amount is used.</p></td></tr></tbody></table>
---@field drop fun(resourceType:any,amount:any?)
--- <p>Add one more available safe mode activation to a room controller. The creep has to be at adjacent square to the target room controller and have 1000 ghodium resource.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#StructureController">StructureController</a></td><td><p>The target room controller.</p></td></tr></tbody></table>
---@field generateSafeMode fun(controller:any)
--- <p>Get the quantity of live body parts of the given type. Fully damaged parts do not count.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>type</code></td><td>string</td><td><p>A body part type, one of the following body part constants:                    </p><ul><li><code>MOVE</code></li><li><code>WORK</code></li><li><code>CARRY</code></li><li><code>ATTACK</code></li><li><code>RANGED_ATTACK</code></li><li><code>HEAL</code></li><li><code>TOUGH</code></li></ul><p></p></td></tr></tbody></table>
---@field getActiveBodyparts fun(type:any)
--- <p>Harvest energy from the source or resources from minerals and deposits. Requires the <code>WORK</code> body part. If the creep has an empty <code>CARRY</code> body part, the harvested resource is put into it; otherwise it is dropped on the ground. The target has to be at an adjacent square to the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Source">Source</a>, <a href="https://docs.screeps.com/api/#Mineral">Mineral</a>, <a href="https://docs.screeps.com/api/#Deposit">Deposit</a></td><td><p>The object to be harvested.</p></td></tr></tbody></table>
---@field harvest fun(target:any)
--- <p>Heal self or another creep. It will restore the target creep’s damaged body parts function and increase the hits counter. Requires the <code>HEAL</code> body part. The target has to be at adjacent square to the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Creep">Creep</a>, <a href="https://docs.screeps.com/api/#PowerCreep">PowerCreep</a></td><td><p>The target creep object.</p></td></tr></tbody></table>
---@field heal fun(target:any)
--- <p>Move the creep one square in the specified direction. Requires the <code>MOVE</code> body part, or another creep nearby <a href="https://docs.screeps.com/api/#Creep.pull">pulling</a> the creep. In case if you call <code>move</code> on a creep nearby, the <code>ERR_TIRED</code> and the <code>ERR_NO_BODYPART</code> checks will be bypassed; otherwise, the <code>ERR_NOT_IN_RANGE</code> check will be bypassed. </p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>direction</code></td><td><a href="https://docs.screeps.com/api/#Creep">Creep</a>|number</td><td><p>A creep nearby, or one of the following constants:                    </p><ul><li><code>TOP</code></li><li><code>TOP_RIGHT</code></li><li><code>RIGHT</code></li><li><code>BOTTOM_RIGHT</code></li><li><code>BOTTOM</code></li><li><code>BOTTOM_LEFT</code></li><li><code>LEFT</code></li><li><code>TOP_LEFT</code></li></ul><p></p></td></tr></tbody></table>
---@field move fun(direction:any)
--- <p>Move the creep using the specified predefined path. Requires the <code>MOVE</code> body part.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>path</code></td><td>array|string</td><td><p>A path value as returned from <a href="https://docs.screeps.com/api/#Room.findPath"><code>Room.findPath</code></a>, <a href="https://docs.screeps.com/api/#RoomPosition.findPathTo"><code>RoomPosition.findPathTo</code></a>, or <a href="https://docs.screeps.com/api/#PathFinder.search"><code>PathFinder.search</code></a> methods. Both array form and serialized string form are accepted.</p></td></tr></tbody></table>
---@field moveByPath fun(path:any)
--- <p>Find the optimal path to the target within the same room and move to it. A shorthand to consequent calls of <a href="https://docs.screeps.com/api/#RoomPosition.findPathTo">pos.findPathTo()</a> and <a href="https://docs.screeps.com/api/#Creep.move">move()</a> methods. If the target is in another room, then the corresponding exit will be used as a target. Requires the <code>MOVE</code> body part.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>x</code></td><td>number</td><td><p>X position of the target in the same room.</p></td></tr><tr><td><code>y</code></td><td>number</td><td><p>Y position of the target in the same room.</p></td></tr><tr><td><code>target</code></td><td>object</td><td><p>Can be a <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a> object or any object containing <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a>. The position doesn't have to be in the same room with the creep.</p></td></tr><tr><td><code>opts</code><br/><em>optional</em></td><td>object</td><td><p>An object containing additional options:                    </p><ul><li><div class="api-arg-title">reusePath</div><div class="api-arg-type">number</div><div class="api-arg-desc">This option enables reusing the path found along multiple game ticks. It allows to save CPU time, but can result in a slightly slower creep reaction behavior. The path is stored into the creep's memory to the <code>_move</code> property. The <code>reusePath</code> value defines the amount of ticks which the path should be reused for. The default value is 5. Increase the amount to save more CPU, decrease to make the movement more consistent. Set to 0 if you want to disable path reusing.</div></li><li><div class="api-arg-title">serializeMemory</div><div class="api-arg-type">boolean</div><div class="api-arg-desc">If <code>reusePath</code> is enabled and this option is set to true, the path will be stored in memory in the short serialized form using <a href="https://docs.screeps.com/api/#Room.serializePath"><code>Room.serializePath</code></a>. The default value is true.</div></li><li><div class="api-arg-title">noPathFinding</div><div class="api-arg-type">boolean</div><div class="api-arg-desc">If this option is set to true, <code>moveTo</code> method will return <code>ERR_NOT_FOUND</code> if there is no memorized path to reuse. This can significantly save CPU time in some cases. The default value is false.</div></li><li><div class="api-arg-title">visualizePathStyle</div><div class="api-arg-type">object</div><div class="api-arg-desc">Draw a line along the creep’s path using <a href="https://docs.screeps.com/api/#RoomVisual.poly"><code>RoomVisual.poly</code></a>. You can provide either an empty object or custom style parameters. The default style is equivalent to:                                <pre class="language-javascript"><code class="language-javascript"><span class="token punctuation">{</span>    fill<span class="token punctuation">:</span> <span class="token string">'transparent'</span><span class="token punctuation">,</span>    stroke<span class="token punctuation">:</span> <span class="token string">'#fff'</span><span class="token punctuation">,</span>    lineStyle<span class="token punctuation">:</span> <span class="token string">'dashed'</span><span class="token punctuation">,</span>    strokeWidth<span class="token punctuation">:</span> <span class="token punctuation">.</span><span class="token number">15</span><span class="token punctuation">,</span>    opacity<span class="token punctuation">:</span> <span class="token punctuation">.</span><span class="token number">1</span><span class="token punctuation">}</span></code></pre></div></li><li>Any options supported by <a href="https://docs.screeps.com/api/#Room.findPath"><code>Room.findPath</code></a> method.</li></ul><p></p></td></tr></tbody></table>
---@field moveTo fun(x:any,y:any,opts:any?)|fun(target:any,opts:any?)
--- <p>Toggle auto notification when the creep is under attack. The notification will be sent to your account email. Turned on by default.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>enabled</code></td><td>boolean</td><td><p>Whether to enable notification or disable.</p></td></tr></tbody></table>
---@field notifyWhenAttacked fun(enabled:any)
--- <p>Pick up an item (a dropped piece of energy). Requires the <code>CARRY</code> body part. The target has to be at adjacent square to the creep or at the same square.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Resource">Resource</a></td><td><p>The target object to be picked up.</p></td></tr></tbody></table>
---@field pickup fun(target:any)
--- <p>Help another creep to follow this creep. The fatigue generated for the target's move will be added to the creep instead of the target. Requires the <code>MOVE</code> body part. The target has to be at adjacent square to the creep. The creep must <a href="https://docs.screeps.com/api/#Creep.move">move</a> elsewhere, and the target must <a href="https://docs.screeps.com/api/#Creep.move">move</a> towards the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Creep">Creep</a></td><td><p>The target creep.</p></td></tr></tbody></table>
---@field pull fun(target:any)
--- <p>A ranged attack against another creep or structure. Requires the <code>RANGED_ATTACK</code> body part. If the target is inside a rampart, the rampart is attacked instead. The target has to be within 3 squares range of the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Creep">Creep</a>, <a href="https://docs.screeps.com/api/#PowerCreep">PowerCreep</a>, <a href="https://docs.screeps.com/api/#Structure">Structure</a></td><td><p>The target object to be attacked.</p></td></tr></tbody></table>
---@field rangedAttack fun(target:any)
--- <p>Heal another creep at a distance. It will restore the target creep’s damaged body parts function and increase the hits counter. Requires the <code>HEAL</code> body part. The target has to be within 3 squares range of the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Creep">Creep</a>, <a href="https://docs.screeps.com/api/#PowerCreep">PowerCreep</a></td><td><p>The target creep object.</p></td></tr></tbody></table>
---@field rangedHeal fun(target:any)
--- <p>A ranged attack against all hostile creeps or structures within 3 squares range. Requires the <code>RANGED_ATTACK</code> body part. The attack power depends on the range to each target. Friendly units are not affected.</p>
---@field rangedMassAttack fun()
--- <p>Repair a damaged structure using carried energy. Requires the <code>WORK</code> and <code>CARRY</code> body parts. The target has to be within 3 squares range of the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Structure">Structure</a></td><td><p>The target structure to be repaired.</p></td></tr></tbody></table>
---@field repair fun(target:any)
--- <p>Temporarily block a neutral controller from claiming by other players and restore energy sources to their full capacity. Each tick, this command increases the counter of the period during which the controller is unavailable by 1 tick per each <code>CLAIM</code> body part. The maximum reservation period to maintain is 5,000 ticks. The target has to be at adjacent square to the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#StructureController">StructureController</a></td><td><p>The target controller object to be reserved.</p></td></tr></tbody></table>
---@field reserveController fun(target:any)
--- <p>Display a visual speech balloon above the creep with the specified message. The message will be available for one tick. You can read the last message using the <code>saying</code> property. Any valid Unicode characters are allowed, including <a href="http://unicode.org/emoji/charts/emoji-style.txt" target="_blank">emoji</a>.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>message</code></td><td>string</td><td><p>The message to be displayed. Maximum length is 10 characters.</p></td></tr><tr><td><code>public</code><br/><em>optional</em></td><td>boolean</td><td><p>Set to true to allow other players to see this message. Default is false.</p></td></tr></tbody></table>
---@field say fun(message:any,public:any?)
--- <p>Sign a controller with an arbitrary text visible to all players. This text will appear in the room UI, in the world map, and can be accessed via the API. You can sign unowned and hostile controllers. The target has to be at adjacent square to the creep. Pass an empty string to remove the sign.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#StructureController">StructureController</a></td><td><p>The target controller object to be signed.</p></td></tr><tr><td><code>text</code></td><td>string</td><td><p>The sign text. The string is cut off after 100 characters.</p></td></tr></tbody></table>
---@field signController fun(target:any,text:any)
--- <p>Kill the creep immediately.</p>
---@field suicide fun()
--- <p>Transfer resource from the creep to another object. The target has to be at adjacent square to the creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Creep">Creep</a>, <a href="https://docs.screeps.com/api/#PowerCreep">PowerCreep</a>, <a href="https://docs.screeps.com/api/#Structure">Structure</a></td><td><p>The target object.</p></td></tr><tr><td><code>resourceType</code></td><td>string</td><td><p>One of the <code>RESOURCE_*</code> constants.</p></td></tr><tr><td><code>amount</code><br/><em>optional</em></td><td>number</td><td><p>The amount of resources to be transferred. If omitted, all the available carried amount is used.</p></td></tr></tbody></table>
---@field transfer fun(target:any,resourceType:any,amount:any?)
--- <p>Upgrade your controller to the next level using carried energy. Upgrading controllers raises your Global Control Level in parallel. Requires <code>WORK</code> and <code>CARRY</code> body parts. The target has to be within 3 squares range of the creep. </p> <p>A fully upgraded level 8 controller can't be upgraded over 15 energy units per tick regardless of creeps abilities. The cumulative effect of all the creeps performing <code>upgradeController</code> in the current tick is taken into account. This limit can be increased by using <a href="https://docs.screeps.com/resources.html">ghodium mineral boost</a>.</p> <p>Upgrading the controller raises its <code>ticksToDowngrade</code> timer by 100. The timer must be full in order for controller to be levelled up.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#StructureController">StructureController</a></td><td><p>The target controller object to be upgraded.</p></td></tr></tbody></table>
---@field upgradeController fun(target:any)
--- <p>Withdraw resources from a structure or tombstone. The target has to be at adjacent square to the creep. Multiple creeps can withdraw from the same object in the same tick. Your creeps can withdraw resources from hostile structures/tombstones as well, in case if there is no hostile rampart on top of it.</p> <p>This method should not be used to transfer resources between creeps. To transfer between creeps, use the <a href="https://docs.screeps.com/api/#Creep.transfer"><code>transfer</code></a> method on the original creep.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#Structure">Structure</a>, <a href="https://docs.screeps.com/api/#Tombstone">Tombstone</a>, <a href="https://docs.screeps.com/api/#Ruin">Ruin</a></td><td><p>The target object.</p></td></tr><tr><td><code>resourceType</code></td><td>string</td><td><p>One of the <code>RESOURCE_*</code> constants.</p></td></tr><tr><td><code>amount</code><br/><em>optional</em></td><td>number</td><td><p>The amount of resources to be transferred. If omitted, all the available amount is used.</p></td></tr></tbody></table>
---@field withdraw fun(target:any,resourceType:any,amount:any?)
---@field carry Creep.carry
---@field owner Creep.owner
local Creep = {}

--- <div class="api-deprecated"><p>This property is deprecated and will be removed soon.</p></div> <p>An alias for <a href="https://docs.screeps.com/api/#Creep.store"><code>Creep.store</code></a>. </p>
---@class Creep.carry
local carry = {}

--- <p>An object with the creep’s owner info containing the following properties:</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>username</code></td><td>string</td><td><p>The name of the owner user.</p></td></tr></tbody></table>
---@class Creep.owner
local owner = {}
