#!/bin/sh
# Jazzy doc generator

ROOT_PATH = "./.."
AUTHOR_NAME = "Manish Pandey"
OUTPUT_DIR = "$ROOT_PATH/docs" # from TabBar proj.
GITHUB_LINK = "https://github.com/LenisDev/TabBar"
MODULE_NAME = "TabBar"
README_FILE_PATH = "$ROOT_PATHREADME.md"
PODSPEC_FILE_PATH = "$ROOT_PATH/Tab.podspec"
THEME_NAME= "fullwidth"


jazzy --min-acl internal \
        -o $OUTPUT_DIR
        -a $AUTHOR_NAME
        -m $MODULE_NAME
        -g $GITHUB_LINK
        --readme $README_FILE_PATH
        --podspec $PODSPEC_FILE_PATH
        --theme $THEME_NAME
