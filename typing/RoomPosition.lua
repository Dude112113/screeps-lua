-- WARNING: THIS FILE IS GENERATED, DO NOT MODIFY.


--- <p>An object representing the specified position in the room. Every <code>RoomObject</code> in the roomcontains <code>RoomPosition</code> as the <code>pos</code> property. The position object of a custom locationcan be obtained using the <a href="https://docs.screeps.com/api/#Room.getPositionAt"><code>Room.getPositionAt</code></a> method or using the constructor.</p>
---@class RoomPosition
--- <p>The name of the room.</p>
---@field roomName string
--- <p>X position in the room.</p>
---@field x number
--- <p>Y position in the room.</p>
---@field y number
--- <p>Create new <a href="https://docs.screeps.com/api/#ConstructionSite">ConstructionSite</a> at the specified location.</p>
---@field createConstructionSite fun(self:RoomPosition,structureType:string,name:any?):(OK|ERR_INVALID_TARGET|ERR_FULL|ERR_INVALID_ARGS|ERR_RCL_NOT_ENOUGH)
--- <p>Create new <a href="https://docs.screeps.com/api/#Flag">Flag</a> at the specified location.</p>
---@field createFlag fun(self:RoomPosition,name:any?,color:any?,secondaryColor:any?):(ERR_NAME_EXISTS|ERR_INVALID_ARGS)
--- <p>Find an object with the shortest path from the given position. Uses <a href="http://en.wikipedia.org/wiki/Jump_point_search" target="_blank">Jump Point Search algorithm</a> and <a href="http://en.wikipedia.org/wiki/Dijkstra" rel="noopener" target="_blank">Dijkstra's algorithm</a>.</p>
---@field findClosestByPath fun(self:RoomPosition,type:number,opts:any?)|fun(self:RoomPosition,objects:any[],opts:any?)
--- <p>Find an object with the shortest linear distance from the given position.</p>
---@field findClosestByRange fun(self:RoomPosition,type:number,opts:any?)|fun(self:RoomPosition,objects:any[],opts:any?)
--- <p>Find all objects in the specified linear range.</p>
---@field findInRange fun(self:RoomPosition,type:number,range:number,opts:any?)|fun(self:RoomPosition,objects:any[],range:number,opts:any?)
--- <p>Find an optimal path to the specified position using <a href="http://en.wikipedia.org/wiki/Jump_point_search" target="_blank">Jump Point Search algorithm</a>. This method is a shorthand for <a href="https://docs.screeps.com/api/#Room.findPath">Room.findPath</a>. If the target is in another room, then the corresponding exit will be used as a target.</p>
---@field findPathTo fun(self:RoomPosition,x:number,y:number,opts:any?):({x:integer,y:integer,dx:integer,dy:integer,direction:string}[])|fun(self:RoomPosition,target:table,opts:any?):({x:integer,y:integer,dx:integer,dy:integer,direction:string}[])
--- <p>Get linear direction to the specified position.</p>
---@field getDirectionTo fun(self:RoomPosition,x:number,y:number)|fun(self:RoomPosition,target:table)
--- <p>Get linear range to the specified position.</p>
---@field getRangeTo fun(self:RoomPosition,x:number,y:number)|fun(self:RoomPosition,target:table)
--- <p>Check whether this position is in the given range of another position.</p>
---@field inRangeTo fun(self:RoomPosition,x:number,y:number,range:number)|fun(self:RoomPosition,target:RoomPosition,range:number)
--- <p>Check whether this position is the same as the specified position.</p>
---@field isEqualTo fun(self:RoomPosition,x:number,y:number)|fun(self:RoomPosition,target:table)
--- <p>Check whether this position is on the adjacent square to the specified position. The same as <code>inRangeTo(target, 1)</code>.</p>
---@field isNearTo fun(self:RoomPosition,x:number,y:number)|fun(self:RoomPosition,target:table)
--- <p>Get the list of objects at the specified room position.</p>
---@field look fun(self:RoomPosition):(({type:string}|table)[])
--- <p>Get an object with the given type at the specified room position.</p>
---@field lookFor fun(self:RoomPosition,type:string)
local RoomPosition = {}
