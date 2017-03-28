local usbWatcher = nil

function usbDeviceCallback(data)
    print ( data["productName"] )

    if (data["productName"] == "USB Keyboard") then
        if (data["eventType"] == "added") then
		        hs.execute('/bin/sh /Users/ttiurani/.config/karabiner/swap-active-profile.sh')
        elseif (data["eventType"] == "removed") then
		        hs.execute('/bin/sh /Users/ttiurani/.config/karabiner/swap-active-profile.sh')
        end
    end
end

usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
usbWatcher:start()

