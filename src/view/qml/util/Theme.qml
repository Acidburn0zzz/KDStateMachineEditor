/*
  Theme.qml

  This file is part of the KDAB State Machine Editor Library.

  Copyright (C) 2014 Klarälvdalens Datakonsult AB, a KDAB Group company, info@kdab.com.
  All rights reserved.
  Author: Kevin Funk <kevin.funk@kdab.com>

  Licensees holding valid commercial KDAB State Machine Editor Library
  licenses may use this file in accordance with the KDAB State Machine Editor
  Library License Agreement provided with the Software.

  This file may be distributed and/or modified under the terms of the
  GNU Lesser General Public License version 2.1 as published by the
  Free Software Foundation and appearing in the file LICENSE.LGPL.txt included.

  This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
  WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.

  Contact info@kdab.com if any conditions of this licensing are not
  clear to you.
*/

pragma Singleton

import QtQuick 2.0

QtObject {
    /**
     * Change alpha channel of color @p color by alpha value @p alpha
     */
    function alphaTint(color, alpha) {
        return Qt.rgba(color.r, color.g, color.b, alpha);
    }

    readonly property color highlightForegroundColor: "#CACACA";
    readonly property color highlightBackgroundColor: "#545454";
    readonly property color activeHighlightColor: "white";
    readonly property color activeHighlightColor_Glow: "white";

    readonly property color compositeStateLabelBackgroundColor: "#363636";
    readonly property color compositeStateLabelFontColor: "white";
    readonly property color compositeStateBackgroundColor_Lightest: "#525252";
    readonly property color compositeStateBackgroundColor_Darkest: "#444444";
    readonly property color stateBackgroundColor: "#262626";
    readonly property color stateBorderColor: "#BABABA";
    readonly property color stateBorderColor_Active: "#DADADA";
    readonly property color stateBorderColor_Glow: "#4589AA";
    readonly property color stateLabelFontColor: "white";
    readonly property color transitionEdgeColor: "#BABABA";
    readonly property color transitionEdgeColor_Active: "#DADADA";
    readonly property color transitionLabelFontColor: "#BABABA";
    readonly property color viewBackgroundColor: "#262626";
}