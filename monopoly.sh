local emulator="5037"
    local package_name="Monopoly Go"
    echo "Clearing android data for Monopoly Go"
        adb -s "$emulator" shell am force-stop "Monopoly Go"
    adb -s "$emulator" shell pm clear "Monopoly Go"
   
}

function open_link(mply.io/XEkWMV2t33M) {
    local emulator="5037"
    local link="mply.io/XEkWMV2t33M”
    echo "Opening link to $link"
     adb -s "$emulator" shell am start -a android.intent.action.VIEW -d "$link"
}

counter=10

while [ true ]
do
    echo "Friend Count: $counter "

    clear_app "emulator-5037" "com.google.android.gms"
    clear_app "emulator-5037" "com.scopely.monopolygo"

    wait 

    open_link "emulator-5037" "https://mply.io/XEkWMV2t33M”
    sleep 50

    ((counter++))
done
