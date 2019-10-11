Return-Path: <usb-storage+bncBCNKHI6TW4FRBFW2QLWQKGQEPS34UPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CD0D455A
	for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 18:26:00 +0200 (CEST)
Received: by mail-oi1-x245.google.com with SMTP id 74sf5060095oie.3
        for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 09:26:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570811159; cv=pass;
        d=google.com; s=arc-20160816;
        b=U47rk9kD856pnaF1WqLol1JI74Y4qxVEEn3iL94Kq6bnDw5N2FMaweq8Ra2V5gUxs7
         ONlymv86iMkcF/7XYoo6Ez1E16wdGTwx/kVv39nheYmUKdexW/c8HgkaTr2pV9Jxvuxx
         hi8dusGi9sr9OaHoQb1PekUO7p2VYMMKLdX0jYliKmqDlSNgYr2YevhlMg9YE+IfEykw
         On6ByUcPW4R2CXBrdAzqdnwtRV8sIVke5fP/aSkIO4h80moQxlPLwsaOpT1d8US3sePK
         4mgOl3d0NfdppROyZwgewDTVX4qYLmqMcmAnLZhZMdbWAdCjOMUWh0iYoouMooh/sb/f
         c4KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:sender:dkim-signature;
        bh=iLIEGl8eyAS7q9eIpYUW3GFDRvSiaaWiN2zFP5ZIR4M=;
        b=L8Zgx3cNsBDDlewvxSsm1PB/n5v5l5ujIfSWIJ1QGxDp9/jGUJKhNSGDnwHU48LQTr
         RT+x6NPrDa8jvxI0PRkNA7iKI1kf5PFNf5KcDFB1WwRKxTDqNJipe1NXO8Et+/VW1Uka
         fUQSyfNAEEd3P9TG51d9H/T1Al05hSW78q/GqWoCLnnBUJq4QYh/sf0ReIhw043JnBVn
         tHTJoQlRxaK/7P572LLd6h0WOabYAsRLGqZiqPjFdUZ4r05/F4DsCxbMqfEEM+MI98Cu
         qM7jlkrTSFFBZun72BL4axIZfh8foNpzWpRyS/kIeVxGT8BZsh7IRp7T43InuhTjueAQ
         z0OQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lFlQ0vsT;
       spf=pass (google.com: domain of jaskaransingh7654321@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jaskaransingh7654321@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iLIEGl8eyAS7q9eIpYUW3GFDRvSiaaWiN2zFP5ZIR4M=;
        b=XCpbx4t2PAElPpcWdLxBQJOIiQyQhDQPr+611k9hB/LxVWS2bSQCxZCnf5BXU9WtW7
         ALE9LiN8YXnbcKrvUdbbi4GYHrrRQhhcy0pl6w/wAQAk2/70EJAjQ7bMhMMQtVpI5icx
         0tIJt5OH4NTzMd3jaKvyLaNCwNfwbmEOorx6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iLIEGl8eyAS7q9eIpYUW3GFDRvSiaaWiN2zFP5ZIR4M=;
        b=En290FYjC4TTtwum0DSkVbxvoiYy+EkXSKN9StBRas8Gc4OU48aJHSlaNYJnV06lLt
         5tK1uxooVHyBn8MCyDVtCj5KZ9tyS9ZX4k4Ys3xSXScQIANS5uIX9x/7EXWic1+mGWKz
         MmLHM/Y4gGNJa53wo/CuWrJ6AsizCh+o0RuyjPIbV3d6XqfS6CsxD/adKWLEBJTs9/39
         3VUi14Ors3fTgfii31kzq9d+nP0pNmb9z6f2Iz74c/luc45Ydvz3+R3Pi176Ybx9dy7d
         UBm82R2IBWwu3Uack/aSSztAMjZzqJUDPSCWa4MMj4a99pt3G9KJLGCsyuJCiJJONSur
         LmRg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWyM9ugPVjwGmuPacTK5+J/KzBY+xkqxlo+BLCgSXXkNc1itFQ/
	Fow47buKfPNBCwUXtxjcwk9rQQ==
X-Google-Smtp-Source: APXvYqxQtq/3iBleoS67J8sRL1HK/ltUDIK1hdmtv5DPqS6h8btJI/TNWPb+9ggJgiFLk8m1loGxeQ==
X-Received: by 2002:a54:4098:: with SMTP id i24mr2148445oii.127.1570811158953;
        Fri, 11 Oct 2019 09:25:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:5f09:: with SMTP id f9ls1555158oti.13.gmail; Fri, 11 Oct
 2019 09:25:58 -0700 (PDT)
X-Received: by 2002:a05:6830:1b75:: with SMTP id d21mr13297802ote.145.1570811158587;
        Fri, 11 Oct 2019 09:25:58 -0700 (PDT)
Received: by 2002:a05:6808:28e:0:0:0:0 with SMTP id z14msoic;
        Fri, 11 Oct 2019 04:23:23 -0700 (PDT)
X-Received: by 2002:a17:902:a514:: with SMTP id s20mr14192189plq.157.1570793003461;
        Fri, 11 Oct 2019 04:23:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570793003; cv=none;
        d=google.com; s=arc-20160816;
        b=m7HI0DhAZxD0+JOy5ybm0A9mqJPHsDPz0pyG5Jb7+kctzWbf4akb1wTOxY2+t5c1ng
         VkLbvLvgZUGUdHM/AwH3UQhA+9Zgcv76zBB4fukGUs9n55hAsSWCdnlkKaNhJLtSEaLa
         xwbhKMmAUDbvXkwwR4voZg6g0k8612EVKxc76PHrCQxv1+PlIR3PLCSUEtL3JsSRYVVc
         UL24W4Mq8rX9vi8fyxtw8Lc2pET3PnhWkkYc4gfHQVqmAcd54UFqAfqWF7QdJ+NQIcic
         Mv+r+GB+CeEnukQzhE4v6TJIoDEwyjm1XwK7R/8GlJQUM9A64dTHDgnCsRlg//hRqbv4
         nAaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=FI82U63M+SgbahHSF1eO73vV08QgE3AQDZfaeuoWBb8=;
        b=Bb0/f8MYTxSGeLA2Q/xL+ZC3Jwv9wz5GDPE88wTA6Hk0dH74eT5OzD2oxCWsWdqsct
         MxP7PUTCf9rXaZIiwtrJanYZZaCsE7ML6Z3tgZG9Qpfo+8zAC1+mJARJfE9h1Ac/98LL
         lKLUL0jUDoPwbIIhdMbh819MAvRPuAGF/FNo5UZOAKiXRkAapTyPZLJGxMjCESMGPnlf
         Ojy0aI0bbYU6Wy8ft6vLop9xRP2tGzXC1zVQykaH9eLiof3FRtxhv6XrRjkwGyFr92ur
         fDeglTrdkOr4hYnUp5XjXKAERnPi6n7jXxsGE/36iiaexJrtn/vs+f0F4GhQ/Kf/UNSW
         VjBQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lFlQ0vsT;
       spf=pass (google.com: domain of jaskaransingh7654321@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jaskaransingh7654321@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id r14sor8445475pgb.65.2019.10.11.04.23.23
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 11 Oct 2019 04:23:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jaskaransingh7654321@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a63:4622:: with SMTP id t34mr16734453pga.0.1570793002922;
        Fri, 11 Oct 2019 04:23:22 -0700 (PDT)
Received: from localhost.localdomain ([2402:3a80:139e:d60:aa0c:2692:c558:75f5])
        by smtp.gmail.com with ESMTPSA id u4sm8749841pfu.177.2019.10.11.04.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 04:23:22 -0700 (PDT)
Message-ID: <b8b1e4fef9f3ece63909c38b3302621d76770caa.camel@gmail.com>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
From: Jaskaran Singh <jaskaransingh7654321@gmail.com>
To: syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>, 
 glider@google.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org,  linux-usb@vger.kernel.org,
 stern@rowland.harvard.edu,  syzkaller-bugs@googlegroups.com,
 usb-storage@lists.one-eyed-alien.net
Date: Fri, 11 Oct 2019 16:53:15 +0530
In-Reply-To: <0000000000007d25ff059457342d@google.com>
References: <0000000000007d25ff059457342d@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30)
MIME-Version: 1.0
X-Original-Sender: jaskaransingh7654321@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lFlQ0vsT;       spf=pass
 (google.com: domain of jaskaransingh7654321@gmail.com designates
 209.85.220.65 as permitted sender) smtp.mailfrom=jaskaransingh7654321@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, 2019-10-07 at 12:39 -0700, syzbot wrote:
> Hello,
> 
> syzbot found the following crash on:
> 
> HEAD commit:    1e76a3e5 kmsan: replace __GFP_NO_KMSAN_SHADOW with
> kmsan_i..
> git tree:       https://github.com/google/kmsan.git master
> console output: 
> https://syzkaller.appspot.com/x/log.txt?x=1204cc63600000
> kernel config:  
> https://syzkaller.appspot.com/x/.config?x=f03c659d0830ab8d
> dashboard link: 
> https://syzkaller.appspot.com/bug?extid=e7d46eb426883fb97efd
> compiler:       clang version 9.0.0 (/home/glider/llvm/clang  
> 80fee25776c2fb61e74c1ecb1a523375c2500b69)
> syz repro:      
> https://syzkaller.appspot.com/x/repro.syz?x=123c860d600000
> C reproducer:   
> https://syzkaller.appspot.com/x/repro.c?x=110631b7600000
> 
> IMPORTANT: if you fix the bug, please add the following tag to the
> commit:
> Reported-by: syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com
> 
> =====================================================
> BUG: KMSAN: uninit-value in alauda_transport+0x462/0x57f0  
> drivers/usb/storage/alauda.c:1137
> CPU: 0 PID: 12279 Comm: usb-storage Not tainted 5.3.0-rc7+ #0
> Hardware name: Google Google Compute Engine/Google Compute Engine,
> BIOS  
> Google 01/01/2011
> Call Trace:
>   __dump_stack lib/dump_stack.c:77 [inline]
>   dump_stack+0x191/0x1f0 lib/dump_stack.c:113
>   kmsan_report+0x13a/0x2b0 mm/kmsan/kmsan_report.c:108
>   __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:250
>   alauda_check_media+0x344/0x3310 drivers/usb/storage/alauda.c:460
>   alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
>   usb_stor_invoke_transport+0xf5/0x27e0
> drivers/usb/storage/transport.c:606
>   usb_stor_transparent_scsi_command+0x5d/0x70  
> drivers/usb/storage/protocol.c:108
>   usb_stor_control_thread+0xca6/0x11a0 drivers/usb/storage/usb.c:380
>   kthread+0x4b5/0x4f0 kernel/kthread.c:256
>   ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355
> 
> Local variable description: ----status@alauda_check_media
> Variable was created at:
>   alauda_check_media+0x8e/0x3310 drivers/usb/storage/alauda.c:454
>   alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
> =====================================================
> Kernel panic - not syncing: panic_on_warn set ...
> CPU: 0 PID: 12279 Comm: usb-storage Tainted:
> G    B             5.3.0-rc7+  
> #0
> Hardware name: Google Google Compute Engine/Google Compute Engine,
> BIOS  
> Google 01/01/2011
> Call Trace:
>   __dump_stack lib/dump_stack.c:77 [inline]
>   dump_stack+0x191/0x1f0 lib/dump_stack.c:113
>   panic+0x3c9/0xc1e kernel/panic.c:219
>   kmsan_report+0x2a2/0x2b0 mm/kmsan/kmsan_report.c:131
>   __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:250
>   alauda_check_media+0x344/0x3310 drivers/usb/storage/alauda.c:460
>   alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
>   usb_stor_invoke_transport+0xf5/0x27e0
> drivers/usb/storage/transport.c:606
>   usb_stor_transparent_scsi_command+0x5d/0x70  
> drivers/usb/storage/protocol.c:108
>   usb_stor_control_thread+0xca6/0x11a0 drivers/usb/storage/usb.c:380
>   kthread+0x4b5/0x4f0 kernel/kthread.c:256
>   ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355
> Kernel Offset: disabled
> Rebooting in 86400 seconds..
> 
> 
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
> 
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> syzbot can test patches for this bug, for details see:
> https://goo.gl/tpsmEJ#testing-patches

#syz test: https://github.com/google/kmsan.git 1e76a3e5

diff --git a/drivers/usb/storage/alauda.c
b/drivers/usb/storage/alauda.c
index ddab2cd3d2e7..bb309b9ad65b 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -452,7 +452,7 @@ static int alauda_init_media(struct us_data *us)
 static int alauda_check_media(struct us_data *us)
 {
 	struct alauda_info *info = (struct alauda_info *) us->extra;
-	unsigned char status[2];
+	unsigned char *status = us->iobuf;
 	int rc;
 
 	rc = alauda_get_media_status(us, status);

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b8b1e4fef9f3ece63909c38b3302621d76770caa.camel%40gmail.com.
