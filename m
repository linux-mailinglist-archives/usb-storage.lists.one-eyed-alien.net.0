Return-Path: <usb-storage+bncBC4YX2O26AKBBEEZVHWQKGQE6WLCPAI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0BBDD58F
	for <lists+usb-storage@lfdr.de>; Sat, 19 Oct 2019 01:36:49 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id k79sf5706420ybf.21
        for <lists+usb-storage@lfdr.de>; Fri, 18 Oct 2019 16:36:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571441809; cv=pass;
        d=google.com; s=arc-20160816;
        b=R/rliGMYzM6rPmnQUNN+6I973KNuMeI8WeIcu1TJKCWn6cace8chlBfZtonpyv2dHo
         WoLsuweopORjlooKthiIwpT/WjYUgwwxqyIK3uXZ3QNTSVd2QiI39ncrOXlaDPx9Wv4f
         ih4NmAeeoWcACHHVUUdWGJ/12eW/Hyhvh4GmGCRwyuYPN1viIUFAMzuUraWjqTis7rhT
         9gurM78RefjJlYm1eJMAoACPbsDDMGlJ9jAIhIqw+4qyjRZgnZJ3uWtvIDpLjkR2wrWX
         nSmFML52W9KoX401B0/DA2mrkond8nWKpJ6X2TIhxH1i9fEybGv3UmrKDNd94JJmz8sz
         Bmfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ctIAzN3FzcHjCh0D5Ip4AOKU4c1uiXPjF9zOvfNFF30=;
        b=dqC7UvPq5HF2AeZPLmUfktD5/ORqEgBnZM1Bb9229cHVmXZyHj3LsOAOcw/5BZRuV8
         w3c38BvmkUJB55Vjze/tCtBvy4hviI9GwJdy4edycr3zsfaYFNZY9/rDImcoFXkQGst/
         gfrDD4gQPhEm/953FUXDi/MoMAlFngAKJJJ/tXLn7wZkfPJ2CPeOZkivalbAYMvnQzO2
         Fq5FrfG6ffGQxSzQAmEXRX0UtPJ99VZHuWP2e/eJ73JP6sbkLvulhtEGAyt0kgKJLOM2
         xW9dwQjRYtngri6gksjMWdqKsPF4ofCUFBYCl4s2vt24uYgRxkH90te11VRtWs2YCSsU
         8Y3w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dNwXh6TL;
       spf=pass (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=zzoru007@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ctIAzN3FzcHjCh0D5Ip4AOKU4c1uiXPjF9zOvfNFF30=;
        b=BC1PM6AJ6uxDr5ziloKMup5Z0d1rYJD0KkknX6HlbuBspzrL+YsJnM8QiKEoO9Kxam
         CWFN5MrCNcz5YMDi+R3PIvgDmKmHwtA52skRDugbymbKqHEZPrqJVYYxjN3T49uA4ITE
         es3KbIBUnYtR1QzRGJwMUv+a0XSDx12COBgIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ctIAzN3FzcHjCh0D5Ip4AOKU4c1uiXPjF9zOvfNFF30=;
        b=VWE/1dyrzy0Jpd/gErjFdDhhPu2/+jh336MTfN5QrtRIfdIGmNka9e2tlJOx4Iyo5g
         uB+bNDCiZqjQ3Q92zhYW0Jd3wJB7dnDeta4L0Kq5d10c0xqHiu+SGJ5gPOrQUDeRN7e+
         eYU+QaA3TxpNbAA6aQyJ2827KkFNCw9dURpJGu/IbbSfLFLBY8Geelv7yqcu+ibSYSgX
         dZl+5n/iHrIE/6fE/Q8ABRXd4M6cyWYQVVu5kaknSpm/ZbcvO/o9IisdjiVlstt4w1NF
         NWaTJXmYP/Kq6ywph3bOsNbxRfw4nVqHNJ1HjJLP7nIwtQ4RbbnQ+GkNpXGO2tK3GAC4
         gJ1A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW2zsAWEhrQRRdWjB5speuxZjZdx6uzvmwm/Y3gNNQzJycSN6v7
	yR39dhgwyFrKH1BNy4G/w/Sh0A==
X-Google-Smtp-Source: APXvYqz9qmqYUBTu8NfRZGwfWN4OwAgC6nCUMMgQtiGSfvOjYMUYtGShYF3WsuHy0q6JQuJ3UROV6A==
X-Received: by 2002:a25:2189:: with SMTP id h131mr7242911ybh.231.1571441808607;
        Fri, 18 Oct 2019 16:36:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a81:e81:: with SMTP id 123ls1238199ywo.15.gmail; Fri, 18 Oct
 2019 16:36:47 -0700 (PDT)
X-Received: by 2002:a0d:d0c1:: with SMTP id s184mr8527513ywd.339.1571441807169;
        Fri, 18 Oct 2019 16:36:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571441807; cv=none;
        d=google.com; s=arc-20160816;
        b=BwKsPkTTYmyX2F5Q8wiA1pS84IYJobYQU5EOTHk6sIk3stwOOBUbG9jifpscwtIgrT
         2j/Qv+dXwAkGv2cp/204ObtVLZgsXQESEX+7bQwr0m9SwZ1TdOHJIqSaX3Oz9+SMzmct
         dssijPX0BhzfDE1T/KYt4+oRehOmXQ+ZQw0PNKs9u/gy+OEH+tIQr7Hgtyb/5aR34ptK
         egNaUPR2MRUlzSQUmGtFWXb2fGI5O3HbHuz9m4MfAzqqn0hSWkRLcfo0M4mwwUbyuiCI
         v2VCHJnKfYXKdQ1h3H2fk2kRCWtoybxwkF6b4UCz79q8/UJGaBbsMjWjCy59reuNQZXW
         Q93A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9SGvY9Rsd+0p/e4gQagDDzrTG/kTgyAQxN1kJVrGxi0=;
        b=rrttzi9j2XZEdiL+Sr1ummKE95v7xoAlY3gA9FIa4JvIMV3ql64iexObPNhsBu2zPI
         CGitb/ZxowPbiCZrlXrZy+7f80nWnQwaKhKaSK1K+BqoPSojLsw8bin+ECs4DSUXsdr6
         ZXlZsMN71lB49h1d32vD2oB3OZ7d2RP3Yr82EeRpA4SrnNCsnDflwL6z/UxE1sLKVvnd
         B2nTYE4djrqwBsiFUXFvD4wjmOxcKKqfHIDscvzZGSwdIEhH/PQ+i6allY6pT3dwWCYC
         9+MViDIZ3p8Kys8aff1pTO2UTKM9vkvO96ShkDbHkdtaz95o3+yQsOgmij5hYRW+j2kN
         CS/Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dNwXh6TL;
       spf=pass (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=zzoru007@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id b68sor3748104ybh.34.2019.10.18.16.36.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 18 Oct 2019 16:36:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a25:aac8:: with SMTP id t66mr7468281ybi.364.1571441806652;
 Fri, 18 Oct 2019 16:36:46 -0700 (PDT)
MIME-Version: 1.0
References: <CALRZ7UuS10CvHvDxMyFyN_wZF_xvzrABT-E_NRt1jKKtXk6Rng@mail.gmail.com>
 <CACT4Y+YxieAS3QrFk9ON6FiYnFzMO_CyzZBo9iTX25fLGzDj+g@mail.gmail.com>
In-Reply-To: <CACT4Y+YxieAS3QrFk9ON6FiYnFzMO_CyzZBo9iTX25fLGzDj+g@mail.gmail.com>
From: zzoru <zzoru007@gmail.com>
Date: Fri, 18 Oct 2019 16:36:34 -0700
Message-ID: <CALRZ7Uvy_QQPPc6wgvDadxD6gemOmjpxCDpYPt=zsi9_1Xjvng@mail.gmail.com>
Subject: [usb-storage] Re: WARNING: ODEBUG bug in del_timer
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, USB list <linux-usb@vger.kernel.org>, 
	usb-storage@lists.one-eyed-alien.net, LKML <linux-kernel@vger.kernel.org>, 
	dokyungs@uci.edu, syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: zzoru007@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dNwXh6TL;       spf=pass
 (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=zzoru007@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi

The customizations are related to driver fuzzing.
We added some more descriptions of USB driver & narrowed the
constraints (targeted fuzzing).

And sorry about I have not much time to make patches of these bugs.

On Fri, Oct 18, 2019 at 2:33 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, Oct 16, 2019 at 11:59 AM zzoru <zzoru007@gmail.com> wrote:
> >
> > We found the following crash on Linux 5.4-rc1 (Not patched in currnet
> > HEAD commit 3b1f00aceb7a67bf079a5a64aa5c6baf78a8f442)
> > with our customized syzkaller.
>
> Hi zzoru,
>
> Do you mind sharing what customizations you did to syzkaller? Are
> these related to USB? I've noticed several reports were related to USB
> subsystem.
>
> > ODEBUG: assert_init not available (active state 0) object type:
> > timer_list hint: 0x0
> > WARNING: CPU: 0 PID: 141 at linux/lib/debugobjects.c:484
> > debug_print_object+0x15e/0x220 linux/lib/debugobjects.c:481
> > Kernel panic - not syncing: panic_on_warn set ...
> > CPU: 0 PID: 141 Comm: kworker/0:3 Not tainted 5.4.0-rc1 #5
> > Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> > rel-1.12.1-0-ga5cab58e9a3f-prebuilt.qemu.org 04/01/2014
> > Workqueue: usb_hub_wq hub_event
> > Call Trace:
> >  __dump_stack linux/lib/dump_stack.c:77 [inline]
> >  dump_stack+0x7c/0xbb linux/lib/dump_stack.c:113
> >  panic+0x205/0x48e linux/kernel/panic.c:220
> >  __warn+0x19c/0x1c0 linux/kernel/panic.c:581
> >  report_bug+0x1a9/0x2b0 linux/lib/bug.c:195
> >  fixup_bug.part.11+0x32/0x80 linux/arch/x86/kernel/traps.c:179
> >  fixup_bug linux/arch/x86/include/asm/irqflags.h:54 [inline]
> >  do_error_trap+0xf5/0x160 linux/arch/x86/kernel/traps.c:272
> >  do_invalid_op+0x31/0x40 linux/arch/x86/kernel/traps.c:291
> >  invalid_op+0x23/0x30 linux/arch/x86/entry/entry_64.S:1028
> > RIP: 0010:debug_print_object+0x15e/0x220 linux/lib/debugobjects.c:481
> > Code: 3c dd 80 05 9a 85 48 89 fa 48 c1 ea 03 80 3c 02 00 75 7f 48 8b
> > 14 dd 80 05 9a 85 4c 89 ee 48 c7 c7 00 fb 99 85 e8 d2 a7 43 ff <0f> 0b
> > 83 05 cd bd 70 05 01 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e c3
> > RSP: 0018:ffff888017017668 EFLAGS: 00010282
> > RAX: 0000000000000000 RBX: 0000000000000005 RCX: ffffffff814153b0
> > RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffff88801a41f730
> > RBP: 0000000000000001 R08: ffffed1003483ee7 R09: ffffed1003483ee7
> > R10: 0000000000000001 R11: ffffed1003483ee6 R12: ffffffff86908460
> > R13: ffffffff859a01a0 R14: ffffffff812b6bc0 R15: ffff888017fb0420
> >  debug_object_assert_init+0x290/0x430 linux/lib/debugobjects.c:866
> >  debug_timer_assert_init linux/kernel/time/timer.c:729 [inline]
> >  debug_assert_init linux/kernel/time/timer.c:774 [inline]
> >  del_timer+0x67/0xf0 linux/kernel/time/timer.c:1196
> >  realtek_cr_destructor+0x5a/0x90 linux/drivers/usb/storage/realtek_cr.c:937
> >  usb_stor_release_resources linux/drivers/usb/storage/usb.c:817 [inline]
> >  release_everything+0xc0/0x2c0 linux/drivers/usb/storage/usb.c:879
> >  usb_unbind_interface+0x19f/0x810 linux/drivers/usb/core/driver.c:423
> >  __device_release_driver linux/drivers/base/dd.c:1134 [inline]
> >  device_release_driver_internal+0x429/0x4f0 linux/drivers/base/dd.c:1165
> >  bus_remove_device+0x2d1/0x490 linux/drivers/base/bus.c:532
> >  device_del+0x403/0xaa0 linux/drivers/base/core.c:2375
> >  usb_disable_device+0x1d7/0x5f0 linux/drivers/usb/core/message.c:1237
> >  usb_disconnect+0x25a/0x840 linux/drivers/usb/core/hub.c:2199
> >  hub_port_connect linux/drivers/usb/core/hub.c:4949 [inline]
> >  hub_port_connect_change linux/drivers/usb/core/hub.c:5213 [inline]
> >  port_event linux/drivers/usb/core/hub.c:5359 [inline]
> >  hub_event+0x11f5/0x3610 linux/drivers/usb/core/hub.c:5441
> >  process_one_work+0x8b5/0x17c0 linux/kernel/workqueue.c:2269
> >  worker_thread+0x82/0xb80 linux/kernel/workqueue.c:2415
> >  kthread+0x325/0x3e0 linux/kernel/kthread.c:255
> >  ret_from_fork+0x24/0x30 linux/arch/x86/entry/entry_64.S:352
> > Dumping ftrace buffer:
> >    (ftrace buffer empty)
> > Kernel Offset: disabled
> >
> > Following is my analysis of this bug (Just add some comments in source code):
> > https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L887-L891
> > static int realtek_cr_autosuspend_setup(struct us_data *us)
> > {
> >     ...
> >     if (retval != STATUS_SUCCESS) {
> >         usb_stor_dbg(us, "Read status fail\n");
> >         return -EIO; // Error!
> >     }
> >     ...
> >     timer_setup(&chip->rts51x_suspend_timer, rts51x_suspend_timer_fn,
> > 0); // rts51x_suspend_timer wasn't be initialized. When
> > realtek_cr_autosuspend_setup just returns an error.
> > }
> >
> >
> > https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L1010-L1012
> >
> > #ifdef CONFIG_REALTEK_AUTOPM
> > if (ss_en)
> >     realtek_cr_autosuspend_setup(us); // There isn't any check about
> > return code.
> > #endif
> >
> > https://github.com/torvalds/linux/blob/e0703556644a531e50b5dc61b9f6ea83af5f6604/drivers/usb/storage/realtek_cr.c#L936-L939
> > static void realtek_cr_destructor(void *extra)
> > {
> >     ...
> >     if (ss_en) {
> >         del_timer(&chip->rts51x_suspend_timer); // Ouch! :(
> >         chip->timer_expires = 0;
> >     }
> >     ...
> > }

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CALRZ7Uvy_QQPPc6wgvDadxD6gemOmjpxCDpYPt%3Dzsi9_1Xjvng%40mail.gmail.com.
