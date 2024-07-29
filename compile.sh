rm split_config.arm64_v8a.apk
rm fucked.apk
apktool b split_config.arm64_v8a -o fucked.apk
zipalign -p -f 4 fucked.apk split_config.arm64_v8a.apk
apksigner sign --ks fuck.keystore --ks-pass file:my-passfile.txt --v1-signing-enabled true --v2-signing-enabled true split_config.arm64_v8a.apk
adb install base.apk
adb install-multiple -p com.github.4l2f split_config.arm64_v8a.apk split_config.xxhdpi.apk split_config.pt.apk
