#! /usr/bin/env bash

JLS_DIR="$HOME/.vscode/extensions/redhat.java-0.26.0/server"

exec java -Declipse.application=org.eclipse.jdt.ls.core.id1 -Declipse.application=org.eclipse.jdt.ls.core.id1 -Declipse.product=org.eclipse.jdt.ls.core.product -noverify -Xms1G -jar $JLS_DIR/plugins/org.eclipse.equinox.launcher_1.5.0.v20180512-1130.jar -configuration $JLS_DIR/config_mac -data $HOME/devel
