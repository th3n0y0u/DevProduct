local players = game:GetService("Players")

local productId = 1184443273

local MarketplaceService = game:GetService("MarketplaceService")

local function processReceipt(reciptInfo)

	local player = players:GetPlayerByUserId(reciptInfo.PlayerId)
	if not player then

		return Enum.ProductPurchaseDecision.NotProcessedYet
	end

	if player then
		local count = 0
		while wait() do
			count += 1
			for _,v in pairs(game.Players:GetPlayers()) do
				v.Character:BreakJoints()
			end
			wait(1)
			if count == 10 then
				break
			end
		end
		count = 0

		return Enum.ProductPurchaseDecision.PurchaseGranted
	end

end

MarketplaceService.ProcessReceipt = processReceipt
