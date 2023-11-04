while wait() do
	for _, door in pairs(workspace.train.car.doors:GetChildren()) do
		fireclickdetector(door.click.ClickDetector)
	end
	fireclickdetector(workspace.train.car.headlightsButton.buttonPart.ClickDetector)
	fireclickdetector(workspace.train.camper.bathroomDoor.click.ClickDetector)
	fireclickdetector(workspace.train.camper.door.click.ClickDetector)
	fireclickdetector(workspace.train.trailer.vendingMachine.icons.beanColaIcon.ClickDetector)
end