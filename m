Return-Path: <usb-storage+bncBCQPF57GUQHBBBMCVOHAMGQENWNBGNI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A7A480704
	for <lists+usb-storage@lfdr.de>; Tue, 28 Dec 2021 08:47:19 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id j6-20020a056e02218600b002b261165281sf11095831ila.22
        for <lists+usb-storage@lfdr.de>; Mon, 27 Dec 2021 23:47:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640677638; cv=pass;
        d=google.com; s=arc-20160816;
        b=sMfOeciYNKR51hB7lQmgAv5Cj5l2H3o1Rck+0uL21OreuqphZTQlPPXqPxmy2Numpq
         emdP4SKCVCTlr8Gyiyx7zL/jGqYJ3udLTJw2GsCQX/UkWSLYNVHR/z4r8k7G+CpVy8rI
         qPKlmCC/G/0XMm+0pxEEU3B0aIJFFzyxkDzF+q5ndLxXe8ud0+fqKo12LXuszSCBjSsG
         VxLR5ogwFiJiaNbfYvp79GAAU1IJP3VCoa+alCCp4cu0Vol1+wu240ZFkP/Msc5q/q5l
         MIVpHK8i6iSlWMaF5YbiOhDJ2OfPlMla/KDgt8vs5dRhl8xzxUumcKvdiRqY6AnxY8KW
         ZAiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=kb3n9PVLa64SuLxLy2xZM0WKIEzyW81a29eJT47Dx5c=;
        b=EIIjnsXOSea2lBBrBfMZjWPPXElFbX2A1lAWZH4sRmEwxlns7bDG3K3fRs22AzxFOX
         mfMlAkFaGP4UpzjB6KF2GnIEfQEBAgHU14rHCOmtIe8gLQCxLu2G93w7gHDi5YbB2WJG
         05mzBmuyvYGEg59hzzuXaEL1vCTYiTApSieKfQNhX6caUW2Oq/FfqWMNm5bm8FuAB/QP
         S4lrvuTQOsVig5cGblS2cBtL4ffSyEjMYISc5+LP18l0ZZhD977wckQSZWSbec83YGuI
         xJdfIMs9tuMZOy+9LOj7jFaJ7fiey8mNUzFWjvYGwPgcr3ce7JOl1y3nKxWMtC0wSVwt
         FB9w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3bchkyqkbamy4abwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3BcHKYQkbAMY4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kb3n9PVLa64SuLxLy2xZM0WKIEzyW81a29eJT47Dx5c=;
        b=RZUdKCN+6yQL3ats1bJAmt/Crz/XeeA5N128MWtLhwXy66h60eo44HP1wvTUqXQiA1
         tMlb/KxNctEn0VKaU9Kp2+39dEV/bzg4j3uDAKoOWWQuHIqawV+KN7VtxlGvTu24PCaa
         EIILF6VsZhu4DVqkR02JaM09KGoBoQ+BgpG0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kb3n9PVLa64SuLxLy2xZM0WKIEzyW81a29eJT47Dx5c=;
        b=goWhSGK3D6tbrFmMKWW26dhS++3y8tmx74xdox/cTJTg/i6PuDMN5kvKCqoCtaVnZb
         tD20nYiL6gpU+zpGS1eMdH5LeL4sWAdj92XU9R3a38Q48LEAyMBMJKREU2cV+3dRjTa8
         I4gqfOjzMA5MFcSy3V15oyjrN6M3AAiDrC9D/rwleMIDEbPQPN67GUTi4RqC9pY9KPz8
         0ZcDnKzEV3a1h2Jq5zX+j2YC6tSbB0vCMUUpmH/7TrmSoc57H4MJSWmE37r5DFgpIfBz
         19TsT+yl4Zv5maAjmTTjJfEXBsK7y25+Zz8+yS2wDZCswF6Y+9W7arQz4zXsrQgItOk3
         Hi/w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5303ZLSHqQK4vx9wfi4AECzYhxiJBJqqZpxLyQcNdsgO019Rs9AQ
	J7ZZ0SUZKtAwSfJQ0GQaAkbLYw==
X-Google-Smtp-Source: ABdhPJxMv+hvbfH3PumbicNi/fM5Jhczrcw47LL2o7uXZzFMp1iJObvfTzs6zhxdqMM4BLATJW2CCg==
X-Received: by 2002:a05:6638:2594:: with SMTP id s20mr8791768jat.174.1640677637812;
        Mon, 27 Dec 2021 23:47:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6638:12d5:: with SMTP id v21ls1702971jas.11.gmail; Mon,
 27 Dec 2021 23:47:17 -0800 (PST)
X-Received: by 2002:a02:29c1:: with SMTP id p184mr4103881jap.301.1640677637374;
        Mon, 27 Dec 2021 23:47:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640677637; cv=none;
        d=google.com; s=arc-20160816;
        b=rzWww4G6rAHtl1WTT2y9Ue7FdKorXlNqu+54E8z9WqdVQnUK+o+s3SuV7FtQ/pHHCP
         +bTB0Ct/xrAGOJY0pMqgiMqyL2KEV2H78v79vxaIAuhEKQcMTrFztT4Jv2VpUsq5Hf4B
         s5Zb3J2W44HkGcruQuNO8ePFUhVr3ZipJ87a23/GEDNzJmhw5fYX+xJMFC4zEXzkI1RB
         y408UzqU7DejzoFu5jwrGnGbpDAyNcAHHsG9/geUZtP5ub1QEM99hwcALWWHZ+UgT1bc
         +YoI7wRpj4fBwhZPiiZ95mEvsQOwwFUl4TS2TwqsvDU2iC0YOl3oTyTCJ1z0R2ZKJA4k
         ubtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=Uw0HySQnOliUjUKI3r/PFZeo3az9rpmElYd8X6AhRRc=;
        b=KqjEr6vYu8B8v/wkAaR8JbRg4aEf0Qg3hjZ4PpW8iNhgP6CDgkrj3hL7eNXkxd47Uu
         nAaccvx0WZho08cTeH8rBauFBz17hOr3qUMgJd5ES724OqhKMImscggINReHLv2eL2VO
         EGrBSnny3o+m0OfyFkptEHxMFVimi99IB55mzgPiqokV7TR+cJVlYSiyTGnT70ZhvS3v
         3U7iSa/JylJlVCC38e7FtlmY02LqFMkkxdFGRoe/nAHBQrEEKnPSTb1yYAiJJschu8Jk
         YRsMVSp1fgwBliG3KG0Qpi0uX32GFORa545slxT3r1k/J4cbF3sZaskzXK4jcux10vrs
         2KrA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3bchkyqkbamy4abwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3BcHKYQkbAMY4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id a4sor5635516jam.59.2021.12.27.23.47.17
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 27 Dec 2021 23:47:17 -0800 (PST)
Received-SPF: pass (google.com: domain of 3bchkyqkbamy4abwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
MIME-Version: 1.0
X-Received: by 2002:a02:b11d:: with SMTP id r29mr9712662jah.71.1640677637200;
 Mon, 27 Dec 2021 23:47:17 -0800 (PST)
Date: Mon, 27 Dec 2021 23:47:17 -0800
In-Reply-To: <f78b974a-e36b-6d23-6977-fdf50c05600b@wanadoo.fr>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000c1a01605d4300787@google.com>
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
 domain of 3bchkyqkbamy4abwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=3BcHKYQkbAMY4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
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
> (2nd try - text only format - sorry for the noise)
>
>
> first try to use syzbot. I hope I do it right.
> Discussion about the syz report can be found at 
> https://lore.kernel.org/linux-kernel/0000000000007d25ff059457342d@google.com/
>
> This patch only test if alauda_get_media_status() (and its embedded 
> usb_stor_ctrl_transfer()) before using the data.
> In case of error, it returns USB_STOR_TRANSPORT_ERROR as done elsewhere.
>
> #syz test: 

KMSAN bugs can only be tested on https://github.com/google/kmsan.git tree
because KMSAN tool is not upstreamed yet.
See https://goo.gl/tpsmEJ#kmsan-bugs for details.

> git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>
> CJ
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/000000000000c1a01605d4300787%40google.com.
