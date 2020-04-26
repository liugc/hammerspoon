-- local hotkey = require('core.hotkey')

-- hotkey = {
--   registeredHotkey = {}
-- }
-- local strkit = require('core.strkit')

-- function hotkey.bind(mods, key, desc, fn)
--   hs.hotkey.bind(mods, key, nil, fn)

--   local info = ''
--   for _, k in pairs(mods) do
--       info = info .. (info ~= '' and '+' or '') .. strkit.firstUp(k)
--   end
--   info = (info .. '+' .. strkit.firstUp(key))

--   table.insert(hotkey.registeredHotkey, {
--       key = info,
--       desc = desc
--   })
--   hs.printf('[注册快捷键]%s -> %s', info, desc)
-- end

-- function hotkey.bindWithCtrl(key, desc, fn)
--   hotkey.bind({ 'CTRL'}, key, desc, fn)
-- end

-- function hotkey.bindWithCmd(key, desc, fn)
--   hotkey.bind({ 'CMD'}, key, desc, fn)
-- end

-- function hotkey.bindWithShift(key, desc, fn)
--   hotkey.bind({ 'Shift'}, key, desc, fn)
-- end

-- function hotkey.bindWithAlt(key, desc, fn)
--   hotkey.bind({ 'Alt'}, key, desc, fn)
-- end

-- function hotkey.bindWithCmdAlt(key, desc, fn)
--   hotkey.bind({ 'CMD', 'ALT' }, key, desc, fn)
-- end


-- function hotkey.bindWithCtrlCmd(key, desc, fn)
--   hotkey.bind({ 'CTRL', 'CMD' }, key, desc, fn)
-- end

-- function hotkey.bindWithCtrlCmdAlt(key, desc, fn)
--   hotkey.bind({ 'CTRL', 'CMD', 'ALT' }, key, desc, fn)
-- end

-- function hotkey.bindWithCtrlAlt(key, desc, fn)
--   hotkey.bind({ 'CTRL', 'ALT' }, key, desc, fn)
-- end

-- function hotkey.bindWithCtrlShift(key, desc, fn)
--   hotkey.bind({ 'CTRL', 'SHIFT' }, key, desc, fn)
-- end

-- function hotkey.bindWithCtrlShiftCmd(key, desc, fn)
--   hotkey.bind({ 'CTRL', 'SHIFT', 'CMD' }, key, desc, fn)
-- end

-- function hotkey.bindWithCtrlShiftAlt(key, desc, fn)
--   hotkey.bind({ 'CTRL', 'SHIFT', 'ALT' }, key, desc, fn)
-- end

-- function hotkey.bindWithShiftAlt(key, desc, fn)
--   hotkey.bind({ 'SHIFT', 'ALT' }, key, desc, fn)
-- end

-- function hotkey.bindWithShiftCmd(key, desc, fn)
--   hotkey.bind({ 'SHIFT', 'CMD' }, key, desc, fn)
-- end

-- function hotkey.bindWithShiftCmdAlt(key, desc, fn)
--   hotkey.bind({ 'SHIFT', 'CMD', 'ALT' }, key, desc, fn)
-- end

-- hotkey.bindWithCtrlCmdAlt('K', '显示所有快捷键', function()
--   allHotKey = ""
--   for _, v in pairs(hotkey.registeredHotkey) do
--       allHotKey = allHotKey .. '▶︎ (' .. v.key .. ') ☞' .. v.desc .. '\n'
--   end
--   hs.dialog.blockAlert("已注册的快捷键", allHotKey, "我知道了")
-- end)

-- local function move(x, y, w, h)
--     return function()
--         win = hs.window.focusedWindow()
--         if win then
--             win_f = win:frame()
--             screen_f = win:screen():frame()
--             print('input: x='..x..',y='..y..',w='..w..',h='..h)
--             print('screen: x='..screen_f.x..',y='..screen_f.y..',w='..screen_f.w..',h='..screen_f.h)
--             print('begin_window: x='..win_f.x..',y='..win_f.y..',w='..win_f.w..',h='..win_f.h)
--             print('win_f.x = screen_f.w * x + screen_f.x -> '.. screen_f.w * x + screen_f.x)
--             print('win_f.y = screen_f.h * y -> '.. screen_f.h * y)
--             print('win_f.w = screen_f.w * w -> '.. screen_f.w * w)
--             print('win_f.h = screen_f.h * h -> '.. screen_f.h * h)

--             win_f.x = screen_f.w * x + screen_f.x
--             win_f.y = screen_f.h * y
--             win_f.w = screen_f.w * w
--             win_f.h = screen_f.h * h

--             print('end_window: x='..win_f.x..',y='..win_f.y..',w='..win_f.w..',h='..win_f.h)
--             win:setFrame(win_f, 0)
--         end
--     end
-- end

-- hotkey.bindWithCtrlShift('Up', '[窗口管理]向上移动窗口', move(0, 0, 1, 0.5))
-- hotkey.bindWithCtrlShift('Right', '[窗口管理]向右移动窗口', move(0.5, 0, 0.5, 1))
-- hotkey.bindWithCtrlShift('Down', '[窗口管理]向下移动窗口', move(0, 0.5, 1, 0.5))
-- hotkey.bindWithCtrlShift('Left', '[窗口管理]向左移动窗口', move(0, 0, 0.5, 1))
-- hotkey.bindWithCtrlShift('M', '[窗口管理]最大化窗口', move(0, 0, 1, 1))
-- hotkey.bindWithCtrlShift('C', '[窗口管理]居中窗口', move(0.05, 0.08, 0.9, 0.9))
-- hotkey.bindWithCmdAlt('Left', '[窗口管理]向左上角移动窗口', move(0, 0, 0.5, 0.5))
-- hotkey.bindWithShiftCmdAlt('Left', '[窗口管理]向左下角移动窗口', move(0, 0.5, 0.5, 0.5))
-- hotkey.bindWithCmdAlt('Right', '[窗口管理]向右上角移动窗口', move(0.5, 0, 0.5, 0.5))
-- hotkey.bindWithShiftCmdAlt('Right', '[窗口管理]向右下角移动窗口', move(0.5, 0.5, 0.5, 0.5))