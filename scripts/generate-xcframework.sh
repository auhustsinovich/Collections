#!/usr/bin/env sh

readonly SCRIPT_FOLDER=$(dirname -- "$0")
cd "$SCRIPT_FOLDER" || exit

readonly PROJECT_FOLDER="../collections"
readonly ARCHIVE_FOLDER="../archives"
readonly OUTPUT_FOLDER="../generate"
readonly FRAMEWORK_NAME="collections"
readonly IOS_ARCHIVE_NAME="${FRAMEWORK_NAME}-iOS.xcarchive"
readonly MACOS_ARCHIVE_NAME="${FRAMEWORK_NAME}-macOS.xcarchive"

# creating .xcarchive
archive_framework() {
    platform="${1}"

    xcodebuild archive \
        -project "${PROJECT_FOLDER}/${FRAMEWORK_NAME}.xcodeproj" \
        -scheme "${FRAMEWORK_NAME}" \
        -destination "generic/platform="${platform}"" \
        -archivePath ""${ARCHIVE_FOLDER}"/"${FRAMEWORK_NAME}"-"${platform}""
}

archive_framework iOS
archive_framework macOS

rm -rf "${OUTPUT_FOLDER}"

# creating .xcframework
xcodebuild -create-xcframework \
    -archive ""${ARCHIVE_FOLDER}"/"${FRAMEWORK_NAME}"-iOS.xcarchive" \
    -framework ""${FRAMEWORK_NAME}".framework" \
    -archive ""${ARCHIVE_FOLDER}"/"${FRAMEWORK_NAME}"-macOS.xcarchive" \
    -framework ""${FRAMEWORK_NAME}".framework" \
    -output ""${OUTPUT_FOLDER}"/"${FRAMEWORK_NAME}".xcframework"

# compressing .xcframework
cd "${OUTPUT_FOLDER}"
zip -r "${FRAMEWORK_NAME}.xcframework.zip" "${FRAMEWORK_NAME}.xcframework"

rm -rf "${ARCHIVE_FOLDER}"
