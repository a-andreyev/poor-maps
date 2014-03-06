/* -*- coding: utf-8-unix -*-
 *
 * Copyright (C) 2014 Osmo Salomaa
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import QtLocation 5.0

MapQuickItem {
    id: tile
    anchorPoint.x: 0
    anchorPoint.y: 0
    height: image.height
    width: image.width
    property int uid
    property string uri
    sourceItem: Item {
        Image {
            id: image
            asynchronous: true
            cache: false
            fillMode: Image.Pad
            height: 256
            smooth: false
            source: tile.uri
            sourceSize.height: 256
            sourceSize.width: 256
            width: 256
        }
    }
}