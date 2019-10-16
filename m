Return-Path: <usb-storage+bncBC4YX2O26AKBBN7LTTWQKGQENWQIKEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc48.google.com (mail-yw1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7BCD9569
	for <lists+usb-storage@lfdr.de>; Wed, 16 Oct 2019 17:22:33 +0200 (CEST)
Received: by mail-yw1-xc48.google.com with SMTP id a144sf18938789ywe.17
        for <lists+usb-storage@lfdr.de>; Wed, 16 Oct 2019 08:22:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571239352; cv=pass;
        d=google.com; s=arc-20160816;
        b=f7+SkXOmOHljgFHHz+Tfi8eh0cxvBO1tzg9MVLhwUcDHSfDchWwB96CWNUcqM0bXMf
         lmkdk56FZRbZxuCte97VO4VlSrsAG3Z5iVNMZjkCCTP56fHxPyJyHSywtAG71RgqBEpn
         MeQNA792/+SOWVW26UAbhJFpjZVuq7Wo8QsTRDRmYtU8ARmvZkCdruxO2L8BvhixAMQc
         pPWdrWFuq7k2tahsYmI87U8J91qCZZxGanUVoH1SG++aTUjv/nNzVZNu45Wij1EHEA4l
         kvPK3JfhhCJNs64zDoWRSDNN14LWW58L2pQ0PqIcQx4F3u7ZryvaaK+o1fmsxotGAMPd
         c8cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=xYbmK2hXd9kwPalxfR6QCMqIrmdlkvIj+3RENWw9ODY=;
        b=xFKpvhHiIjgDUYrua6MOGS4TnqzUNqJzKsdOM8ATKma9+VRrJD8vJHadADekDAfGWi
         KcAFxm7r7PgbsRGqtKaoaUz/Sbimd0FVb+wQRam6e7rSNXIRHlLvVjrhBTrg6mozbEm/
         Q5t0IxEx2r0JZqsH9XPGPVY7TrZ5xTM/FTfsFsU9FwoBe3pO3cLhE7D46n50uk9dFzM1
         bJALpKG9GHC8R93zI0YcpzjtZOMIlZgkx2jEx5iCbdWlvK7kTgsOxNQt+WxFIS9luj0I
         HLRbFQV6aLzG9XpqsR0PANtpBp/BA/bKsvC1czVOCd3RXirULa0rzCfzq560qHEn4q1j
         gx/g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OYDKGW9d;
       spf=pass (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=zzoru007@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xYbmK2hXd9kwPalxfR6QCMqIrmdlkvIj+3RENWw9ODY=;
        b=GRC5x2z9hrR9ZUaXNkx0yn3fXhEZQNmtAcgeJjFBSEQMnJ2fuWHvg7j+pBhuQFgC3J
         fhQbkmUocWX9Nu5xORLAp7He0k1cpiKZKgmtkQbpxQKKl945/P4+KV8RRl32KljY6Pos
         HJ7+n2dAs9b7O0VtE0dmhBsP32Hkg3A8nW4WI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xYbmK2hXd9kwPalxfR6QCMqIrmdlkvIj+3RENWw9ODY=;
        b=tijzAT3ANDanQ/jFSIUPtwQmuW7oIaaYyvUXVS+E3zemaHUbD1cidqmNJElHhG1MlI
         Sv/eEAVGhqdoHzYcygf2xy37ICC/+YTPXJM/K5/G8e5bMaYXqSEo2lFyn0FrUKDaYEi1
         sgi8avkCujrj90QeJwMXeGb3UszEt7RUtXXbDaVm3cxWRmRJvAVAGp7G4qF8KrvU/oiV
         b5HnN9VOPZaJM8qQgowQQHGZnDWr9RMXtuSs8BjfNweYVt3yRGAA2nS5afQoTXJ/N1s9
         Ks/ha2AgkHJ/W5dTOh/Q9svawv/DPe1lV/6wM3lnF76Y2Se7kDjHmuLX074Y4yGatYd3
         lc5Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVrp9+G9qcM0VC+8P9r2wfUW8cHLO23cJ64iUAgsDEjxL82/RoF
	h0z+pirVQTbzsDmTeFMetDqarQ==
X-Google-Smtp-Source: APXvYqyZPbn3KfR14UpxVCJZUyMlwtvM4ZRlGgU/vkEa5onRExaRqd0I/mWDTQ5R5jMlfgfZVOanLg==
X-Received: by 2002:a81:2d43:: with SMTP id t64mr20195133ywt.372.1571239352220;
        Wed, 16 Oct 2019 08:22:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a81:e81:: with SMTP id 123ls3674836ywo.15.gmail; Wed, 16 Oct
 2019 08:22:31 -0700 (PDT)
X-Received: by 2002:a0d:db51:: with SMTP id d78mr20696802ywe.310.1571239351748;
        Wed, 16 Oct 2019 08:22:31 -0700 (PDT)
Received: by 2002:a81:a705:0:0:0:0:0 with SMTP id e5msywh;
        Wed, 16 Oct 2019 02:59:09 -0700 (PDT)
X-Received: by 2002:a25:790d:: with SMTP id u13mr26928883ybc.104.1571219949245;
        Wed, 16 Oct 2019 02:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571219949; cv=none;
        d=google.com; s=arc-20160816;
        b=ZmIIOpgNwt0Q8P9xHJlqse/VpHB75J1RNmc/jx880zj1N/obpi/TolckfbOkXXcGlQ
         y1YivBjbrO6VIRDni/YElHWXFB+0D+WIuskKS8jNEsVfRn+cI2RULDlzRdy8WDYLUUpO
         +Je+9s0fO0oRf0y+Dxyhr2HL0cvkqgRIXZsOQf0yaDej3l/43lSVY234fTePog5UQN7U
         JMMw81CbItnAtpFnrOsV9eK+V9BqX9hv/mXEDt8qS4wW6BVWMYlEojYXkdmspTQonypd
         CxGtx8kZ+Eyrrb+h6IUwHYW7jPkq8iUT2aVqF3aMwBXLElKSARzRNSWOBYG6ZpqbU4Hn
         D9Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ZMhs3phMDot/5Pzq60tp9yVwrBzhHhVMNpUKqIJOnzg=;
        b=Cx9BBlc2yCqjIAOtE56qF7mb0clhV1bzFHvIJwmXGLzxKRXUHN3wjfQl+2ZGlYDcz+
         jyJo6HIWnK5HsS9bYvvu5NUf30v5J0FV97GtX3SduiG4p+76K/W3JK6KxIdov4qRkXgr
         4lz/UuwknMjKaKyV4pGP3A3ZBmKUSinTJqL1wYJPahjVBs2V0BU3lA/sRN20p+CfBNWr
         q5y1Rk2A/N7sj+gklX3pRkJfv0MM8IKK9UtkcODbbz3lGJDxCAwU2UXAvRkTx55jiS00
         XzjnwT87qnbzi+iP3XaE94tnKRadx2s6UUBbnM+cu7jfXX4JdWfgsbjAhArLs3S/J9Vx
         7lYg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OYDKGW9d;
       spf=pass (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=zzoru007@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id h142sor14518074ywc.71.2019.10.16.02.59.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 16 Oct 2019 02:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a0d:fa01:: with SMTP id k1mr20036137ywf.326.1571219948688;
 Wed, 16 Oct 2019 02:59:08 -0700 (PDT)
MIME-Version: 1.0
From: zzoru <zzoru007@gmail.com>
Date: Wed, 16 Oct 2019 02:58:57 -0700
Message-ID: <CALRZ7UuS10CvHvDxMyFyN_wZF_xvzrABT-E_NRt1jKKtXk6Rng@mail.gmail.com>
Subject: [usb-storage] WARNING: ODEBUG bug in del_timer
To: stern@rowland.harvard.edu, gregkh@linuxfoundation.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	LKML <linux-kernel@vger.kernel.org>
Cc: dokyungs@uci.edu, syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: zzoru007@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OYDKGW9d;       spf=pass
 (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=zzoru007@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

We found the following crash on Linux 5.4-rc1 (Not patched in currnet
HEAD commit 3b1f00aceb7a67bf079a5a64aa5c6baf78a8f442)
with our customized syzkaller.

ODEBUG: assert_init not available (active state 0) object type:
timer_list hint: 0x0
WARNING: CPU: 0 PID: 141 at linux/lib/debugobjects.c:484
debug_print_object+0x15e/0x220 linux/lib/debugobjects.c:481
Kernel panic - not syncing: panic_on_warn set ...
CPU: 0 PID: 141 Comm: kworker/0:3 Not tainted 5.4.0-rc1 #5
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
rel-1.12.1-0-ga5cab58e9a3f-prebuilt.qemu.org 04/01/2014
Workqueue: usb_hub_wq hub_event
Call Trace:
 __dump_stack linux/lib/dump_stack.c:77 [inline]
 dump_stack+0x7c/0xbb linux/lib/dump_stack.c:113
 panic+0x205/0x48e linux/kernel/panic.c:220
 __warn+0x19c/0x1c0 linux/kernel/panic.c:581
 report_bug+0x1a9/0x2b0 linux/lib/bug.c:195
 fixup_bug.part.11+0x32/0x80 linux/arch/x86/kernel/traps.c:179
 fixup_bug linux/arch/x86/include/asm/irqflags.h:54 [inline]
 do_error_trap+0xf5/0x160 linux/arch/x86/kernel/traps.c:272
 do_invalid_op+0x31/0x40 linux/arch/x86/kernel/traps.c:291
 invalid_op+0x23/0x30 linux/arch/x86/entry/entry_64.S:1028
RIP: 0010:debug_print_object+0x15e/0x220 linux/lib/debugobjects.c:481
Code: 3c dd 80 05 9a 85 48 89 fa 48 c1 ea 03 80 3c 02 00 75 7f 48 8b
14 dd 80 05 9a 85 4c 89 ee 48 c7 c7 00 fb 99 85 e8 d2 a7 43 ff <0f> 0b
83 05 cd bd 70 05 01 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e c3
RSP: 0018:ffff888017017668 EFLAGS: 00010282
RAX: 0000000000000000 RBX: 0000000000000005 RCX: ffffffff814153b0
RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffff88801a41f730
RBP: 0000000000000001 R08: ffffed1003483ee7 R09: ffffed1003483ee7
R10: 0000000000000001 R11: ffffed1003483ee6 R12: ffffffff86908460
R13: ffffffff859a01a0 R14: ffffffff812b6bc0 R15: ffff888017fb0420
 debug_object_assert_init+0x290/0x430 linux/lib/debugobjects.c:866
 debug_timer_assert_init linux/kernel/time/timer.c:729 [inline]
 debug_assert_init linux/kernel/time/timer.c:774 [inline]
 del_timer+0x67/0xf0 linux/kernel/time/timer.c:1196
 realtek_cr_destructor+0x5a/0x90 linux/drivers/usb/storage/realtek_cr.c:937
 usb_stor_release_resources linux/drivers/usb/storage/usb.c:817 [inline]
 release_everything+0xc0/0x2c0 linux/drivers/usb/storage/usb.c:879
 usb_unbind_interface+0x19f/0x810 linux/drivers/usb/core/driver.c:423
 __device_release_driver linux/drivers/base/dd.c:1134 [inline]
 device_release_driver_internal+0x429/0x4f0 linux/drivers/base/dd.c:1165
 bus_remove_device+0x2d1/0x490 linux/drivers/base/bus.c:532
 device_del+0x403/0xaa0 linux/drivers/base/core.c:2375
 usb_disable_device+0x1d7/0x5f0 linux/drivers/usb/core/message.c:1237
 usb_disconnect+0x25a/0x840 linux/drivers/usb/core/hub.c:2199
 hub_port_connect linux/drivers/usb/core/hub.c:4949 [inline]
 hub_port_connect_change linux/drivers/usb/core/hub.c:5213 [inline]
 port_event linux/drivers/usb/core/hub.c:5359 [inline]
 hub_event+0x11f5/0x3610 linux/drivers/usb/core/hub.c:5441
 process_one_work+0x8b5/0x17c0 linux/kernel/workqueue.c:2269
 worker_thread+0x82/0xb80 linux/kernel/workqueue.c:2415
 kthread+0x325/0x3e0 linux/kernel/kthread.c:255
 ret_from_fork+0x24/0x30 linux/arch/x86/entry/entry_64.S:352
Dumping ftrace buffer:
   (ftrace buffer empty)
Kernel Offset: disabled

Following is my analysis of this bug (Just add some comments in source code):
https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L887-L891
static int realtek_cr_autosuspend_setup(struct us_data *us)
{
    ...
    if (retval != STATUS_SUCCESS) {
        usb_stor_dbg(us, "Read status fail\n");
        return -EIO; // Error!
    }
    ...
    timer_setup(&chip->rts51x_suspend_timer, rts51x_suspend_timer_fn,
0); // rts51x_suspend_timer wasn't be initialized. When
realtek_cr_autosuspend_setup just returns an error.
}


https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L1010-L1012

#ifdef CONFIG_REALTEK_AUTOPM
if (ss_en)
    realtek_cr_autosuspend_setup(us); // There isn't any check about
return code.
#endif

https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L936-L939
static void realtek_cr_destructor(void *extra)
{
    ...
    if (ss_en) {
        del_timer(&chip->rts51x_suspend_timer); // Ouch! :(
        chip->timer_expires = 0;
    }
    ...
}

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CALRZ7UuS10CvHvDxMyFyN_wZF_xvzrABT-E_NRt1jKKtXk6Rng%40mail.gmail.com.
