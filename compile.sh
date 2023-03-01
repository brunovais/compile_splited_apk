rm split_config.arm64_v8a.apk
rm fucked.apk
apktool b to_hack -o fucked.apk
zipalign -p -f 4 fucked.apk split_config.arm64_v8a.apk
apksigner sign --ks fuck.keystore --ks-pass file:my-passfile.txt --v1-signing-enabled true --v2-signing-enabled true split_config.arm64_v8a.apk
adb install -r -t --abi arm64-v8a base.apk
adb install-multiple -r -t -p br.com.rodrigokolb.realdrum split_config.arm64_v8a.apk split_config.xhdpi.apk split_config.pt.apk


#adb install -r -t 