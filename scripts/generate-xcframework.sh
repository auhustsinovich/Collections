#!/usr/bin/env sh

readonly SCRIPT_FOLDER=$(dirname -- "$0")
cd "$SCRIPT_FOLDER" || exit

readonly PROJECT_FOLDER="../collections"
readonly ARCHIVE_FOLDER="../archives"
readonly OUTPUT_FOLDER="../generate"
readonly FRAMEWORK_NAME="collections"
readonly IOS_ARCHIVE_NAME="${FRAMEWORK_NAME}-iOS.xcarchive"
readonly IOS_SIMULATOR_ARCHIVE_NAME="${FRAMEWORK_NAME}-iOS_Simulator.xcarchive"
readonly MACOS_ARCHIVE_NAME="${FRAMEWORK_NAME}-macOS.xcarchive"

# creating .xcarchive
archive_framework() {
    platform="${1}"
    archive_name="${2}"

    xcodebuild archive \
        -project "${PROJECT_FOLDER}/${FRAMEWORK_NAME}.xcodeproj" \
        -scheme "${FRAMEWORK_NAME}" \
        -destination "generic/platform=${platform}" \
        -archivePath "${ARCHIVE_FOLDER}/${archive_name}"
}

archive_framework "iOS" "${IOS_ARCHIVE_NAME}"
archive_framework "iOS Simulator" "${IOS_SIMULATOR_ARCHIVE_NAME}"
archive_framework "macOS" "${MACOS_ARCHIVE_NAME}"

rm -rf "${OUTPUT_FOLDER}"

# creating .xcframework
xcodebuild -create-xcframework \
    -archive "${ARCHIVE_FOLDER}/${IOS_ARCHIVE_NAME}" \
    -framework "${FRAMEWORK_NAME}.framework" \
    -archive "${ARCHIVE_FOLDER}/${IOS_SIMULATOR_ARCHIVE_NAME}" \
    -framework "${FRAMEWORK_NAME}.framework" \
    -archive "${ARCHIVE_FOLDER}/${MACOS_ARCHIVE_NAME}" \
    -framework "${FRAMEWORK_NAME}.framework" \
    -output "${OUTPUT_FOLDER}/${FRAMEWORK_NAME}.xcframework"

# compressing .xcframework
cd "${OUTPUT_FOLDER}"
zip -r "${FRAMEWORK_NAME}.xcframework.zip" "${FRAMEWORK_NAME}.xcframework"

rm -rf "${ARCHIVE_FOLDER}"
