@echo off

if %1 == dev (
    gradle -q setDevVersion
    gradle build
) else ( if %1 == patch (
    gradle -q incrementPatch
    gradle build
    ) else ( if %1 == minor (
        gradle -q incrementMinor
        gradle build
        ) else ( if %1 == major (
            gradle -q incrementMajor
            gradle build
            ) else (
                echo Can't detect proper args. Exiting ...
                goto end
            )
        )
    )
)
:end
