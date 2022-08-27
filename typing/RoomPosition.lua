-- WARNING: THIS FILE IS GENERATED, DO NOT MODIFY.


--- <p>An object representing the specified position in the room. Every <code>RoomObject</code> in the roomcontains <code>RoomPosition</code> as the <code>pos</code> property. The position object of a custom locationcan be obtained using the <a href="https://docs.screeps.com/api/#Room.getPositionAt"><code>Room.getPositionAt</code></a> method or using the constructor.</p>
---@class RoomPosition
--- <p>The name of the room.</p>
---@field roomName string
--- <p>X position in the room.</p>
---@field x number
--- <p>Y position in the room.</p>
---@field y number
--- <p>Create new <a href="https://docs.screeps.com/api/#ConstructionSite">ConstructionSite</a> at the specified location.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>structureType</code></td><td>string</td><td><p>One of the <code>STRUCTURE_*</code> constants.</p></td></tr><tr><td><code>name</code><br/><em>optional</em></td><td>string</td><td><p>The name of the structure, for structures that support it (currently only spawns).</p></td></tr></tbody></table>
---@field createConstructionSite fun(structureType:any,name:any?)
--- <p>Create new <a href="https://docs.screeps.com/api/#Flag">Flag</a> at the specified location.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>name</code><br/><em>optional</em></td><td>string</td><td><p>The name of a new flag. It should be unique, i.e. the <code>Game.flags</code> object should not contain another flag with the same name (hash key). If not defined, a random name will be generated.</p></td></tr><tr><td><code>color</code><br/><em>optional</em></td><td>string</td><td><p>The color of a new flag. Should be one of the <code>COLOR_*</code> constants. The default value is <code>COLOR_WHITE</code>.</p></td></tr><tr><td><code>secondaryColor</code><br/><em>optional</em></td><td>string</td><td><p>The secondary color of a new flag. Should be one of the <code>COLOR_*</code> constants. The default value is equal to <code>color</code>.</p></td></tr></tbody></table>
---@field createFlag fun(name:any?,color:any?,secondaryColor:any?)
--- <p>Find an object with the shortest path from the given position. Uses <a href="http://en.wikipedia.org/wiki/Jump_point_search" target="_blank">Jump Point Search algorithm</a> and <a href="http://en.wikipedia.org/wiki/Dijkstra" rel="noopener" target="_blank">Dijkstra's algorithm</a>.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>type</code></td><td>number</td><td><p>See <a href="https://docs.screeps.com/api/#Room.find">Room.find</a>.</p></td></tr><tr><td><code>objects</code></td><td>array</td><td><p>An array of room's objects or <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a> objects that the search should be executed against.</p></td></tr><tr><td><code>opts</code><br/><em>optional</em></td><td>object</td><td><p>An object containing pathfinding options (see <a href="https://docs.screeps.com/api/#Room.findPath">Room.findPath</a>), or one of the following:                    </p><ul><li><div class="api-arg-title">filter</div><div class="api-arg-type">object, function, string</div><div class="api-arg-desc">Only the objects which pass the filter using the <a href="https://lodash.com/docs#filter" rel="noopener" target="_blank">Lodash.filter</a> method will be used.</div></li><li><div class="api-arg-title">algorithm</div><div class="api-arg-type">string</div><div class="api-arg-desc">One of the following constants:                                <ul><li><code>astar</code> is faster when there are relatively few possible targets;</li><li><code>dijkstra</code> is faster when there are a lot of possible targets or when the closest target is nearby.</li></ul>                                The default value is determined automatically using heuristics.</div></li></ul><p></p></td></tr></tbody></table>
---@field findClosestByPath fun(type:any,opts:any?)|fun(objects:any,opts:any?)
--- <p>Find an object with the shortest linear distance from the given position.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>type</code></td><td>number</td><td><p>See <a href="https://docs.screeps.com/api/#Room.find">Room.find</a>.</p></td></tr><tr><td><code>objects</code></td><td>array</td><td><p>An array of room's objects or <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a> objects that the search should be executed against.</p></td></tr><tr><td><code>opts</code><br/><em>optional</em></td><td>object</td><td><p>An object containing one of the following options:                    </p><ul><li><div class="api-arg-title">filter</div><div class="api-arg-type">object, function, string</div><div class="api-arg-desc">Only the objects which pass the filter using the <a href="https://lodash.com/docs#filter" rel="noopener" target="_blank">Lodash.filter</a> method will be used.</div></li></ul><p></p></td></tr></tbody></table>
---@field findClosestByRange fun(type:any,opts:any?)|fun(objects:any,opts:any?)
--- <p>Find all objects in the specified linear range.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>type</code></td><td>number</td><td><p>See <a href="https://docs.screeps.com/api/#Room.find">Room.find</a>.</p></td></tr><tr><td><code>objects</code></td><td>array</td><td><p>An array of room's objects or <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a> objects that the search should be executed against.</p></td></tr><tr><td><code>range</code></td><td>number</td><td><p>The range distance.</p></td></tr><tr><td><code>opts</code><br/><em>optional</em></td><td>object</td><td><p>See <a href="https://docs.screeps.com/api/#Room.find">Room.find</a>.</p></td></tr></tbody></table>
---@field findInRange fun(type:any,range:any,opts:any?)|fun(objects:any,range:any,opts:any?)
--- <p>Find an optimal path to the specified position using <a href="http://en.wikipedia.org/wiki/Jump_point_search" target="_blank">Jump Point Search algorithm</a>. This method is a shorthand for <a href="https://docs.screeps.com/api/#Room.findPath">Room.findPath</a>. If the target is in another room, then the corresponding exit will be used as a target.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>x</code></td><td>number</td><td><p>X position in the room.</p></td></tr><tr><td><code>y</code></td><td>number</td><td><p>Y position in the room.</p></td></tr><tr><td><code>target</code></td><td>object</td><td><p>Can be a <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a> object or any object containing <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a>.</p></td></tr><tr><td><code>opts</code><br/><em>optional</em></td><td>object</td><td><p>An object containing pathfinding options flags (see <a href="https://docs.screeps.com/api/#Room.findPath">Room.findPath</a> for more details).</p></td></tr></tbody></table>
---@field findPathTo fun(x:any,y:any,opts:any?):({x:integer,y:integer,dx:integer,dy:integer,direction:string}[])|fun(target:any,opts:any?):({x:integer,y:integer,dx:integer,dy:integer,direction:string}[])
--- <p>Get linear direction to the specified position.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>x</code></td><td>number</td><td><p>X position in the room.</p></td></tr><tr><td><code>y</code></td><td>number</td><td><p>Y position in the room.</p></td></tr><tr><td><code>target</code></td><td>object</td><td><p>Can be a <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a> object or any object containing <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a>.</p></td></tr></tbody></table>
---@field getDirectionTo fun(x:any,y:any)|fun(target:any)
--- <p>Get linear range to the specified position.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>x</code></td><td>number</td><td><p>X position in the room.</p></td></tr><tr><td><code>y</code></td><td>number</td><td><p>Y position in the room.</p></td></tr><tr><td><code>target</code></td><td>object</td><td><p>Can be a <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a> object or any object containing <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a>.</p></td></tr></tbody></table>
---@field getRangeTo fun(x:any,y:any)|fun(target:any)
--- <p>Check whether this position is in the given range of another position.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>x</code></td><td>number</td><td><p>X position in the same room.</p></td></tr><tr><td><code>y</code></td><td>number</td><td><p>Y position in the same room.</p></td></tr><tr><td><code>target</code></td><td><a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a></td><td><p>The target position.</p></td></tr><tr><td><code>range</code></td><td>number</td><td><p>The range distance.</p></td></tr></tbody></table>
---@field inRangeTo fun(x:any,y:any,range:any)|fun(target:any,range:any)
--- <p>Check whether this position is the same as the specified position.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>x</code></td><td>number</td><td><p>X position in the room.</p></td></tr><tr><td><code>y</code></td><td>number</td><td><p>Y position in the room.</p></td></tr><tr><td><code>target</code></td><td>object</td><td><p>Can be a <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a> object or any object containing <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a>.</p></td></tr></tbody></table>
---@field isEqualTo fun(x:any,y:any)|fun(target:any)
--- <p>Check whether this position is on the adjacent square to the specified position. The same as <code>inRangeTo(target, 1)</code>.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>x</code></td><td>number</td><td><p>X position in the room.</p></td></tr><tr><td><code>y</code></td><td>number</td><td><p>Y position in the room.</p></td></tr><tr><td><code>target</code></td><td>object</td><td><p>Can be a <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a> object or any object containing <a href="https://docs.screeps.com/api/#RoomPosition">RoomPosition</a>.</p></td></tr></tbody></table>
---@field isNearTo fun(x:any,y:any)|fun(target:any)
--- <p>Get the list of objects at the specified room position.</p>
---@field look fun():(({type:string}|table)[])
--- <p>Get an object with the given type at the specified room position.</p> <table><thead><tr><th>parameter</th><th>type</th><th>description</th></tr></thead><tbody><tr><td><code>type</code></td><td>string</td><td><p>One of the <code>LOOK_*</code> constants.</p></td></tr></tbody></table>
---@field lookFor fun(type:any)
local RoomPosition = {}
