/*
  ModifyDefaultStateCommand.h

  This file is part of the KDAB State Machine Editor Library.

  Copyright (C) 2014 Klarälvdalens Datakonsult AB, a KDAB Group company, info@kdab.com.
  All rights reserved.
  Author: Volker Krause <volker.krause@kdab.com>

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

#ifndef KDSME_COMMAND_MODIFYDEFAULTSTATECOMMAND_H
#define KDSME_COMMAND_MODIFYDEFAULTSTATECOMMAND_H

#include "command.h"

#include <QPointer>

namespace KDSME {

class State;
class HistoryState;

class KDSME_CORE_EXPORT ModifyDefaultStateCommand : public Command
{
    Q_OBJECT
public:
    explicit ModifyDefaultStateCommand(HistoryState* state, State* defaultState, QUndoCommand* parent = nullptr);
    ~ModifyDefaultStateCommand();

    int id() const Q_DECL_OVERRIDE;
    void undo() Q_DECL_OVERRIDE;
    void redo() Q_DECL_OVERRIDE;

private:
    QPointer<HistoryState> m_state;
    QPointer<State> m_defaultState;
    QPointer<State> m_oldDefaultState;
};

}

#endif // KDSME_COMMAND_MODIFYDEFAULTSTATECOMMAND_H
