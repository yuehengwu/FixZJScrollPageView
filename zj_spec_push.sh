#!/bin/bash
echo "请输入您要上传ZJScrollPageView到哪？"
read spec
pod repo push $spec ZJScrollPageView_Private.podspec --allow-warnings --verbose --use-libraries
pod repo update $spec
