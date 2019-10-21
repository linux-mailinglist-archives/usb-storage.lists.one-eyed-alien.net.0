Return-Path: <usb-storage+bncBCMIZB7QWENRB7N5WXWQKGQEH5YWYQI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F42DE555
	for <lists+usb-storage@lfdr.de>; Mon, 21 Oct 2019 09:32:16 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id v92sf368544qtd.18
        for <lists+usb-storage@lfdr.de>; Mon, 21 Oct 2019 00:32:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571643134; cv=pass;
        d=google.com; s=arc-20160816;
        b=CdlhCOn+c0tZp39VvVQWfx2UfGwSPzHcOLDvKnIeqO0joZ0RJbUojiT3BoPjDy0WoN
         pon7g+ISJbWR9mfLKFhGb/iIIGV+cWo0nPkJ+GCgxSh5K7T1dGKIpYLtlzpasaBp0d7I
         pGRQSFxVb7aBbVmkfLmvTlXkYRapaYDhnfDZDhN5RkftCR+Ij9MOJPZoetXGougo39ml
         3lHhkeAC26YT3tQgo4XkR3RVT8Pj+P0wJilMxPTbym4zepDzPwhcJMow3rOwDIvGOGJc
         VtX3rhK3J03Om32qdkVS2pjuCZEe718/eNe/QNgfAS6a34w/jMceWOr/bup9F/Z0eZXj
         ifXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jC4BON+zi1fbzvZC4FKeFe/uPUb6S6Jg85nY0hebxWY=;
        b=OibMxvNjQ7TzKoCb6RFpMaEuD3ERuDBt8ZsE3S8oYhauPizQD/h1MP2f/3363ujGL4
         Xn42HsVGUpiuWSEk+SLyuHAjtPVzRFqCzgcXUdZR8jYJSbW44MBQ7jzvq0HMOaV6SdD3
         BqA3GHUCn/I8innVUHQbw3lsGsQ57lNJelywTVU5gJPGV/yzwFcHa6Zw8rumShhDsT+e
         cwBN609G012i++AO98NkVjtNxqQiZ7cAvM3SSExqjsAAPWof0ve5sM0gJ682rkMhoMqx
         jk5SI26PqUJzsbOVRMSpCJjQME5Mf33rx4cpjJLR/cssdcrWQiyghh07CYENHloitR8t
         hMJg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NAnf6DN1;
       spf=pass (google.com: domain of dvyukov@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jC4BON+zi1fbzvZC4FKeFe/uPUb6S6Jg85nY0hebxWY=;
        b=WZOpxWTwjaBKxT7iG2lbhAIe2XDE5S0F24S3+UlPm9RVCA0UTZLlqQ98Q6EJsO8PDX
         u7sQnzrsZ+b3H3VgOzDSZOThyig8GIXDqWk1OgQ28PKeHGe459fbeYB8AduUF2Z3b/Ug
         a5k0DUdOoOEVGjP54QVvs+6rzmL6tnNRBBHzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jC4BON+zi1fbzvZC4FKeFe/uPUb6S6Jg85nY0hebxWY=;
        b=MY0zab+nLAapLtOJ9vfiPUbEqdi9bWYsQ/2eCOvyIevoqm5ZvtsBd0lKZ3kcaB6PO5
         MAoQeBXYojPmL3UMHFwSUGsdyLiq2Dkqr+osndXxTQPTwGrKLNw8EihV9EizAvMNYuwk
         EKjgpPcjf7xT4taUSk1jg3nIB3of08uaZJPZoxxtJVWvHtrFicn3ltbCdrUFywHX/bfK
         EARnE6sQgI9JId25WfUDnbOESwnRTj+L+9naq+2I8xQU573E66Q3q7bM9zIM+Z8Smw8L
         Fo7m/iJP0IcxhLmDKjNEBfXAaTSnVoUeAx7kekfPuFyQVqTl29iulCwWYw+3868Tez98
         5epQ==
X-Gm-Message-State: APjAAAU/V08xC9jjAM0fAB73aRuOmSVA9TE+iK57KEhp+cjuSx6TUuj4
	voX3jenB+G9FaBR3n4J2npNSNg==
X-Google-Smtp-Source: APXvYqyLO5Jmh0av+HtSTTVP8Qhj+vlU2uRvn40R3a6HM5VoVRSqnQf+2WjEvYN3ohngraTbEwOSzw==
X-Received: by 2002:ac8:2dc9:: with SMTP id q9mr528846qta.219.1571643133827;
        Mon, 21 Oct 2019 00:32:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:2e06:: with SMTP id u6ls1079303qkh.5.gmail; Mon, 21 Oct
 2019 00:32:13 -0700 (PDT)
X-Received: by 2002:a05:620a:208a:: with SMTP id e10mr21608810qka.189.1571643133249;
        Mon, 21 Oct 2019 00:32:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571643133; cv=none;
        d=google.com; s=arc-20160816;
        b=U9qkgZ/VYzOdSverDWbpsJZdbcZ7lvl+Mjzx5KHClfn2r96mOZ2UfkT6aj6VDM/mMr
         emE4KJjF/886Y3WiVt5uvrgDyl1avsr/8SDqj05HqgJmsia/l3Ug8oJlneXY9AkkGLbM
         WwQDdBJCMSO7amk1EY277G+jmSq+QLm56el3JYGSODpLRHaAfqVlChC8lLolmjXXnAuG
         q4O6+sIjAbUUQVDHxDyoWECtAjxgw/Z/0NbWpJYi4j0VEYvoFOCzlcTn9Uk3YCuYh6R/
         pQUWdspAeF8fFHJAC4JcWJ13bLd3INFeWynkAgIQRrV5V8JYgoiWqTTZlh91/YltprnB
         LMoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SYy1/LrxYgUepstMy8ztXvJpwYGOSfKv6Ncg1+uVmSg=;
        b=xnnDoN1tgr9YpcUznxslm1SU462rE0qC415RzgSkNFljeXs9+6M6bEndMzCnGYpphp
         X8Mn9X3e/aaqq912pQmN5aAW6/3oIcgIN2wtcP9SsGVTaImR2fdjezeG4p55aaS78UUN
         AZDUYAshpdGZcd2FknQcKDxBm/B4eMzJXW2XiaNN/blqHNk+4FyPl6iefIkeIf7tQ9nS
         APdvYdFxGSDcsbGPqtoxf3PNvadKWc1nUsglEJrGqlm+EfDEXSzS7VL1bA2dFPPXmGmg
         RPCHDgDlAcGE43F2ve1Uqcn6GwjsFj2Z8cNpwnhrnQOgdSfmb1PKNF25IbYyPHQtWuWV
         lNCw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NAnf6DN1;
       spf=pass (google.com: domain of dvyukov@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id b8sor6761310qkk.80.2019.10.21.00.32.13
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 21 Oct 2019 00:32:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a37:4a87:: with SMTP id x129mr20642441qka.43.1571643132113;
 Mon, 21 Oct 2019 00:32:12 -0700 (PDT)
MIME-Version: 1.0
References: <CALRZ7UuS10CvHvDxMyFyN_wZF_xvzrABT-E_NRt1jKKtXk6Rng@mail.gmail.com>
 <CACT4Y+YxieAS3QrFk9ON6FiYnFzMO_CyzZBo9iTX25fLGzDj+g@mail.gmail.com> <CALRZ7Uvy_QQPPc6wgvDadxD6gemOmjpxCDpYPt=zsi9_1Xjvng@mail.gmail.com>
In-Reply-To: <CALRZ7Uvy_QQPPc6wgvDadxD6gemOmjpxCDpYPt=zsi9_1Xjvng@mail.gmail.com>
From: "'Dmitry Vyukov' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Mon, 21 Oct 2019 09:32:00 +0200
Message-ID: <CACT4Y+Z3PgnruKivBQPbD0-HEn_Hz7huQ0EHr2_7=RURjZwJ+A@mail.gmail.com>
Subject: [usb-storage] Re: WARNING: ODEBUG bug in del_timer
To: zzoru <zzoru007@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, USB list <linux-usb@vger.kernel.org>, 
	usb-storage@lists.one-eyed-alien.net, LKML <linux-kernel@vger.kernel.org>, 
	dokyungs@uci.edu, syzkaller <syzkaller@googlegroups.com>, 
	Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NAnf6DN1;       spf=pass
 (google.com: domain of dvyukov@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

On Sat, Oct 19, 2019 at 1:36 AM zzoru <zzoru007@gmail.com> wrote:
>
> Hi
>
> The customizations are related to driver fuzzing.
> We added some more descriptions of USB driver & narrowed the
> constraints (targeted fuzzing).

Please consider upstreaming these improvements to syzkaller.

> And sorry about I have not much time to make patches of these bugs.
>
> On Fri, Oct 18, 2019 at 2:33 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Wed, Oct 16, 2019 at 11:59 AM zzoru <zzoru007@gmail.com> wrote:
> > >
> > > We found the following crash on Linux 5.4-rc1 (Not patched in currnet
> > > HEAD commit 3b1f00aceb7a67bf079a5a64aa5c6baf78a8f442)
> > > with our customized syzkaller.
> >
> > Hi zzoru,
> >
> > Do you mind sharing what customizations you did to syzkaller? Are
> > these related to USB? I've noticed several reports were related to USB
> > subsystem.
> >
> > > ODEBUG: assert_init not available (active state 0) object type:
> > > timer_list hint: 0x0
> > > WARNING: CPU: 0 PID: 141 at linux/lib/debugobjects.c:484
> > > debug_print_object+0x15e/0x220 linux/lib/debugobjects.c:481
> > > Kernel panic - not syncing: panic_on_warn set ...
> > > CPU: 0 PID: 141 Comm: kworker/0:3 Not tainted 5.4.0-rc1 #5
> > > Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> > > rel-1.12.1-0-ga5cab58e9a3f-prebuilt.qemu.org 04/01/2014
> > > Workqueue: usb_hub_wq hub_event
> > > Call Trace:
> > >  __dump_stack linux/lib/dump_stack.c:77 [inline]
> > >  dump_stack+0x7c/0xbb linux/lib/dump_stack.c:113
> > >  panic+0x205/0x48e linux/kernel/panic.c:220
> > >  __warn+0x19c/0x1c0 linux/kernel/panic.c:581
> > >  report_bug+0x1a9/0x2b0 linux/lib/bug.c:195
> > >  fixup_bug.part.11+0x32/0x80 linux/arch/x86/kernel/traps.c:179
> > >  fixup_bug linux/arch/x86/include/asm/irqflags.h:54 [inline]
> > >  do_error_trap+0xf5/0x160 linux/arch/x86/kernel/traps.c:272
> > >  do_invalid_op+0x31/0x40 linux/arch/x86/kernel/traps.c:291
> > >  invalid_op+0x23/0x30 linux/arch/x86/entry/entry_64.S:1028
> > > RIP: 0010:debug_print_object+0x15e/0x220 linux/lib/debugobjects.c:481
> > > Code: 3c dd 80 05 9a 85 48 89 fa 48 c1 ea 03 80 3c 02 00 75 7f 48 8b
> > > 14 dd 80 05 9a 85 4c 89 ee 48 c7 c7 00 fb 99 85 e8 d2 a7 43 ff <0f> 0b
> > > 83 05 cd bd 70 05 01 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e c3
> > > RSP: 0018:ffff888017017668 EFLAGS: 00010282
> > > RAX: 0000000000000000 RBX: 0000000000000005 RCX: ffffffff814153b0
> > > RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffff88801a41f730
> > > RBP: 0000000000000001 R08: ffffed1003483ee7 R09: ffffed1003483ee7
> > > R10: 0000000000000001 R11: ffffed1003483ee6 R12: ffffffff86908460
> > > R13: ffffffff859a01a0 R14: ffffffff812b6bc0 R15: ffff888017fb0420
> > >  debug_object_assert_init+0x290/0x430 linux/lib/debugobjects.c:866
> > >  debug_timer_assert_init linux/kernel/time/timer.c:729 [inline]
> > >  debug_assert_init linux/kernel/time/timer.c:774 [inline]
> > >  del_timer+0x67/0xf0 linux/kernel/time/timer.c:1196
> > >  realtek_cr_destructor+0x5a/0x90 linux/drivers/usb/storage/realtek_cr.c:937
> > >  usb_stor_release_resources linux/drivers/usb/storage/usb.c:817 [inline]
> > >  release_everything+0xc0/0x2c0 linux/drivers/usb/storage/usb.c:879
> > >  usb_unbind_interface+0x19f/0x810 linux/drivers/usb/core/driver.c:423
> > >  __device_release_driver linux/drivers/base/dd.c:1134 [inline]
> > >  device_release_driver_internal+0x429/0x4f0 linux/drivers/base/dd.c:1165
> > >  bus_remove_device+0x2d1/0x490 linux/drivers/base/bus.c:532
> > >  device_del+0x403/0xaa0 linux/drivers/base/core.c:2375
> > >  usb_disable_device+0x1d7/0x5f0 linux/drivers/usb/core/message.c:1237
> > >  usb_disconnect+0x25a/0x840 linux/drivers/usb/core/hub.c:2199
> > >  hub_port_connect linux/drivers/usb/core/hub.c:4949 [inline]
> > >  hub_port_connect_change linux/drivers/usb/core/hub.c:5213 [inline]
> > >  port_event linux/drivers/usb/core/hub.c:5359 [inline]
> > >  hub_event+0x11f5/0x3610 linux/drivers/usb/core/hub.c:5441
> > >  process_one_work+0x8b5/0x17c0 linux/kernel/workqueue.c:2269
> > >  worker_thread+0x82/0xb80 linux/kernel/workqueue.c:2415
> > >  kthread+0x325/0x3e0 linux/kernel/kthread.c:255
> > >  ret_from_fork+0x24/0x30 linux/arch/x86/entry/entry_64.S:352
> > > Dumping ftrace buffer:
> > >    (ftrace buffer empty)
> > > Kernel Offset: disabled
> > >
> > > Following is my analysis of this bug (Just add some comments in source code):
> > > https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L887-L891
> > > static int realtek_cr_autosuspend_setup(struct us_data *us)
> > > {
> > >     ...
> > >     if (retval != STATUS_SUCCESS) {
> > >         usb_stor_dbg(us, "Read status fail\n");
> > >         return -EIO; // Error!
> > >     }
> > >     ...
> > >     timer_setup(&chip->rts51x_suspend_timer, rts51x_suspend_timer_fn,
> > > 0); // rts51x_suspend_timer wasn't be initialized. When
> > > realtek_cr_autosuspend_setup just returns an error.
> > > }
> > >
> > >
> > > https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L1010-L1012
> > >
> > > #ifdef CONFIG_REALTEK_AUTOPM
> > > if (ss_en)
> > >     realtek_cr_autosuspend_setup(us); // There isn't any check about
> > > return code.
> > > #endif
> > >
> > > https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L936-L939
> > > static void realtek_cr_destructor(void *extra)
> > > {
> > >     ...
> > >     if (ss_en) {
> > >         del_timer(&chip->rts51x_suspend_timer); // Ouch! :(
> > >         chip->timer_expires = 0;
> > >     }
> > >     ...
> > > }

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CACT4Y%2BZ3PgnruKivBQPbD0-HEn_Hz7huQ0EHr2_7%3DRURjZwJ%2BA%40mail.gmail.com.
