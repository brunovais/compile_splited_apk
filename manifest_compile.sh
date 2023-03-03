rm base.apk
apktool b base -o base.apk
apksigner sign --ks fuck.keystore --ks-pass file:my-passfile.txt --v1-signing-enabled true --v2-signing-enabled true base.apk
./compile.sh

# TAG DEBUGAVEL TRUE 64006500 62007500 67006700 61006200 6C006500 000008
#grep -a "lib/arm64_v8a/" split_config.arm64_v8a.apk