Return-Path: <usb-storage+bncBCQPF57GUQHBBLUEVOHAMGQEMPKI3WY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F0848071C
	for <lists+usb-storage@lfdr.de>; Tue, 28 Dec 2021 08:52:16 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id a18-20020a923312000000b002b384dccc91sf11160125ilf.1
        for <lists+usb-storage@lfdr.de>; Mon, 27 Dec 2021 23:52:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640677935; cv=pass;
        d=google.com; s=arc-20160816;
        b=LqiPeHARJj1P+FfoYY0JVEYPZNLPtYh8G/Gbg6tesNHxpNT7zZdBnaSjLEsgiyb9iX
         C9PKlCIUd52U3ElX+EXqLbDmRxl5koL35WV+5YuTxRASx13fJAfMS4kS+mTg9Aq2sPSS
         WPWC0Txa/LgIRo/YuuFX67Y1Ve/a3Gpav68m0jsKU0696HqM1mW00RPH+HaLe/1xzeE9
         84rrvG+eEnOO2X1JA9b53ttqUiDbcEjiA4GlQtC4XxNya2Nu9OB2NM5NJlg7PAaWBOF0
         3UHIoQxmxT2sf+5qj5ftqtgUQ2gjQB/FvcqKFW68AVHGmiQQmPdt6+YE8ZCFXP/0fo+F
         OPqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=JoE52P+/iLIpUOEayU7xqQh5AF5UMHNL66/Lx9R9bCw=;
        b=1AyiHFN/0s4g9k/04G1ubq3QnfFfSKf+g9gW/6MpK2adFzN/mluafAZAfDpt6xC9Hc
         8UbZFZ71VmDOGrmeDwgl1zU0I2Hgte04izjS4Spx9sfXUh4sJN+AyBx6XQOMQicUL59o
         AvxQwBtpENWUuCbLFRmW8F2Nw6QQF0OK8aVMzGIfM7qOlTZfWO5aYGcQsyP4iyzQ2cAq
         6FbDuOyrI0aR79JBoyh1Fx/HQIO2oecu5jzD/ZYsnrJXHzF+AEfYQGghqT45JL082DSZ
         wFvOxKFJhxnrXvSa47puvb5x46c1eI0Urpri8XL1pJaeW+9RC/YjGKB1giAIvsAr1FC8
         NhKQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3lslkyqkbapelrsdteexktiibw.zhhzexnlxkvhgmxgm.vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3LsLKYQkbAPElrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JoE52P+/iLIpUOEayU7xqQh5AF5UMHNL66/Lx9R9bCw=;
        b=OYBPDKypM/QqNbhpidTiVI1QCm97w3eRfCiDRlEqBbzx2p3AKvf4Vm4GhzNlnHSHLX
         MaZoCTGYDfMBQOBMN0ZosX0SFTr+WzjPiBjBa7Z47mIzM5tmVo2irkuj0R2Tg2ZWVpHk
         tb99Rj5aFtOgQtHDFEsppNZ4wI4lUmJ3uo/5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JoE52P+/iLIpUOEayU7xqQh5AF5UMHNL66/Lx9R9bCw=;
        b=zYkNKhfkDDEKMt1e4TUyE7ccc+jx/m2RA8IFQ22z4j/aDHRBQgovwfgTccSf6kR6RF
         PtCvRKdGZpnRuhVq7gWKxPTpLbuuElS3VXp9eZ3leZzO+vv+jpeKASmkvrpH18FMxkvm
         NxucRMa3me7bWyBJlXIz9Ijry3qol3VBdsZxQWGjqx84CgW64695Yc3ePLI8LjdSPe9P
         BtmGwG9hesfJD8Dp6eU+hp+vQlRaIqeCGQdBuGOOeuWSI/0KmX+NQn8EA9dq6/GLQkeW
         3mkhHH9ZOvmmI0pnrczRM2NDhPfS7RsVwFs+3+rTSvM91+wRdm8eB827mnToAMkyWVg/
         F/Hw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532T++DkmKkDJO1KVIMz1utxg5FpcBKxMNOvwGhM4XfwlvmpfmPn
	3j8IJ6+1cURlG6TOAMJ4OYLtgQ==
X-Google-Smtp-Source: ABdhPJyrJNC8ytSUSpS9fzVYcZv0R1cMS+mFcvBNbDPbA/9Tfd/pS0NF8d1AsduGAs4WEt/EaZpNLQ==
X-Received: by 2002:a05:6638:1122:: with SMTP id f2mr9196402jar.33.1640677935191;
        Mon, 27 Dec 2021 23:52:15 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6602:26d5:: with SMTP id g21ls1476757ioo.8.gmail; Mon,
 27 Dec 2021 23:52:14 -0800 (PST)
X-Received: by 2002:a05:6602:1495:: with SMTP id a21mr8855160iow.79.1640677934635;
        Mon, 27 Dec 2021 23:52:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640677934; cv=none;
        d=google.com; s=arc-20160816;
        b=IKluj6+EVuzogxloZ7AQrEhHtV0oG/SFUkCNNL3T7cyk8gd0HON64JtCMVqGa3aBRT
         whsU2ROv3DEpDgclkoBfYSTGAy4ZQgugRzu42wjLYUcOYaRRZ+1tuIzjpQ0aaX0Bu3vV
         FcDwDD4Y+AT8Hn3vjhn/kcuQtC/9n9TT7ywWcJRRF+8wOQjRmBMvvRkJBAD/O11VBk66
         pE0ov3cqQJmLKDonJblA3gEp6v56wJ5bYg0PdJKZc/gHFf5/111b2DD27IZDNvyF9rrU
         uBGXXu+wXIXrOSx+UjGB3j4Dbv/TlSjLm8uGQmU0Luxo6JiG7oXF0o+Hy2wrKaOnyo18
         rSiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=mfSDVqJhErVedYfVrnJ8dEhFdGpJaXk8RWpKOtafGRE=;
        b=IcSJV47KXkRADYZRTEtJsvJ/9N5cXKjtfO1OE34x8/+5N6HGPMwyM3z5GA/RKhAwfn
         mWpt0RtEjDIEEGw0gidkv8sFogzQPJ2f3ItJxPZYdnJ0aD8ShZoXiJqHRygB+1kBQgdR
         CtNdAqF6MlEjX7JOQ6g/a8kQYjld5jgB59deS/GHhp5l3qw11nlr1r7Ia4VRsEWhM+X6
         FqpS/Vj6tFcGgpjupa7gOArMt0D8gmJnpZT5XoWS9ShaGsn1wiBrnP1zQbEPA2PISYWD
         1BoDXMYK5TOVg7muER08b8aO0ULG/SizZmT1vumduv+yb0upeLJhME2TteXKa69ADLsi
         Hvfw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3lslkyqkbapelrsdteexktiibw.zhhzexnlxkvhgmxgm.vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3LsLKYQkbAPElrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id k7sor4847236ilv.6.2021.12.27.23.52.14
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 27 Dec 2021 23:52:14 -0800 (PST)
Received-SPF: pass (google.com: domain of 3lslkyqkbapelrsdteexktiibw.zhhzexnlxkvhgmxgm.vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c27:: with SMTP id m7mr8941202ilh.114.1640677934458;
 Mon, 27 Dec 2021 23:52:14 -0800 (PST)
Date: Mon, 27 Dec 2021 23:52:14 -0800
In-Reply-To: <cca3b7b4-d9cf-a275-ec0a-c99720a94049@wanadoo.fr>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000796bc905d4301953@google.com>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
From: syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: christophe.jaillet@wanadoo.fr, glider@google.com, 
	gregkh@linuxfoundation.org, kernel-janitors@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	stern@rowland.harvard.edu, syzkaller-bugs@googlegroups.com, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 3lslkyqkbapelrsdteexktiibw.zhhzexnlxkvhgmxgm.vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=3LsLKYQkbAPElrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
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

> Hi,
>
> (3rd try - text only format, other git repo to please syzbot - sorry for 
> the noise)
>
>
> first try (ok, 3rd...) to use syzbot. I hope I do it right.
> Discussion about the syz report can be found at 
> https://lore.kernel.org/linux-kernel/0000000000007d25ff059457342d-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org/ 
>
>
> This patch only test if alauda_get_media_status() (and its embedded 
> usb_stor_ctrl_transfer()) before using the data.
> In case of error, it returns USB_STOR_TRANSPORT_ERROR as done elsewhere.
>
> #syz test: |https://github.com/google/kmsan.git| master

"|https://github.com/google/kmsan.git|" does not look like a valid git repo address.

>
> CJ

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/000000000000796bc905d4301953%40google.com.
