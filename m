Return-Path: <usb-storage+bncBCCMH5WKTMGRBFW2QLWQKGQEA5YPB5Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 31197D4559
	for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 18:26:00 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id s14sf9978125qtn.4
        for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 09:26:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570811159; cv=pass;
        d=google.com; s=arc-20160816;
        b=vAT2MKBl+xIstSDmfXXRqtgM6vtKygZLoOoDug6fNFSyNdL23yLrMaCWrSieXKxSQA
         ktPzob05PWpPwGYQR9pryu78IJn0TiXWw1d3awfPZQpglb2Mk+pEJ0z0K0gkffj5WcpK
         okB5NYgdspM4+zkx6WCeB71uW1+i6nhRhm8ChDGANLaUFJNvVJmqFmegbE+OlRYsd7Gd
         bQwmMh1jj6ISZfOg13pvLACvSw7EwX7BkQdrqsQ491JyS6YwYiRBf4i6ZNQrZFUYmAVD
         Em5Dhwu38wM0JAfFxE/U8EOTNFb/LB/mfKkQtmYcy2KZJahFrBFwpCPSm9jiuj5adKBt
         iCtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AWHTvZJuhkhn/FMny15UU/bN1XWsUhxKEw7jSJvQVdQ=;
        b=vlTn1StHOJCyOFxrle3z7Ac9fw22KR+x/Ej1VhnYirx4njFT3+AQ97eVoW87g7coTt
         HXXXbW+GQsCC2p1+fzXcT4HO4qOzY9UK+dVes5sGPsU9fRgdQ0SG3bJW2Wk9JEzySug1
         41znJxtT8vUuf5Kgb9juapKXqwL7J9l/ZfBTOwmcnB5SvoeKwmjmDxBpaYbla5o2GBzz
         nNTEyk4GPjz1BGyxscuMpgawteUCgZCuw/t7ODq4GMD24rNPKu5DhwmVuWpmu5Vn0zsu
         sdqC1GKV/yFZJ6C9I4GiQO5kYF9L4pnnDeT456KN1v+MxWA0+NVLD5PNl9fSbAbHOpU5
         rYlA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jGbJQ5JM;
       spf=pass (google.com: domain of glider@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=AWHTvZJuhkhn/FMny15UU/bN1XWsUhxKEw7jSJvQVdQ=;
        b=bYBdjV2S9s8vLLeZ0FWK85KEwKyTUgxQ+zGDvOKdtP2oPc1E1UTWyobrfbNfJDHpSU
         BCl0qve0JKfgxNhro4wIdKax0khy5q17MAecUNmx7YVx2WMNiWo5dymOrTeYkV6h82jw
         uC56eqeNL760tkIGqqkEe1aitpzyBsG2zM9Fc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AWHTvZJuhkhn/FMny15UU/bN1XWsUhxKEw7jSJvQVdQ=;
        b=Q8QNsRSr1BCi5GYhgn0s3hs8Pv0OYGsWaAntFt2FqwZiBIQvemhma0uoDLx6wh86u0
         C6wMftcRnHqF++DJEDTJ3hybY7mkXUpGYfGnN3xv7MY+5jA6iUlmU6A4+JqN/EItn9Xk
         80LYTxhOcUd7FaU4V9C+3Eo2RcfGA2l6oqAU65wsvBWk/q9awh2Y2+Uz6MUThSU4m6df
         /KmS4HbEM0TgEK2pqHpBip4+ncobrBoiLuyVjwVHTXFl9dCQkIfKa1BnMeMh8ryuKEQb
         +k4WDkxB8qNQVTqbbLaJNez2aEWifMgPMDdM9mPN5U7BhnuymviqnyprlE5X0GV2fHvu
         bWtg==
X-Gm-Message-State: APjAAAUx/ob5SOzLGJNy0XPVCDTdTVtgDlSXIDpPhnTaJCtLhLAw9lwU
	S5tMWnvuy/U9r6GrROWwBdaDrg==
X-Google-Smtp-Source: APXvYqwW9xRTFpUkCFL494JGlJ4O2RjOizz6cpXXDiqlUsMQG7/Lqor/k3KdrmkWL5l0pMuP7JfiCg==
X-Received: by 2002:ac8:3408:: with SMTP id u8mr17964595qtb.380.1570811158967;
        Fri, 11 Oct 2019 09:25:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:45b4:: with SMTP id y20ls1379339qvu.4.gmail; Fri, 11 Oct
 2019 09:25:58 -0700 (PDT)
X-Received: by 2002:a0c:fa8a:: with SMTP id o10mr16199121qvn.7.1570811158555;
        Fri, 11 Oct 2019 09:25:58 -0700 (PDT)
Received: by 2002:a37:507:0:0:0:0:0 with SMTP id 7msqkf;
        Fri, 11 Oct 2019 04:51:49 -0700 (PDT)
X-Received: by 2002:adf:dc83:: with SMTP id r3mr12841316wrj.335.1570794709109;
        Fri, 11 Oct 2019 04:51:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570794709; cv=none;
        d=google.com; s=arc-20160816;
        b=OlC/QqM3hQU8yTgYtmTGcE+XDVC/xBAT0tMCGuHsMDhu9Qqj7j22GYR4pkIjwmS6id
         SN/7ApZVID0vH22L8LXM8pSk/RAuvi2aNHMS7DFhKEIWZ8dgxNUOV57Q/0uYby6nVtmW
         VY19r+iRGQvbIrAlkeqRVTTYppDaRbrv3HenJQdjQUIfc1tfS7wSlnu6u9sl6aZ+25p0
         8UZukqcJeQUAOZbOrg3VtS4Qt58kEBVexLshqPZaiG+d2quQo3hS5Bemt5fCJwMorcq8
         PQ3X86+SUr2w0zxFbrzFGkwUchuwOgMIrDfGvRTRDoC/iJ+M+tSey7NkeII3Paaq95I+
         WKnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kodoLoyPrKRnVAF+K+EdOTtW7yGJ3QkaMW1QSIvhoF0=;
        b=xp99lHkk1QLV5dz5KHZOcBPll8CwXETJLGSQq/pf/ngvssbEuSuSfOnrJPGVCSaeVy
         cuxo+QO7iXY37GOYemihTP00G7ybPWeQDfSUDiypknmI2DiqAwBYMKqxbqHJ9wDXNsPl
         9ZTcD5umB8PmHXesCaFpLUnIPTteeS5vhVRhxh++RCCm24cy7EMHbTzwo1zqNjZ+Ofu/
         Kq/bqIwyJfgZ3FbQAASPc+Y20ZMNeMfmvuiHsy6skdX0qZ5jZN10jd+BU7UQsZwz55k9
         ICWaIHHGpAk0/TlCI/FpLr9RfudyO0T15y6AoAf6rcetWPEYOKeoKFUYctzOJjkvhmO7
         FWzw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jGbJQ5JM;
       spf=pass (google.com: domain of glider@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id h15sor6351733wru.1.2019.10.11.04.51.49
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 11 Oct 2019 04:51:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of glider@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a5d:5142:: with SMTP id u2mr12967653wrt.221.1570794708517;
 Fri, 11 Oct 2019 04:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000007d25ff059457342d@google.com> <b8b1e4fef9f3ece63909c38b3302621d76770caa.camel@gmail.com>
In-Reply-To: <b8b1e4fef9f3ece63909c38b3302621d76770caa.camel@gmail.com>
From: "'Alexander Potapenko' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 11 Oct 2019 13:51:37 +0200
Message-ID: <CAG_fn=WsN0d8VO6=4jtDP9rHqBMp0zBvJQ7qrvQhZkkaj6NNsg@mail.gmail.com>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
To: Jaskaran Singh <jaskaransingh7654321@gmail.com>
Cc: syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	USB list <linux-usb@vger.kernel.org>, Alan Stern <stern@rowland.harvard.edu>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jGbJQ5JM;       spf=pass
 (google.com: domain of glider@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=glider@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Alexander Potapenko <glider@google.com>
Reply-To: Alexander Potapenko <glider@google.com>
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

On Fri, Oct 11, 2019 at 1:23 PM Jaskaran Singh
<jaskaransingh7654321@gmail.com> wrote:
>
> On Mon, 2019-10-07 at 12:39 -0700, syzbot wrote:
> > Hello,
> >
> > syzbot found the following crash on:
> >
> > HEAD commit:    1e76a3e5 kmsan: replace __GFP_NO_KMSAN_SHADOW with
> > kmsan_i..
> > git tree:       https://github.com/google/kmsan.git master
> > console output:
> > https://syzkaller.appspot.com/x/log.txt?x=3D1204cc63600000
> > kernel config:
> > https://syzkaller.appspot.com/x/.config?x=3Df03c659d0830ab8d
> > dashboard link:
> > https://syzkaller.appspot.com/bug?extid=3De7d46eb426883fb97efd
> > compiler:       clang version 9.0.0 (/home/glider/llvm/clang
> > 80fee25776c2fb61e74c1ecb1a523375c2500b69)
> > syz repro:
> > https://syzkaller.appspot.com/x/repro.syz?x=3D123c860d600000
> > C reproducer:
> > https://syzkaller.appspot.com/x/repro.c?x=3D110631b7600000
> >
> > IMPORTANT: if you fix the bug, please add the following tag to the
> > commit:
> > Reported-by: syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> > BUG: KMSAN: uninit-value in alauda_transport+0x462/0x57f0
> > drivers/usb/storage/alauda.c:1137
> > CPU: 0 PID: 12279 Comm: usb-storage Not tainted 5.3.0-rc7+ #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine,
> > BIOS
> > Google 01/01/2011
> > Call Trace:
> >   __dump_stack lib/dump_stack.c:77 [inline]
> >   dump_stack+0x191/0x1f0 lib/dump_stack.c:113
> >   kmsan_report+0x13a/0x2b0 mm/kmsan/kmsan_report.c:108
> >   __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:250
> >   alauda_check_media+0x344/0x3310 drivers/usb/storage/alauda.c:460
> >   alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
> >   usb_stor_invoke_transport+0xf5/0x27e0
> > drivers/usb/storage/transport.c:606
> >   usb_stor_transparent_scsi_command+0x5d/0x70
> > drivers/usb/storage/protocol.c:108
> >   usb_stor_control_thread+0xca6/0x11a0 drivers/usb/storage/usb.c:380
> >   kthread+0x4b5/0x4f0 kernel/kthread.c:256
> >   ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355
> >
> > Local variable description: ----status@alauda_check_media
> > Variable was created at:
> >   alauda_check_media+0x8e/0x3310 drivers/usb/storage/alauda.c:454
> >   alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> > Kernel panic - not syncing: panic_on_warn set ...
> > CPU: 0 PID: 12279 Comm: usb-storage Tainted:
> > G    B             5.3.0-rc7+
> > #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine,
> > BIOS
> > Google 01/01/2011
> > Call Trace:
> >   __dump_stack lib/dump_stack.c:77 [inline]
> >   dump_stack+0x191/0x1f0 lib/dump_stack.c:113
> >   panic+0x3c9/0xc1e kernel/panic.c:219
> >   kmsan_report+0x2a2/0x2b0 mm/kmsan/kmsan_report.c:131
> >   __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:250
> >   alauda_check_media+0x344/0x3310 drivers/usb/storage/alauda.c:460
> >   alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
> >   usb_stor_invoke_transport+0xf5/0x27e0
> > drivers/usb/storage/transport.c:606
> >   usb_stor_transparent_scsi_command+0x5d/0x70
> > drivers/usb/storage/protocol.c:108
> >   usb_stor_control_thread+0xca6/0x11a0 drivers/usb/storage/usb.c:380
> >   kthread+0x4b5/0x4f0 kernel/kthread.c:256
> >   ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355
> > Kernel Offset: disabled
> > Rebooting in 86400 seconds..
> >
> >
> > ---
> > This bug is generated by a bot. It may contain errors.
> > See https://goo.gl/tpsmEJ for more information about syzbot.
> > syzbot engineers can be reached at syzkaller@googlegroups.com.
> >
> > syzbot will keep track of this bug report. See:
> > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> > syzbot can test patches for this bug, for details see:
> > https://goo.gl/tpsmEJ#testing-patches
>
> #syz test: https://github.com/google/kmsan.git 1e76a3e5
This didn't work, let's try with the master:
#syz test: https://github.com/google/kmsan.git master

>
> diff --git a/drivers/usb/storage/alauda.c
> b/drivers/usb/storage/alauda.c
> index ddab2cd3d2e7..bb309b9ad65b 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -452,7 +452,7 @@ static int alauda_init_media(struct us_data *us)
>  static int alauda_check_media(struct us_data *us)
>  {
>         struct alauda_info *info =3D (struct alauda_info *) us->extra;
> -       unsigned char status[2];
> +       unsigned char *status =3D us->iobuf;
>         int rc;
>
>         rc =3D alauda_get_media_status(us, status);
>
> --
> You received this message because you are subscribed to the Google Groups=
 "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/syzkaller-bugs/b8b1e4fef9f3ece63909c38b3302621d76770caa.camel%40gmail.com=
.



--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CAG_fn%3DWsN0d8VO6%3D4jtDP9rHqBMp0zB=
vJQ7qrvQhZkkaj6NNsg%40mail.gmail.com.
