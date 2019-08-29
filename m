Return-Path: <usb-storage+bncBDDJNTW5VUMBBZULTXVQKGQEH5W6CCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id CB400A0FE9
	for <lists+usb-storage@lfdr.de>; Thu, 29 Aug 2019 05:26:30 +0200 (CEST)
Received: by mail-wr1-x446.google.com with SMTP id e14sf1368813wrd.23
        for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 20:26:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567049190; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y2riF1APAVZ4TCkKOLaq/SCam6IVPB9LmXuFrZ4mE+U2qXgNXdp5oTckAcf1CoELgD
         hM6VE/Qg+ZarVLPf4NdLVekEobVogjEFjz9wA/hTWTIINBFkF2creZR5qgbPbBFIouPM
         iuGxJZ+NNWjOkHEcj3yJIEqQiK87x6+PiV1fYjvgCw5KZO2zo0Yx5A4stjN1e8dtUFB0
         yfwyw1pVxi+SI/RRhnV9ZHJbv0bnH7Kh1W2xwBrptUjWMAZmMdn+TGI/mIHiuprAkLhY
         lJV4xU9ok19BDl6TGjN7nuuvA3lnOXjWWGTl5WwiPXkHeBmOmDfH19c55juB0eT5I4fm
         sgag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LX6BmHSYKAjMyekyVh8OMtnfo1H3GzhDtI2S+gr7T9o=;
        b=wy57Jl0PS2dx/Vy4TGYOOOIo0CXIdAgLwRWCxkov/2lyup1jE1eOu0er74YF7or5w6
         fQeEkh/7Qltm5a0RGxBVL6G/KJA9LHJJdMmRzRERPu/QVsuRbYhtQMZ3Df/uFTCfzxQH
         Y8RhWkHpnIs3qZuaVQ0DwtgD7GZHzs1DTJDvdECZuzJK3P73sw6Dq5A5E8+p3SC4lMDj
         RfS8sR6VgjomqWDtWcmt3JF8Vke9ak6bXxkRc74TQFi2OaKLZxxiWKVjhSReeUdcrEvh
         BlNXceqdEGQ64oImsMJfMYx5Wh9hJ6a6heaFhT6K1z+oDAdyqEwDob3e0/wec+CjMw6W
         vs0g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MEFBjgMl;
       spf=pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jwerner@google.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LX6BmHSYKAjMyekyVh8OMtnfo1H3GzhDtI2S+gr7T9o=;
        b=d3F8JYqyyXDf8UhDhvRRRTaopLGfkqne5e5BIbBKvNM6VstxK51p7zD9SHLLbt4FUu
         qHX/f3j0gR0S1awoAqOjPIOv/zKKBLwznvUO+kxpV/5SR22a+uNUNaPFMbcR2AFlFtC9
         TthjOTRsTBVBGF1Ip7U+OypmuBQq+1ZyNdBrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LX6BmHSYKAjMyekyVh8OMtnfo1H3GzhDtI2S+gr7T9o=;
        b=Yx2+g+c/WBpfBOU1rHb6evISj9is00yXYzFuCgqYocMOm3MeVJazM1w4TGIX/XrkEQ
         nXS7mfXGvKo17qj8PEVsFJuoX5yb1QDmEtseWYosejvb99fPHrzmcae+d34uC94cKVPC
         wHTgmI5qd8nzG+Feh3zm7Nhq2HlVo9sqe3+sZgeEYJedPItZRP0gaB3QGzujGpQ6sg9c
         3oC+F+zGZl+J4RIi2kQ/SDC/r5JRUExLE74+w9VCwiJYA8/47sWfDk/TW0sm6s67A14Y
         g14zzYbUjtPP+ajfID0bBavIxgfxPXI/LeG8RZGKtiPw1IEMx4s/l11Gi5gBquZi72vi
         7sFQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVCWGfoiyN33u9BmPzLXHQPaUjoaFsv1VZSXJqt3KGbzkt/mBvi
	IUf+0jhtxbQYhQOhDpUjpffXPA==
X-Google-Smtp-Source: APXvYqzpm3xO8Niu5VH2n/yxzh50RXw2tweY4KpSplHdExG6xq+JAT8Qv8V+6s8xmy7tpmtmtifDgA==
X-Received: by 2002:a1c:f009:: with SMTP id a9mr8365357wmb.151.1567049190491;
        Wed, 28 Aug 2019 20:26:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:514b:: with SMTP id u11ls356569wrt.8.gmail; Wed, 28 Aug
 2019 20:26:29 -0700 (PDT)
X-Received: by 2002:a5d:4b83:: with SMTP id b3mr8332719wrt.104.1567049189669;
        Wed, 28 Aug 2019 20:26:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567049189; cv=none;
        d=google.com; s=arc-20160816;
        b=MX7II1PrIK8fbZQ0qNwzj6JEvmTbUnHAtandqncBXNsgCD2LHJmoUMse8nuRkHRgw2
         cZ98VUYHTlJxE++023ENTpXOemjOHh+S8xBHx3dc1WyYclFv/Hld7VLT9fS+4DBE4eQz
         J+rrq/9AIIl4+UvplLiNVFT7IEVQMhaXzKtNJo3V2hQBrwaiCqOXvXkM3gqNgikdUBfZ
         nXx/vuHgoWH3d2yZvyVZHQ6FvgrM9Uk21FUg2ElGMWp6aTQ2f2kYJB+XEZH2u1cij3yB
         SaNUm6+x3vTfJlsrCljLmSc0n0fe+uQY3nTVtLSpMnAmYQlOa85JW1yLKt4NomWNxC3K
         IoHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4VXtdUN33mfInmL5wwfclcs21XFuQJDuRee8LI2f6Xo=;
        b=Jn0nfg7kAF5n6hd2Uef2FvUBksOB1DRMZvuJdpDCPo1Xju7B9bvRe5QbP9OYnMu7+J
         0vKdotln6bul/+gP4FuJ49UGcXvsEMUSDjTfDhmNoy0utNHK4hvXgeKANXlHaa9cmzDD
         FfD8rU7k4N5FMVorHrynupOTV88X9PJTyzZEqdPILj/z6AJPDfAQvdnJW+yO0570lZqk
         H/T339uv/taVhpLPdauCMlyRgo3ORaplckuv1qXDWo1XjPGb7Z+/hTuhLhVEvwwGtHhy
         kzr/G9kcX8CzrCQP2cYP7VzG8By2NPkU0T9ceLlX4uvOtOmGLnFnK0Pr4xkwM5Z2xucH
         gj4A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MEFBjgMl;
       spf=pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jwerner@google.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id r5sor729788wrv.18.2019.08.28.20.26.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 28 Aug 2019 20:26:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jwerner@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:adf:facc:: with SMTP id a12mr8284203wrs.205.1567049189131;
 Wed, 28 Aug 2019 20:26:29 -0700 (PDT)
MIME-Version: 1.0
References: <Pine.LNX.4.44L0.1908281155100.1302-100000@iolanthe.rowland.org> <bac067d344bef4e6fff7862fcad49cdbf4cd4ab5.camel@redhat.com>
In-Reply-To: <bac067d344bef4e6fff7862fcad49cdbf4cd4ab5.camel@redhat.com>
From: Julius Werner <jwerner@chromium.org>
Date: Wed, 28 Aug 2019 20:26:15 -0700
Message-ID: <CAODwPW-+c6Ty_gqEFEaE0YhtutMR2tFnhEFOQre81uyM3mfMVA@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
To: Dan Williams <dcbw@redhat.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, Julius Werner <jwerner@chromium.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Kernel development list <linux-kernel@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>, 
	USB Storage list <usb-storage@lists.one-eyed-alien.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jwerner@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MEFBjgMl;       spf=pass
 (google.com: domain of jwerner@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=jwerner@google.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=chromium.org
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

(Thanks for the reviews... I'll get back to the kernel code details
after double-checking if this can be done from userspace.)

> > Besides, what's wrong with binding to devices that weren't switched
> > into AOA mode?  Would that just provoke a bunch of unnecessary error
> > messages?

It's not about devices that aren't switched into AOA mode... it's
about devices that are switched into AOA mode for other reasons
(connecting to other Android apps). I don't think a kernel driver like
that exists today, but it could be added, or people could use libusb
to talk to an AOA device. AOA is just a general mechanism to talk to
an Android app for whatever you want, and the descriptors sent during
mode switch clarify what app it's talking to (and thereby what
protocol it is using... it could be mass storage or it could be
something entirely different). But a device switched into AOA mode for
whatever app will always use that same well-known VID/PID (18d1:2d00).
So if I just add that VID/PID to the IDs bound by the usb-storage
driver, it would also grab a device that was mode-switched by
userspace to talk to a completely different app. I need some way to
make sure it only grabs the intended device, and there's no good
identifier for that other than comparing the dev path to what you
originally mode switched.

> > > +     /*
> > > +      * Only interface 0 connects to the AOA app. Android devices that have
> > > +      * ADB enabled also export an interface 1. We don't want it.
> > > +      */
> > > +     if (us->pusb_intf->cur_altsetting->desc.bInterfaceNumber != 0)
> > > +             return -ENODEV;
> >
> > Do you really need this test?  What would go wrong if you don't do it?

Yes, otherwise two separate usb-storage instances bind to the two
interfaces. The second interface is meant for a special ADB debugging
protocol and will not respond at all to USB mass storage packets, so
eventually the first request to it times out and
usb_stor_invoke_transport() will do a port reset to recover. That also
kills the first interface asynchronously even though it was working
fine.

> > IMO the userspace approach would be better, unless you can provide a
> > really compelling argument for why it won't suffice.

Well... okay, let me think through that again. I just found the new_id
sysfs API that I wasn't aware of before, maybe I could leverage that
to bind this from userspace after doing the mode switch. But it looks
like that only operates on whole devices... is there any way to force
it to only bind one particular interface?

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAODwPW-%2Bc6Ty_gqEFEaE0YhtutMR2tFnhEFOQre81uyM3mfMVA%40mail.gmail.com.
