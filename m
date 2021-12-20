Return-Path: <usb-storage+bncBDE4FPUCVULRB4XQ76GQMGQEAD2CNOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x147.google.com (mail-lf1-x147.google.com [IPv6:2a00:1450:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DEE47A3EC
	for <lists+usb-storage@lfdr.de>; Mon, 20 Dec 2021 04:28:51 +0100 (CET)
Received: by mail-lf1-x147.google.com with SMTP id k25-20020a056512331900b004259a8d8090sf2003605lfe.12
        for <lists+usb-storage@lfdr.de>; Sun, 19 Dec 2021 19:28:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639970930; cv=pass;
        d=google.com; s=arc-20160816;
        b=yDier6/3knNT7/Y1GlycKLnCjh1z1x2YJfYapP3ShXeHFyjakc0pvjIvhlSD6Lsg+i
         sqxkY9LyHycuKq0BkjKboLMbel38Ih3wawgAlI6v+8PsTcKhfB/Yp6VbdFmF/va+mOtK
         m1j2uAZsbLJ15k8O6eLYK9aqi+AGdAz5G/DamFC/KJr1gNlze8g8onSWKdJ7cIlcyeln
         N9L8af4S9bK8wu2lTtmaKz0V7xizRxHWWUcMrBmA+8mQEOtxURmQcXTZVkjAHHXmeXAc
         nirunwpTWm0rySTpqAacKmL0h3mtqNJyVrq3qbIAYJ9VGwdDBXjK8gW8+aKJ8f33c7i2
         g+Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=03Sxrpi3hYGJZYD1lwIEHLdv0HMTsgmBVYFXVX/Ay28=;
        b=BE4i2o1RZzHzEN94gVtj91oXWXcVFnMBUuNQPME91caTx7DDv781DWoS2eup3h+0Eq
         a5ockkongOZ/+LhbxxhG5nkHZ9NCSRNKxKWjXXuyj1TltdSWA5RMdBmkPHMcwYhMKEPT
         IInE309tSelY2ICI8jp+WHd8iE6PE5SY39ppra4I9qk64fNsgyzefCqd3PUN2VrQgTII
         lUDpkmm6EXWoQRNB7maUNtFKhiKZAf4m9Uxlk4IZ5rrpByGwM5GvpK6hNdAe5uEuT8Jt
         /vtUjLYHko3JBLyJhwS6UNBlwpGWHarejccmFlzaO6OW1XQFrLhK/Sme7aG4WRtUg22P
         3+Og==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="llE/Xtta";
       spf=pass (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gnurou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=03Sxrpi3hYGJZYD1lwIEHLdv0HMTsgmBVYFXVX/Ay28=;
        b=hXNKor/486wA/hKBsYoEHG6xgM9rRdkFp94y8hr8MABSxn2EOoYHF+phgJJ53pR1x2
         FUCN//tP5wi8T2K0odX01zuwcSJt+lkb0UJ/EuDTTwL24MU3rvr4xjGCw0ZiZmYOyFet
         65o9a444tECoCxNFQ6rh8klg6Wc+b8oDSgvm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=03Sxrpi3hYGJZYD1lwIEHLdv0HMTsgmBVYFXVX/Ay28=;
        b=URwus5n5NwkGZNB173dlGlFLXO+xfd/+DEQuupGFiAua8thgHnGPWdGaCkTQ7tybeS
         2feQDokf5EDxWJhCHuSl6P1wfn/LeZU/bgcbrYPpYm5YqromWY/3RX93/nJktoDLqdVz
         r4eaq9JQyJz7AHG2DsG90bCn3NSSBwGvTJ0t8HbIwvGeBDVHAhDsyEkrEOtELWIb6oXC
         ohppGPs2o6GfBjMQk9kv3dEV2vBzBK15VvmYNoStOmH5DYQWirVGFQr3e58Gx/BxrE1E
         I1vcasBABc1O2xcZK4k3Wu7WACthhu4C+EmpeZr7Gn/j5qGHTbhJ9asQX8gYrYQrfOgZ
         Ej1g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533oLd5VP7sfwVa0qxXUdBZBmc0CqmVImjKZEme8DlVQewdctdam
	N4fs8jFY2ii8jGj5v2Nr4B7S7g==
X-Google-Smtp-Source: ABdhPJw1sY4NalTvdYmkLNnreEkekPNhImT6GpWFYcpl8s92/IlvQehhck2kJN8An8jW7MQverfQyA==
X-Received: by 2002:a2e:96c2:: with SMTP id d2mr13017523ljj.46.1639970930678;
        Sun, 19 Dec 2021 19:28:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:3389:: with SMTP id h9ls1184338lfg.2.gmail; Sun, 19
 Dec 2021 19:28:49 -0800 (PST)
X-Received: by 2002:a05:6512:3391:: with SMTP id h17mr7648873lfg.646.1639970929559;
        Sun, 19 Dec 2021 19:28:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639970929; cv=none;
        d=google.com; s=arc-20160816;
        b=xDFfnTTweQU1BfRxVaqCcZbJKoghb91QugURoMe9JwTA/IioZI9FmrGgIwzla/o/aS
         xQZeRIHt4Da8vz0bYHUIwAt5dE+HRfMOd8KzC9SfiewbEns1GdU8ro9wsmvnGnD1L4dl
         +4nvjPF+rpVi35Fj5yO15OYtQX4KMLn9tmJLRFrZcpMyOmmihLjLbaDyOLnVX4lru3OA
         NOoWHnLTCK5tny3MeGb2yLkGQKsLyL1iMdavssYIiL8qbf6lWWPFkyn/RJ0aKs0LWfbN
         nHceUxOyHAz01ehWEg028C86OjChNzoiGnGe3Xz2pSJ4HRAmuWaRd/+RQWWMAcKFUl0P
         5s0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fRcTObY/+9A4hixoekg+KAnW7I8Bz5CnTH8eOyUtBR8=;
        b=RLfZcH+1k1TO3p8FG6DmENBK8XZQU9gdP4EbY27Qj2HVBi2sCenYjwopTK+f6dh57n
         pxoJLbWNlagIHQC9MW/cyhHeChfXGcvR83u5VixJp0PWt3W5tD5mAoUeyXnSwvzRYNA3
         ssaW1gg5IYzDYkt4SN2BfKQmKv9D8WK4SicQkjB8N5zBopRJlZLO1UkrbDJmaKeMdY/s
         b9oS/6qrZG2SmDy9bGh/3nQQA0VNU953tSjKtm1Vzi8rpM3P6xO0oBsyq4IXPnaglIPY
         OGUd19Jwc6bYE4JvOf0juwKCC9wa9evw/5FItSar6dxTuNrffFA0IA3APW4kyn7QWoTf
         3Quw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="llE/Xtta";
       spf=pass (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gnurou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id h2sor1373577lfl.22.2021.12.19.19.28.49
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 19 Dec 2021 19:28:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6512:a8d:: with SMTP id m13mr13938249lfu.638.1639970929272;
 Sun, 19 Dec 2021 19:28:49 -0800 (PST)
MIME-Version: 1.0
References: <20211212115506.180629-1-gnurou@gmail.com> <9b20ae5d-be8f-59dd-3136-2a9f7ce216e9@suse.com>
 <CAAVeFu+sLzNUztnW4Vyr6ukCyjxTwCT-L4Y2xEWsRx=CPuarPw@mail.gmail.com> <c4b4aa34-12d9-7000-6398-d94a7ebffdfc@suse.com>
In-Reply-To: <c4b4aa34-12d9-7000-6398-d94a7ebffdfc@suse.com>
From: Alexandre Courbot <gnurou@gmail.com>
Date: Mon, 20 Dec 2021 12:28:36 +0900
Message-ID: <CAAVeFuJ+kSW9KNOwa_bTzbbeZ=-LfnvL4MR2hDqCsykkdqkKLQ@mail.gmail.com>
Subject: Re: [usb-storage] Re: [PATCH] usb: storage: do not use UAS with
 Logitec LGB-4BNHUC
To: Oliver Neukum <oneukum@suse.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gnurou@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="llE/Xtta";       spf=pass
 (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=gnurou@gmail.com;       dmarc=pass (p=NONE
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

On Wed, Dec 15, 2021 at 11:03 PM Oliver Neukum <oneukum@suse.com> wrote:
>
>
> On 15.12.21 12:41, Alexandre Courbot wrote:
> > Unfortunately I am not familiar with the storage subsystem so I'm not
> > sure which quirks would be good candidates to try, would you have
> > suggestions? As for the command, reproduction is rather random and I
> > did not keep traces of all instances.
>
> Hi,
>
>
> could you try "fgkm" ?

Trying with this and will narrow down if it looks stable. Please
expect a few weeks before the (hopefully more refined) patch.

Cheers,
Alex.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAAVeFuJ%2BkSW9KNOwa_bTzbbeZ%3D-LfnvL4MR2hDqCsykkdqkKLQ%40mail.gmail.com.
