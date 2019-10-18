Return-Path: <usb-storage+bncBCMIZB7QWENRBTNOU7WQKGQEOL3BFQI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id A26DDDC83C
	for <lists+usb-storage@lfdr.de>; Fri, 18 Oct 2019 17:16:31 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id z21sf6155314qtq.21
        for <lists+usb-storage@lfdr.de>; Fri, 18 Oct 2019 08:16:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571411790; cv=pass;
        d=google.com; s=arc-20160816;
        b=viJEBwf8PCEtcXt5+HVGYnxFqZqCn0WkMrpNENykJppk35669jzS0fVvHG5hY7F4Ne
         BTZkyxVj1T7mVwVLCkVgGmeFT/8KXOCM+5aAEiPOKtMuLgOYqoFiO7W8leUy2LXR7D09
         opHgqXWp988+TZtv7Rv64o/SG9VtDpIebF+B7GIlqH0ZNcFaDwGYqRS0ooddMz31FCd2
         QweOrNpFvqILuzrYcQctacGwiRmmv57NP+91f792Ng5qLRWd8Lv03QRuU8VP2bvPIClh
         ONqaQ8W/Ssr4KNi7bycHgnGOAL4kgfjtCqtInU3kl0rJzMjRQeN59dB48vOo117aBGeU
         xyMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Nko624U588DrsHnJKVx0iQBMDHLcFWRMYYGHUEkbOA4=;
        b=u27ZcMLG2KdLKqcDSDVZoD5FpkryBea/ofNGSQVJmK0H6ktys9bRKDCwSsorvDIO26
         6sLnPb5vkzikr/1lWpU2nCuWlHsgit5AjRd3P74JrgyBVwhCBCQCTavhzyTETHQwyHqe
         CNM/GJu6TS5gmT53Evuuefy1gFAJt0eL3Hcp6iQL5KI5Y+N9re82dfUInDVIyiZLMmrZ
         OD0Bc5sHHh8Kn5BHDXPM10INHnTiiKIOJTXx8jn7v3nc702Ea0kXbvLTeEP+mJE4XHU8
         zBXyWafKJ1vQZupUAnbVn1rKfW1Ed0ZTmtwDj3OT/NCgNalspD9Xb95GrAoeUfdnRdqy
         134g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ta4janmU;
       spf=pass (google.com: domain of dvyukov@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nko624U588DrsHnJKVx0iQBMDHLcFWRMYYGHUEkbOA4=;
        b=NfD78+fUB1wH95BP76A9FbxIpWngmSXkGTESTgSZ9FdHiGm2kOWlT3RWEZYdj94ZRN
         b0dlIT8RG5NF6EHqCKWxctRFZE5qPDMo+ZLyq3jtIizYxQMUdO69N2/KxtjJHafN1yA9
         algLCsIat3Ypy/Jyc6XRQRVPA0v5IPjGzFaJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Nko624U588DrsHnJKVx0iQBMDHLcFWRMYYGHUEkbOA4=;
        b=iHGRUY89yFt55YuzhLfLVPHl3vfI9JgSLjIO4Fo/ZgJrjG4pXYps5djm8dyBOr1Vqh
         pRKJsqvAsdkBGqP7u5EqDODToBc+HKHYYf1azZ0IHaEygv8sveMPJafrRDrZcz3xmvbN
         CMP2zblddFZQQIFSIj5DfaloGrcfGEvaw0r81+SpfLLIMfzSWptyNGr6di9Au/dwZrNv
         OJUGl1PxnV2Iqj6+0X0pUtBF3qlJjSIGaxiotxIrMjR4ZHLg0PFXO7hrLJoICGGeNgQL
         rW5t4KttyvTCXLjDS8bX6YbNxi/5a0UvXP9B/B/yeR7JBtuNrOJpKbCbdwZUutTvGoGD
         Hjfw==
X-Gm-Message-State: APjAAAXvP9/JthyudxSxHt7Kp5Dpa+EJ3PkIV+lL+b8qXPeWuOC93dFm
	ZW339r8aUApYYvkIcbY9LvEl3w==
X-Google-Smtp-Source: APXvYqwWn4XRu7+yBmnUWxa4SFLzNFSEkqm6029Zs27GVW5Uq8hjiwIrG+K37VcJkl8Q46cla8rr/Q==
X-Received: by 2002:a05:6214:1887:: with SMTP id cx7mr10276653qvb.123.1571411790229;
        Fri, 18 Oct 2019 08:16:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:7342:: with SMTP id q2ls2008066qtp.11.gmail; Fri, 18 Oct
 2019 08:16:29 -0700 (PDT)
X-Received: by 2002:ac8:2609:: with SMTP id u9mr10449361qtu.130.1571411789875;
        Fri, 18 Oct 2019 08:16:29 -0700 (PDT)
Received: by 2002:a37:484b:0:0:0:0:0 with SMTP id v72msqka;
        Fri, 18 Oct 2019 02:33:59 -0700 (PDT)
X-Received: by 2002:ac8:2787:: with SMTP id w7mr8437258qtw.97.1571391239086;
        Fri, 18 Oct 2019 02:33:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571391239; cv=none;
        d=google.com; s=arc-20160816;
        b=XG4z42wEw8Asg/otsEfjSCuid8wiXzrLwXhww0sG4H1rV8ZZB9tNta2jAxgBXhaqXR
         fq2EZUzRIhOdiEI4k1BHjP/B6HgGKCXHu2CI7deOFGHbsjQR4ff+3mDWM3IEl8StjNP7
         B9GG+DXlQjueGXeXgAjK2tmzbEOnPEE0NW1/1H9UvukEDadu43zEloS6sZmbQcsfxmbM
         b1a95wA5HL1rBJy1EhdTkDMog9jfyUKA+u7rejNFkd32/vKDmOFyIvL+jHhH+C9p5Ku3
         sDz8avfQy8txTYclvcM/VD78/V+6QJ445qnLBAOi1slAaONwnY3RJ+GGx17C52I2Mb2z
         iuZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pE1CurwBz5WOK/o7RHgRSfOlxAfMbJGYVS5GAQqtQnM=;
        b=tKfRFlKLTgX2qpebL/Gg/nNGb32Ul1CmXh1q3hDVpDS0wu4hijHn5HF6Pxj9X25RJ7
         nH1XVIeDJFX0byzGUGa5EnnXxN/eRo2Gv5i4HzLs3uZkCQqfrH8nTt7CP6yl7jEDJzuJ
         86lnzv+8Z2/roYZWMUTKYrlVdT29a8UtBalIjg/DplLrFxe0NFiVwrpyycY7jRBGXQGV
         2k4lniNTEQ0oBkuBNmNs6jCs5M/vPV5rr2Cz4+gVuApVwXszOUQYpiKBFVt8Op3ODsal
         rXrY+D87BUZsqw1bSHsRJZUg687kVBtvHFKpjpIzMomSkLDUGn9SgVS2ZuvO4bwQpSzq
         /lNg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ta4janmU;
       spf=pass (google.com: domain of dvyukov@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id h1sor3565502qva.71.2019.10.18.02.33.59
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 18 Oct 2019 02:33:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a0c:c3c5:: with SMTP id p5mr8755561qvi.34.1571391238265;
 Fri, 18 Oct 2019 02:33:58 -0700 (PDT)
MIME-Version: 1.0
References: <CALRZ7UuS10CvHvDxMyFyN_wZF_xvzrABT-E_NRt1jKKtXk6Rng@mail.gmail.com>
In-Reply-To: <CALRZ7UuS10CvHvDxMyFyN_wZF_xvzrABT-E_NRt1jKKtXk6Rng@mail.gmail.com>
From: "'Dmitry Vyukov' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 18 Oct 2019 11:33:46 +0200
Message-ID: <CACT4Y+YxieAS3QrFk9ON6FiYnFzMO_CyzZBo9iTX25fLGzDj+g@mail.gmail.com>
Subject: [usb-storage] Re: WARNING: ODEBUG bug in del_timer
To: zzoru <zzoru007@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, USB list <linux-usb@vger.kernel.org>, 
	usb-storage@lists.one-eyed-alien.net, LKML <linux-kernel@vger.kernel.org>, 
	dokyungs@uci.edu, syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ta4janmU;       spf=pass
 (google.com: domain of dvyukov@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Wed, Oct 16, 2019 at 11:59 AM zzoru <zzoru007@gmail.com> wrote:
>
> We found the following crash on Linux 5.4-rc1 (Not patched in currnet
> HEAD commit 3b1f00aceb7a67bf079a5a64aa5c6baf78a8f442)
> with our customized syzkaller.

Hi zzoru,

Do you mind sharing what customizations you did to syzkaller? Are
these related to USB? I've noticed several reports were related to USB
subsystem.

> ODEBUG: assert_init not available (active state 0) object type:
> timer_list hint: 0x0
> WARNING: CPU: 0 PID: 141 at linux/lib/debugobjects.c:484
> debug_print_object+0x15e/0x220 linux/lib/debugobjects.c:481
> Kernel panic - not syncing: panic_on_warn set ...
> CPU: 0 PID: 141 Comm: kworker/0:3 Not tainted 5.4.0-rc1 #5
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> rel-1.12.1-0-ga5cab58e9a3f-prebuilt.qemu.org 04/01/2014
> Workqueue: usb_hub_wq hub_event
> Call Trace:
>  __dump_stack linux/lib/dump_stack.c:77 [inline]
>  dump_stack+0x7c/0xbb linux/lib/dump_stack.c:113
>  panic+0x205/0x48e linux/kernel/panic.c:220
>  __warn+0x19c/0x1c0 linux/kernel/panic.c:581
>  report_bug+0x1a9/0x2b0 linux/lib/bug.c:195
>  fixup_bug.part.11+0x32/0x80 linux/arch/x86/kernel/traps.c:179
>  fixup_bug linux/arch/x86/include/asm/irqflags.h:54 [inline]
>  do_error_trap+0xf5/0x160 linux/arch/x86/kernel/traps.c:272
>  do_invalid_op+0x31/0x40 linux/arch/x86/kernel/traps.c:291
>  invalid_op+0x23/0x30 linux/arch/x86/entry/entry_64.S:1028
> RIP: 0010:debug_print_object+0x15e/0x220 linux/lib/debugobjects.c:481
> Code: 3c dd 80 05 9a 85 48 89 fa 48 c1 ea 03 80 3c 02 00 75 7f 48 8b
> 14 dd 80 05 9a 85 4c 89 ee 48 c7 c7 00 fb 99 85 e8 d2 a7 43 ff <0f> 0b
> 83 05 cd bd 70 05 01 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e c3
> RSP: 0018:ffff888017017668 EFLAGS: 00010282
> RAX: 0000000000000000 RBX: 0000000000000005 RCX: ffffffff814153b0
> RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffff88801a41f730
> RBP: 0000000000000001 R08: ffffed1003483ee7 R09: ffffed1003483ee7
> R10: 0000000000000001 R11: ffffed1003483ee6 R12: ffffffff86908460
> R13: ffffffff859a01a0 R14: ffffffff812b6bc0 R15: ffff888017fb0420
>  debug_object_assert_init+0x290/0x430 linux/lib/debugobjects.c:866
>  debug_timer_assert_init linux/kernel/time/timer.c:729 [inline]
>  debug_assert_init linux/kernel/time/timer.c:774 [inline]
>  del_timer+0x67/0xf0 linux/kernel/time/timer.c:1196
>  realtek_cr_destructor+0x5a/0x90 linux/drivers/usb/storage/realtek_cr.c:937
>  usb_stor_release_resources linux/drivers/usb/storage/usb.c:817 [inline]
>  release_everything+0xc0/0x2c0 linux/drivers/usb/storage/usb.c:879
>  usb_unbind_interface+0x19f/0x810 linux/drivers/usb/core/driver.c:423
>  __device_release_driver linux/drivers/base/dd.c:1134 [inline]
>  device_release_driver_internal+0x429/0x4f0 linux/drivers/base/dd.c:1165
>  bus_remove_device+0x2d1/0x490 linux/drivers/base/bus.c:532
>  device_del+0x403/0xaa0 linux/drivers/base/core.c:2375
>  usb_disable_device+0x1d7/0x5f0 linux/drivers/usb/core/message.c:1237
>  usb_disconnect+0x25a/0x840 linux/drivers/usb/core/hub.c:2199
>  hub_port_connect linux/drivers/usb/core/hub.c:4949 [inline]
>  hub_port_connect_change linux/drivers/usb/core/hub.c:5213 [inline]
>  port_event linux/drivers/usb/core/hub.c:5359 [inline]
>  hub_event+0x11f5/0x3610 linux/drivers/usb/core/hub.c:5441
>  process_one_work+0x8b5/0x17c0 linux/kernel/workqueue.c:2269
>  worker_thread+0x82/0xb80 linux/kernel/workqueue.c:2415
>  kthread+0x325/0x3e0 linux/kernel/kthread.c:255
>  ret_from_fork+0x24/0x30 linux/arch/x86/entry/entry_64.S:352
> Dumping ftrace buffer:
>    (ftrace buffer empty)
> Kernel Offset: disabled
>
> Following is my analysis of this bug (Just add some comments in source code):
> https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L887-L891
> static int realtek_cr_autosuspend_setup(struct us_data *us)
> {
>     ...
>     if (retval != STATUS_SUCCESS) {
>         usb_stor_dbg(us, "Read status fail\n");
>         return -EIO; // Error!
>     }
>     ...
>     timer_setup(&chip->rts51x_suspend_timer, rts51x_suspend_timer_fn,
> 0); // rts51x_suspend_timer wasn't be initialized. When
> realtek_cr_autosuspend_setup just returns an error.
> }
>
>
> https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L1010-L1012
>
> #ifdef CONFIG_REALTEK_AUTOPM
> if (ss_en)
>     realtek_cr_autosuspend_setup(us); // There isn't any check about
> return code.
> #endif
>
> https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L936-L939
> static void realtek_cr_destructor(void *extra)
> {
>     ...
>     if (ss_en) {
>         del_timer(&chip->rts51x_suspend_timer); // Ouch! :(
>         chip->timer_expires = 0;
>     }
>     ...
> }

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CACT4Y%2BYxieAS3QrFk9ON6FiYnFzMO_CyzZBo9iTX25fLGzDj%2Bg%40mail.gmail.com.
