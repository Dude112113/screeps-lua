-- WARNING: THIS FILE IS GENERATED, DO NOT MODIFY.


--- <p>An object representing the specified position in the room. Every <code>RoomObject</code> in the roomcontains <code>RoomPosition</code> as the <code>pos</code> property. The position object of a custom locationcan be obtained using the <a href="https://docs.screeps.com/api/#Room.getPositionAt"><code>Room.getPositionAt</code></a> method or using the constructor.</p>
---@class RoomPosition
--- <p>The name of the room.</p>
---@field roomName string
--- <p>X position in the room.</p>
---@field x number
--- <p>Y position in the room.</p>
---@field y number
--- <h2 class="api-property api-property--method" id="RoomPosition.createConstructionSite"><span class="api-property__name">createConstructionSite</span><span class="api-property__args">(structureType, [name])</span><div class="api-property__cpu api-property__cpu--A" title="This method is an action that changes game state. It has additional 0.2 CPU cost added to its natural cost in case if OK code is returned."></div></h2> <p>Create new <a href="https://docs.screeps.com/api/#ConstructionSite">ConstructionSite</a> at the specified location.</p>
---@field createConstructionSite fun(self:RoomPosition,structureType:string,name:any?)
--- <h2 class="api-property api-property--method" id="RoomPosition.createFlag"><span class="api-property__name">createFlag</span><span class="api-property__args">([name], [color], [secondaryColor])</span><div class="api-property__cpu api-property__cpu--A" title="This method is an action that changes game state. It has additional 0.2 CPU cost added to its natural cost in case if OK code is returned."></div></h2> <p>Create new <a href="https://docs.screeps.com/api/#Flag">Flag</a> at the specified location.</p>
---@field createFlag fun(self:RoomPosition,name:any?,color:any?,secondaryColor:any?)
--- <h2 class="api-property api-property--method" id="RoomPosition.findClosestByPath"><span class="api-property__name">findClosestByPath</span><span class="api-property__args">(type, [opts])<br/>(objects, [opts])</span><div class="api-property__cpu api-property__cpu--3" title="This method has high CPU cost."></div></h2> <p>Find an object with the shortest path from the given position. Uses <a href="http://en.wikipedia.org/wiki/Jump_point_search" target="_blank">Jump Point Search algorithm</a> and <a href="http://en.wikipedia.org/wiki/Dijkstra" rel="noopener" target="_blank">Dijkstra's algorithm</a>.</p>
---@field findClosestByPath fun(self:RoomPosition,type:number,opts:any?)|fun(self:RoomPosition,objects:any[],opts:any?)
--- <h2 class="api-property api-property--method" id="RoomPosition.findClosestByRange"><span class="api-property__name">findClosestByRange</span><span class="api-property__args">(type, [opts])<br/>(objects, [opts])</span><div class="api-property__cpu api-property__cpu--2" title="This method has medium CPU cost."></div></h2> <p>Find an object with the shortest linear distance from the given position.</p>
---@field findClosestByRange fun(self:RoomPosition,type:number,opts:any?)|fun(self:RoomPosition,objects:any[],opts:any?)
--- <h2 class="api-property api-property--method" id="RoomPosition.findInRange"><span class="api-property__name">findInRange</span><span class="api-property__args">(type, range, [opts])<br/>(objects, range, [opts])</span><div class="api-property__cpu api-property__cpu--2" title="This method has medium CPU cost."></div></h2> <p>Find all objects in the specified linear range.</p>
---@field findInRange fun(self:RoomPosition,type:number,range:number,opts:any?)|fun(self:RoomPosition,objects:any[],range:number,opts:any?)
--- <h2 class="api-property api-property--method" id="RoomPosition.findPathTo"><span class="api-property__name">findPathTo</span><span class="api-property__args">(x, y, [opts])<br/>(target, [opts])</span><div class="api-property__cpu api-property__cpu--3" title="This method has high CPU cost."></div></h2> <p>Find an optimal path to the specified position using <a href="http://en.wikipedia.org/wiki/Jump_point_search" target="_blank">Jump Point Search algorithm</a>. This method is a shorthand for <a href="https://docs.screeps.com/api/#Room.findPath">Room.findPath</a>. If the target is in another room, then the corresponding exit will be used as a target.</p>
---@field findPathTo fun(self:RoomPosition,x:number,y:number,opts:any?):({x:integer,y:integer,dx:integer,dy:integer,direction:string}[])|fun(self:RoomPosition,target:table,opts:any?):({x:integer,y:integer,dx:integer,dy:integer,direction:string}[])
--- <h2 class="api-property api-property--method" id="RoomPosition.getDirectionTo"><span class="api-property__name">getDirectionTo</span><span class="api-property__args">(x,y)<br/>(target)</span><div class="api-property__cpu api-property__cpu--1" title="This method has low CPU cost."></div></h2> <p>Get linear direction to the specified position.</p>
---@field getDirectionTo fun(self:RoomPosition,x:number,y:number)|fun(self:RoomPosition,target:table)
--- <h2 class="api-property api-property--method" id="RoomPosition.getRangeTo"><span class="api-property__name">getRangeTo</span><span class="api-property__args">(x,y)<br/>(target)</span><div class="api-property__cpu api-property__cpu--1" title="This method has low CPU cost."></div></h2> <p>Get linear range to the specified position.</p>
---@field getRangeTo fun(self:RoomPosition,x:number,y:number)|fun(self:RoomPosition,target:table)
--- <h2 class="api-property api-property--method" id="RoomPosition.inRangeTo"><span class="api-property__name">inRangeTo</span><span class="api-property__args">(x, y, range)<br/>(target, range)</span><div class="api-property__cpu api-property__cpu--1" title="This method has low CPU cost."></div></h2> <p>Check whether this position is in the given range of another position.</p>
---@field inRangeTo fun(self:RoomPosition,x:number,y:number,range:number)|fun(self:RoomPosition,target:RoomPosition,range:number)
--- <h2 class="api-property api-property--method" id="RoomPosition.isEqualTo"><span class="api-property__name">isEqualTo</span><span class="api-property__args">(x,y)<br/>(target)</span><div class="api-property__cpu api-property__cpu--1" title="This method has low CPU cost."></div></h2> <p>Check whether this position is the same as the specified position.</p>
---@field isEqualTo fun(self:RoomPosition,x:number,y:number)|fun(self:RoomPosition,target:table)
--- <h2 class="api-property api-property--method" id="RoomPosition.isNearTo"><span class="api-property__name">isNearTo</span><span class="api-property__args">(x,y)<br/>(target)</span><div class="api-property__cpu api-property__cpu--1" title="This method has low CPU cost."></div></h2> <p>Check whether this position is on the adjacent square to the specified position. The same as <code>inRangeTo(target, 1)</code>.</p>
---@field isNearTo fun(self:RoomPosition,x:number,y:number)|fun(self:RoomPosition,target:table)
--- <h2 class="api-property api-property--method" id="RoomPosition.look"><span class="api-property__name">look</span><span class="api-property__args">()</span><div class="api-property__cpu api-property__cpu--2" title="This method has medium CPU cost."></div></h2> <p>Get the list of objects at the specified room position.</p>
---@field look fun(self:RoomPosition):(({type:string}|table)[])
--- <h2 class="api-property api-property--method" id="RoomPosition.lookFor"><span class="api-property__name">lookFor</span><span class="api-property__args">(type)</span><div class="api-property__cpu api-property__cpu--1" title="This method has low CPU cost."></div></h2> <p>Get an object with the given type at the specified room position.</p>
---@field lookFor fun(self:RoomPosition,type:string)
local RoomPosition = {}
