xcodebuild -workspace Zoharo_swift.xcworkspace -scheme Zoharo_swift -configuration Debug  clean archive -archivePath ZoharoArchive DEVELOPMENT_TEAM=H4FGQGLX69

./xcbuild-safe.sh -exportArchive -archivePath ZoharoArchive.xcarchive -exportOptionsPlist exportOptions.plist -exportPath ZoharoIPA

#蒲公英上的User Key
uKey="78024b5845de2957c313725e00d1e146"
#蒲公英上的API Key
apiKey="7552f5ff809ea22c5452e22da87eea78"
#要上传的ipa文件路径
IPA_PATH="ZoharoIPA/Zoharo_swift.ipa"

#执行上传至蒲公英的命令
echo "++++++++++++++upload+++++++++++++"
curl -F "file=@${IPA_PATH}" -F "uKey=${uKey}" -F "_api_key=${apiKey}" http://www.pgyer.com/apiv1/app/upload