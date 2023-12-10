# dev-container-arm

Common image for the ARM development used in Dev Container in VSCode.

## How to use this container

Use this image to add following content to your `devcontainer.json` file in `.devcontainer` folder in VSCode project.

```json
    "image": "khose/dev-container-arm:latest",
```

## How to setup with this container

You can add a configuration like following to your `c_cpp_properties.json` file in `.vscode` folder in VSCode.

```json
{
    "name": "arm",
    "includePath": [
        "${workspaceFolder}/include"
    ],
    "defines": [
        "EXAMPLE_DEF",
    ],
    "macFrameworkPath": [],
    "compilerPath": "/usr/bin/arm-none-eabi-gcc",
    "cStandard": "c17",
    "cppStandard": "c++17",
    "intelliSenseMode": "linux-gcc-arm",
    "mergeConfigurations": false,
    "browse": {
        "path": [
            "${workspaceFolder}"
        ],
        "limitSymbolsToIncludedHeaders": true
    }
},
```
