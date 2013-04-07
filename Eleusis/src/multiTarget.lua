sysTar = sysTar or {}

--Our targets are stored in a simple linked list, with piority in front.
sysTar.targets = sysTar.targets or {}

function sysTar.setTargetFront(target)
	local targetnode = {"target"=target,"next"=sysTar.targets}
	sysTar.targets = targetnode	
end

function sysTar.setTargetBack(target)
	local targetnode = {"target"=target,"next"=sysTar.targets}
	local node = sysTar.targets
	while (node.next) do
		node = node.next
	end
	node.next = targetnode
end

--Returns current target
function sysTar.target(num)
	num = num or 0
	return targets[num]
end
