Return-Path: <usb-storage+bncBD6LRVPZ6YGRB7FOQLWQKGQEGEL6GWI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 45136D437B
	for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 16:53:50 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id s28sf9171700qkm.5
        for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 07:53:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570805629; cv=pass;
        d=google.com; s=arc-20160816;
        b=K1RSSjBSCY/ZbmSxhU3h+ifhNXMIOhDFUXhplcYjEaMAZgLgXTrTx512nsvKHnn3Qb
         iA2sTnIrxP4hPaxe9NHrdfQXbCfJzDW33CqwB0RDjDh7V24ZHPnBmZK6Xc+3g5CK/t1P
         fmAIcOYeeszNZ/0j8OuSUXhy0Ze2EfqCMM3NGRsV9F/xlKBMLaP2ytZ7fTWg4ULQDgFG
         rOTH1JLtkIbYGySoiWvElj9jpqk+1eUmnRUxmNOrUxj/TVXnvgl9RxCAoqK+QYZn4xAj
         +zM+kDvWqHGCvNvDfRaPyW0Jw2tpiPJKnnBXTwUazIhZgxIh4YKqQmF3WxGcTRPwGyfG
         xlZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=kvEa8rU4Erm2mA7KA/zKzD1nuCi0o8duCxnoqM4Its8=;
        b=IeIPeIIMf9J9rRLDHFgR4sRHFteb9xNIemDcZCKUWmmw6Zq4iTQtnWhaWf8V+4vLCZ
         lxsvWuMwF5CSvMevNJZZzv4g/nKRsJpFGlnZf26lQ6ozXr/MwhwyugSuaoMpeSoWSiIB
         JsEN1M8IjSZqSyzEZ6/2345rUkr7EmURXCZ4XFLw564hLsbvajTXAS4f1GePPqhI4BHi
         9JB8M2kvQElyeEIT7uVhtItEAvaPWNOb9pj+Vn9vdEpbWejh6YVuEqTLTVDSnfJpZJ0L
         59gWfTEfBRwr2b1OZEEGxyeIu+hlGKG1dvz3uZ1rxjz7T7O9b270hLvrQTtmmAmqbXf5
         97JA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5db972c6@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5db972c6@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kvEa8rU4Erm2mA7KA/zKzD1nuCi0o8duCxnoqM4Its8=;
        b=VxSWjTFqMumPu6m0xT7XG8mqOqS4IRmqSoFd8FH9DZE+gSal1+rRgfcuMNp1JhXdvy
         ArBSW7lPte6guDM4+hwivjRjP0hec7M/csbSZ5F0DOL5Kvlol5/lGEWKDKalu3XJKLZO
         GJaUhC0+C9iBvCCOrBXvLXSCTR7IIBM9Ugq4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kvEa8rU4Erm2mA7KA/zKzD1nuCi0o8duCxnoqM4Its8=;
        b=C7EoyZ/5qA0Ijws/6+mjHnTPBYt4ojQ0AWc15I8ftaeixyQOYVaW77zhD3TaORovCG
         YvoxeiJBEN2gpOTF4AsDibbI0XHlk9Q+UKMnQVpfXosno+chLjF7mAIUTXsoxLIO1Zv8
         ueXLg2ZlpTHDZCZKQJ15jdqFOUpYol6S5L1Ch7LyvfjjDQX5+DU+9FpQgKSf2famXZM8
         +9AkE/nQTZ+rjzhjb3dMEjN5K+pX1PyKETjwtRHO/qdcXDWwc1WwurUHLB5oSfzHfp/s
         vfP7cxYy1EVMyrWzaUPcCGkZJtX8eV5vOGBRXFProSjpUDStdz/z6QL1D9E4eueoaEsi
         VaXQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUDCiu9w1Eek9G/aBWv/Jj9nSRVlVArONq0zOm/niw72sENbBBH
	dKeGZoWn4MW4YmGyrv2tUSUlgg==
X-Google-Smtp-Source: APXvYqz0JAxraOswGffpiAHiOHizjZyULlTSUTkmb55Yq7hDt/djxJYLYzEULd1KO2QZyPmndFXmDw==
X-Received: by 2002:a37:412:: with SMTP id 18mr10547619qke.203.1570805629189;
        Fri, 11 Oct 2019 07:53:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:4e04:: with SMTP id c4ls1740271qkb.3.gmail; Fri, 11 Oct
 2019 07:53:48 -0700 (PDT)
X-Received: by 2002:a05:620a:693:: with SMTP id f19mr16164833qkh.476.1570805628570;
        Fri, 11 Oct 2019 07:53:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570805628; cv=none;
        d=google.com; s=arc-20160816;
        b=wFgTwD9+DlrCk/CLX/QRpbEMcZXkYYqHyq5CfCRgvYpsZI4+Nu7zB9QxLxgyC/YRHa
         /YlLeKt25bLDogKd9k4Cvbw4OPHJnX0nGMvNalGC7eeCpt3f8G9i7NqpZB+CK4rHFLry
         xf2GvvV3Kn9ukMBdrkL7UGDOQpeCqny/lxyHeeCD3d63MsMn4bnahtiG1kiKR5evUJmn
         1tqBKigCUgf771RgGAesmQzfVWnG5F8xC9B0ipOZ0rqL5cPPlbK6hVJgFswe1MnCQUEy
         ZSwklQtQ4r0KqlIBz3F8MtioKD7xPWhvm5HEqTMG2n7z0JdSE5/1ls2fcxDAZC/rzHWs
         edyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=kvEa8rU4Erm2mA7KA/zKzD1nuCi0o8duCxnoqM4Its8=;
        b=Nuud32hq6Hg+7UpUfzmrLnD3TdPGOaFKccA40sxDPrKKCVaR+b9nemxU6VHXSA6iyn
         0oczHvxfFfhQmU7bBamIiDtIIhu5U23YiMgO5TUClYJUgfmtzWJrk3shhv0X4eYwY19v
         vdQrhzuinOwI0AHp9GifjkwIxDhEb+SwjY2vpbJPHbzx7hNwBelXKRqJkZFehpmYjh3u
         vzYWbcMjQ3IA3llhIGMTLlvjwPRnvAfaWK041cg7kfIo9YELVsn46JIj2sy/NZzLSqLv
         1NT8L6XyVhTo0Mgt6TwNYL/M8VwbBjVGF/+zYcLVZO1pkxzBPlUNN700AZfAe4LWxKZT
         rHrA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5db972c6@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5db972c6@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id p7si9223541qkk.38.2019.10.11.07.53.48
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 11 Oct 2019 07:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5db972c6@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 3769 invoked by uid 2102); 11 Oct 2019 10:53:47 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 11 Oct 2019 10:53:47 -0400
Date: Fri, 11 Oct 2019 10:53:47 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Andrey Konovalov <andreyknvl@google.com>
cc: Jaskaran Singh <jaskaransingh7654321@gmail.com>, 
    syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>, 
    Alexander Potapenko <glider@google.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    LKML <linux-kernel@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>, 
    syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
     <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
In-Reply-To: <CAAeHK+zR=S1cyaYfehyUDrpMGMXvxgLEeS8V2ze2HkwYUp6bjg@mail.gmail.com>
Message-ID: <Pine.LNX.4.44L0.1910111039380.1529-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5db972c6@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5db972c6@rowland.harvard.edu
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

On Fri, 11 Oct 2019, Andrey Konovalov wrote:

> On Fri, Oct 11, 2019 at 4:08 PM Alan Stern <stern@rowland.harvard.edu> wrote:

> > Now yes, it's true that defining status as an array on the stack is
> > also a bug, since USB transfer buffers are not allowed to be stack
> > variables.
> 
> Hi Alan,
> 
> I'm curious, what is the reason for disallowing that? Should we try to
> somehow detect such cases automatically?

Transfer buffers are read and written by DMA.  On systems that don't
have cache-coherent DMA controllers, it is essential that the CPU does
not access any cache line involved in a DMA transfer while the transfer
is in progress.  Otherwise the data in the cache would be different
from the data in the buffer, leading to corruption.

(In theory it would be okay for the CPU to read (not write!) a cache
line assigned to a buffer for a DMA write (not read!) transfer.  But
even doing that isn't really a good idea.)

(Also, this isn't an issue for x86 architectures, because x86 has 
cache-coherent DMA.  But it is an issue on other architectures.)

In practice, this means transfer buffers have to be allocated by
something like kmalloc, so that they occupies their own separate set of
cache lines.  Buffers on the stack obviously don't satisfy this
requirement.

At some point there was a discussion about automatically detecting when
on-stack (or otherwise invalid) buffers are used for DMA transfers.  I
don't recall what the outcome was.

Alan Stern

