// Copyright 2015 Huan Du. All rights reserved.
// Use of this source code is governed by a MIT
// license that can be found in the LICENSE file.

#include "go_asm.h"
#include "go_tls.h"
#include "textflag.h"

TEXT ·getg(SB), NOSPLIT, $0-8
    get_tls(R0)
    MOVQ R0, ret+0(FP)
    RET