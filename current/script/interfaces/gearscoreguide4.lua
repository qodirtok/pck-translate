local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_GearScoreGuide4 = DlgTemplate:new({this = "Win_GearScoreGuide4"})

--初始化--

function Win_GearScoreGuide4:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end

function Win_GearScoreGuide4:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea", "^ffffff可通过护卫界面上的护卫百科，查看详细的指引功能。\r\r^ff6fb3如何获得护卫：^ffffff\r\r当达到40级后，可到#69294#处接受护卫任务，获得护卫。护卫属性的提升：护卫的声望目前为寂寂无名、^72fe00小有名气^ffffff、^0184ff名动一方^ffffff、^a800ff鼎鼎大名^ffffff、^ff7d2f英名远播^ffffff、^fff962名扬四海^ffffff六个阶段。\r\r护卫声望越高，整体属性越强，并且在易筋时更有可能获得较高的天资。\r\r声望没有达到顶级的护卫可以使用^00ff00战功书^ffffff在长安云台的#69417#处花费一定的金钱来提高声望。\r\r^ff6fb3提高珍稀度：^ffffff\r\r护卫的珍稀度目前总共有资质平平、^72fe00重金难求^ffffff、^0184ff百年难见^ffffff、^a800ff千年不遇^ffffff、^ff7d2f万中挑一^ffffff五种。\r\r护卫的珍稀度越高，护卫的整体属性越好。\r\r珍稀度属于护卫的天生属性，目前不可改变。\r\r^ff6fb3提高等级：^ffffff\r\r护卫当前的等级，最高100级。\r\r绑定状态的护卫在100级时可以晋升官阶，之后等级归零。\r\r提升护卫等级时会消耗当前历练和当前士气。\r\r^ff6fb3提高官阶：^ffffff\r\r最初始的护卫为九品官阶，之后每次护卫达到100级时可以晋升。\r\r晋升官阶后，护卫的属性成长会获得较大提升，但是等级、当前历练、已分配的属性点会统一归零，而缺损士气会保留，当前士气变为100点，自由属性点额外增加20点。\r\r晋升官阶后，护卫各个等级的升级所需历练会相应增加，而升级所需士气不变。\r\r绑定状态的护卫在达到100级时可在长安云台的#69417#处花费一定的金钱和人物历练晋升官阶。")

end
--------------------------------------------------------------------

function Win_GearScoreGuide4:OnLButtonDown(objName)
	for i = 1 , 6 do
		if objName == "Btn_" .. tostring(i) then

			GameApi.CovertTextArea(self.this, "Txt_TextArea", GearScoreGuide4[i].text)

		end
	end
	if objName == "Txt_TextArea" then
		local posx2, posy2 = GameApi.GetCursorPos()
		NpcID = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx2, posy2)
		if NpcID ~= nil then
		GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

--------------------------------------------
--鼠标移动
--------------------------------------------
function Win_GearScoreGuide4:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

