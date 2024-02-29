Return-Path: <usb-storage+bncBCXKTJ63SAARBZGKQKXQMGQEOW2BZEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id D772686CD41
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 16:40:22 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-1dbde5c4d68sf8989305ad.2
        for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 07:40:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709221221; cv=pass;
        d=google.com; s=arc-20160816;
        b=UbymlzTnZzNDY8FEtmJkezP2WtqP3HDJNnFL0FF3/ie8CoKZayjjU3MBexBSQJi4He
         Ct5THLpZAdTZJabcvWY2XjuocCUU7J8D9HSsDjGRN3QDYGwYA97Jv8EqubDxl/0fsG/R
         eQrzHsmMkJcUlFDwhyVXOYf9VIHsBgPm4DEwOAHXpjAJvKCpwd0m47wTa/3W0dd+NmIH
         7374rtN6RYZhTHnh78cVDUlefHn2H/28B9/1BwK+jok+kAyOPTU6YvuXgdC/RpUn5/qb
         rc0mgjQARa6gOYTNc9WVMEdG0WgLmfKDCzw+zPT0CA+mfxpN4uLuQRIEkS68LXyx9kMm
         MCKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=44JVuMAQ8nZkJX3E+nE7RcpgbsvjbH1r4Y2TEhvxTX8=;
        fh=0OgPi6PGS7sepS/uaFoODO9cYZ0QZNdX9jpOrzcl3dM=;
        b=koRuvbHBAx42DYJNXqavTKcXq9HI+X4EFvZEAnjVkOHKuf2dmuRAhq43wfg/qP6bxW
         zhox2bkSH5RsQFTBowWZra0QJ9jrQy194hJmAjwEQurscQ/63ILxG+nnA42Cb/HofIKd
         x72uo4nB++2a4CU/g8mT5UzyN1yAixU/pEIAm3rkWNEFwNDn9SGocqWeigYJ0CBPnMRI
         SeU94xYJQQw9HcUsVeF6k1uC7oxfi9SId0Hxz+l/Pj4PuU4wzuApoIURx/Zjp1h0ItxC
         UMc0i+fNGuClnYzcyK+niTnGGKWcJvS2/bkFRCCJt9lulKOzmzyuE5+EbmHagE+79L0I
         yP/w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20230601 header.b=ru9RsV17;
       spf=pass (google.com: domain of nogikh@google.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nogikh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709221221; x=1709826021; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=44JVuMAQ8nZkJX3E+nE7RcpgbsvjbH1r4Y2TEhvxTX8=;
        b=RLNf0uSLl2//0KMTR+utk9lnfDSA7xR1GEOezPZWWJL8RANtnO8FJPqU7xLDQQQbEc
         LaseEjrbrRazVqzKu/7RyObffLjQliggT/QydIXdVwXDilcmlw5KXZN2BPEBTCEJ1x9/
         I1zFvjzbz55CFGSCBLZFtcWxXMDD0g5+Bv+no=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709221221; x=1709826021;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=44JVuMAQ8nZkJX3E+nE7RcpgbsvjbH1r4Y2TEhvxTX8=;
        b=v0w3JolSGNt8KpYxAt7Vo9wvCudt5Xr68wYshlFFSsxVVuN5WdhNEghfD7Wol+fohJ
         POLlr3Pj1LRgqNL5Gu/zGzpPN+c6WWPWcrNZQ5AQlVBtQ7meJYXSyKTYpdjgmKZA2dM9
         5naWgpLiT538qMcLFrCn6MrwoWwOz1UkPpR4c32nqQufyuIyiu0s/YUJAQcAbOq7+Txr
         eG9xLK3vE3NSfdWtRB6VQ0Mev0XqYNjwy059OzdRD8BN7zBtPGn7KvpZxoEXcr4biCM+
         mlTdcm+dDZ/4Q8384HtgHOm8Y4Y093OLC04qdIY6uMHeItvnX+n65NLLyuAEkCbV6nk6
         Hceg==
X-Forwarded-Encrypted: i=2; AJvYcCVLl5A0qC2yJhxkNUYJSWzl1CrdLGtjzMpoc7bloNmrRP0zZlTnQPJMxYv6XOp579ePJQjfLr0msuh3qiaBsUQmOghMr+VRGMc+
X-Gm-Message-State: AOJu0YwH0GBvBnpm1ryDn7thLz3QTMWrLeU8/KNUdsyaTx2Ikl1aNWoX
	RUOoAERoGpYCy9rtQqMoA7zQCZAL4r1pTJJo3CADDBdCLl1W6H+8V817wZgab6o=
X-Google-Smtp-Source: AGHT+IH/BfI5duKKgtQ6zP+mLjpY32Yus9t5ENhy9eDvG4NZk0boqjF3xHYY1rsi+OqElDy7ipbXBA==
X-Received: by 2002:a17:902:e951:b0:1db:916e:d77a with SMTP id b17-20020a170902e95100b001db916ed77amr2870504pll.2.1709221220983;
        Thu, 29 Feb 2024 07:40:20 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:41d1:b0:1dc:28b5:5410 with SMTP id
 u17-20020a17090341d100b001dc28b55410ls776695ple.1.-pod-prod-04-us; Thu, 29
 Feb 2024 07:40:20 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW8JO7jGeFm/uLYvml91cE6yFoG4TA+RfE80mo0V6pgIUObci59ydKVGsMi/LZBZebysW6DR0PhNkyUjyBA2/AYtWBzVtejVproa//Z5jGLb13jY7U=
X-Received: by 2002:a17:902:d491:b0:1dc:b80e:5678 with SMTP id c17-20020a170902d49100b001dcb80e5678mr2773151plg.23.1709221219793;
        Thu, 29 Feb 2024 07:40:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709221219; cv=none;
        d=google.com; s=arc-20160816;
        b=pSeziQf951HFLsGUQMaM32XBgLW+kD0wlHTqvFMBDFZP1OFLe9WE+dgtCErBOLanN0
         Q6+own7PTUcmWQInORgA2xyKE2gV6JyywUvACLCdEfjtieBa7uJb+bgUlcVTNVe4zn3i
         pQsNReWVsR0lpIFYumFbDo+uBwgqeRnem1jrGU3qXfr2R69dYUMw39c2xsjMLS1sggTO
         OUwqMW7C25vAL5LsjTM/Y7QlLhoSliIKK6j3peRmNxahCJBD1oT8guvmjeKXsXHPNA/M
         9yEGgmztub2rqNL3Mg5Soblzv3ZYyfgjm+zYGai+NoXFqoDvCWgtY0qQLWCM1Q0pHIo8
         4qyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XPtYyP7t0NFgMkniDi99zk16rKwZpHYjTsBi+fDdWUA=;
        fh=/CDqBGvoQbcNcQ7sujRFBtXSQuijekHvrqAU7eFdscI=;
        b=N2VvRcDnOaDFFJIkLvy5cddUla8UK9Xy+vPXAk6PdYOsoHRn8Q3xhELnrjAA1FZq0h
         OgK8W+GRoqD51vVr1NR3pwLHJyIq+4HawKKsLMMLMNZM+osZ71VhuMPuraT7sLaRb1/C
         EbmWMU36142YdVGQ28SfP7ToWqBUXydLhbtJpiwP34BNL/mwrT/jzWUzWm0H+2O9E6oQ
         50oBWtj9Y+q1OZIeiWAoxqpd9rueJM9Bse5VPkkby3HeLh1Zon4IdWV23RsKfi2+Agqm
         qkcPLJT7nK4vUQ67bahfVja0mmkTaRCDQwNvNNGjQadGGPk+Ge/f+fdLVRUA+Gwc0f48
         KYrw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20230601 header.b=ru9RsV17;
       spf=pass (google.com: domain of nogikh@google.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nogikh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d2-20020a170902b70200b001d705815426sor702257pls.3.2024.02.29.07.40.19
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 29 Feb 2024 07:40:19 -0800 (PST)
Received-SPF: pass (google.com: domain of nogikh@google.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUjmvJaunPL7VmHVYSe+eqXiQkBuhjJWrW/zGWfUg5W3WQ2T27FYaXdZhGkIC+5JHJuOiftNCKingY1Jpc20jVV6VgRW7tm2AM9RBgjWRDqPBVTLqU=
X-Received: by 2002:a17:902:e88d:b0:1db:9fed:c591 with SMTP id
 w13-20020a170902e88d00b001db9fedc591mr193659plg.22.1709221219060; Thu, 29 Feb
 2024 07:40:19 -0800 (PST)
MIME-Version: 1.0
References: <8fe3f46c-4ee5-4597-bf2d-12a5d634a264@rowland.harvard.edu>
 <0000000000008b026406126a4bbe@google.com> <13add23d-af18-4f84-9f1a-043932a9712b@rowland.harvard.edu>
 <CANp29Y4DUvL5zsnqQmhPGkbc=EN6UjFrWF9EZGE5U_=0C9+1Nw@mail.gmail.com> <380909e4-6e0a-402f-b3ac-de07e520c910@rowland.harvard.edu>
In-Reply-To: <380909e4-6e0a-402f-b3ac-de07e520c910@rowland.harvard.edu>
From: "'Aleksandr Nogikh' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Thu, 29 Feb 2024 16:40:05 +0100
Message-ID: <CANp29Y6hPF--pjWCa4bsAXWY15XoP2kmSg8BFP4ATGUpVbQgHQ@mail.gmail.com>
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
To: Alan Stern <stern@rowland.harvard.edu>
Cc: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>, 
	bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	martin.petersen@oracle.com, syzkaller-bugs@googlegroups.com, 
	tasos@tasossah.com, usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nogikh@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20230601 header.b=ru9RsV17;       spf=pass
 (google.com: domain of nogikh@google.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=nogikh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Aleksandr Nogikh <nogikh@google.com>
Reply-To: Aleksandr Nogikh <nogikh@google.com>
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

On Wed, Feb 28, 2024 at 8:18=E2=80=AFPM Alan Stern <stern@rowland.harvard.e=
du> wrote:
>
> On Wed, Feb 28, 2024 at 05:52:50PM +0100, Aleksandr Nogikh wrote:
> > Hi Alan,
> >
> > Please try it once more with the full commit hash.
>
> Thanks for the advice.  Are you a good person to complain to about the
> difference between what syzbot provides and what it will accept?  This
> bug report states
>
> HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://git.ke=
r..
> git tree:       upstream
>
> But if I specify "upstream" as the git tree on a syz test request, it
> doesn't accept it.  Now you're suggesting that if I put f2e367d6ad3b as
> the commit ID, it won't accept it.
>
> There's probably already a bugfix request for this, but I'd like to push
> on it some more.  Syzbot's output should be acceptable as its input!

That all totally makes sense. Thanks for highlighting the problems!

For accepting "upstream" (and alike) as input, there was already a github i=
ssue:
https://github.com/google/syzkaller/issues/2265
That syzbot is not able to fetch commits by their short hashes was
only discovered yesterday.

I've just sent PRs with fixes for both issues.

If there's anything else that can make syzbot reports better, please
let me know :)

--=20
Aleksandr

>
> Okay, here goes with the full commit ID...
>
> Alan Stern
>
> On Mon, Feb 26, 2024 at 01:42:26AM -0800, syzbot wrote:
> > Hello,
> >
> > syzbot found the following issue on:
> >
> > HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://git.=
ker..
> > git tree:       upstream
> > console+strace: https://syzkaller.appspot.com/x/log.txt?x=3D114e10e4180=
000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=3Deff9f3183d0=
a20dd
> > dashboard link: https://syzkaller.appspot.com/bug?extid=3D28748250ab47a=
8f04100
> > compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for D=
ebian) 2.40
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D1064b3721=
80000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D10aca6ac180=
000
> >
> > Downloadable assets:
> > disk image: https://storage.googleapis.com/syzbot-assets/c55ca1fdc5ad/d=
isk-f2e367d6.raw.xz
> > vmlinux: https://storage.googleapis.com/syzbot-assets/4556a82fb4ed/vmli=
nux-f2e367d6.xz
> > kernel image: https://storage.googleapis.com/syzbot-assets/95338ed9dad1=
/bzImage-f2e367d6.xz
> >
> > The issue was bisected to:
> >
> > commit 321da3dc1f3c92a12e3c5da934090d2992a8814c
> > Author: Martin K. Petersen <martin.petersen@oracle.com>
> > Date:   Tue Feb 13 14:33:06 2024 +0000
> >
> >     scsi: sd: usb_storage: uas: Access media prior to querying device p=
roperties
> >
> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D15a3934a=
180000
> > final oops:     https://syzkaller.appspot.com/x/report.txt?x=3D17a3934a=
180000
> > console output: https://syzkaller.appspot.com/x/log.txt?x=3D13a3934a180=
000
> >
> > IMPORTANT: if you fix the issue, please add the following tag to the co=
mmit:
> > Reported-by: syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com
> > Fixes: 321da3dc1f3c ("scsi: sd: usb_storage: uas: Access media prior to=
 querying device properties")
> >
> > divide error: 0000 [#1] PREEMPT SMP KASAN PTI
> > CPU: 0 PID: 5070 Comm: usb-storage Not tainted 6.8.0-rc5-syzkaller-0029=
7-gf2e367d6ad3b #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS=
 Google 01/25/2024
> > RIP: 0010:isd200_scsi_to_ata drivers/usb/storage/isd200.c:1318 [inline]
> > RIP: 0010:isd200_ata_command+0x776/0x2380 drivers/usb/storage/isd200.c:=
1529
>
> #syz test: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git/ f2e367d6ad3bdc527c2b14e759c2f010d6b2b7a1
> Index: usb-devel/drivers/usb/storage/isd200.c
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- usb-devel.orig/drivers/usb/storage/isd200.c
> +++ usb-devel/drivers/usb/storage/isd200.c
> @@ -1105,7 +1105,7 @@ static void isd200_dump_driveid(struct u
>  static int isd200_get_inquiry_data( struct us_data *us )
>  {
>         struct isd200_info *info =3D (struct isd200_info *)us->extra;
> -       int retStatus =3D ISD200_GOOD;
> +       int retStatus;
>         u16 *id =3D info->id;
>
>         usb_stor_dbg(us, "Entering isd200_get_inquiry_data\n");
> @@ -1137,6 +1137,13 @@ static int isd200_get_inquiry_data( stru
>                                 isd200_fix_driveid(id);
>                                 isd200_dump_driveid(us, id);
>
> +                               /* Prevent division by 0 in isd200_scsi_t=
o_ata() */
> +                               if (id[ATA_ID_HEADS] =3D=3D 0 || id[ATA_I=
D_SECTORS] =3D=3D 0) {
> +                                       usb_stor_dbg(us, "   Invalid ATA =
Identify data\n");
> +                                       retStatus =3D ISD200_ERROR;
> +                                       goto Done;
> +                               }
> +
>                                 memset(&info->InquiryData, 0, sizeof(info=
->InquiryData));
>
>                                 /* Standard IDE interface only supports d=
isks */
> @@ -1202,6 +1209,7 @@ static int isd200_get_inquiry_data( stru
>                 }
>         }
>
> + Done:
>         usb_stor_dbg(us, "Leaving isd200_get_inquiry_data %08X\n", retSta=
tus);
>
>         return(retStatus);
> @@ -1481,22 +1489,27 @@ static int isd200_init_info(struct us_da
>
>  static int isd200_Initialization(struct us_data *us)
>  {
> +       int rc =3D 0;
> +
>         usb_stor_dbg(us, "ISD200 Initialization...\n");
>
>         /* Initialize ISD200 info struct */
>
> -       if (isd200_init_info(us) =3D=3D ISD200_ERROR) {
> +       if (isd200_init_info(us) < 0) {
>                 usb_stor_dbg(us, "ERROR Initializing ISD200 Info struct\n=
");
> +               rc =3D -ENOMEM;
>         } else {
>                 /* Get device specific data */
>
> -               if (isd200_get_inquiry_data(us) !=3D ISD200_GOOD)
> +               if (isd200_get_inquiry_data(us) !=3D ISD200_GOOD) {
>                         usb_stor_dbg(us, "ISD200 Initialization Failure\n=
");
> -               else
> +                       rc =3D -EINVAL;
> +               } else {
>                         usb_stor_dbg(us, "ISD200 Initialization complete\=
n");
> +               }
>         }
>
> -       return 0;
> +       return rc;
>  }
>
>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CANp29Y6hPF--pjWCa4bsAXWY15XoP2kmSg8=
BFP4ATGUpVbQgHQ%40mail.gmail.com.
