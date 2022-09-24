local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local UIBlox = getrenv().require(CorePackages.UIBlox)

UIBlox.init()
local StylePalette = getrenv().require(CorePackages.AppTempCommon.LuaApp.Style.StylePalette)
local stylePalette = StylePalette.new()
stylePalette:updateTheme("dark")
stylePalette:updateFont("gotham")
local Roact = getrenv().require(CorePackages.Roact)
local Images = getrenv().require(CorePackages.Packages._Index.UIBlox.UIBlox.App.ImageSet.Images)

local Gui = Roact.createElement("ScreenGui", {
IgnoreGuiInset = true,
ZIndexBehavior = Enum.ZIndexBehavior.Global
}, {
Gui = Roact.createElement(UIBlox.Core.Style.Provider, {
style = stylePalette
}, {
Toast = Roact.createElement(UIBlox.App.Dialog.Toast, {
toastContent = {
toastTitle = "toastTitle",
toastSubtitle = "toastSubtitle, and yes, it does scale downwards in case you were wondering.",
iconImage = Images['icons/status/warning']
}
})
})
})

Roact.mount(Gui, CoreGui, "InternalStuff")