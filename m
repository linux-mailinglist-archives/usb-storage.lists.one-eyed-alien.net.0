Return-Path: <usb-storage+bncBDX4HWEMTEBRBEHBSHWQKGQEM5XTDTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id E53A0D6327
	for <lists+usb-storage@lfdr.de>; Mon, 14 Oct 2019 14:56:49 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id u4sf12563013pgp.23
        for <lists+usb-storage@lfdr.de>; Mon, 14 Oct 2019 05:56:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571057808; cv=pass;
        d=google.com; s=arc-20160816;
        b=fM9EQKvNV4Hhe2AqudKz3hSRuKHfo8/xSybb+CfyYoKcemhQknDcatU3NrDLCxjLWp
         SU+mlZph/zRzutJ0GfPztxThZjdK64k40zB2p03/Ojjy+NRKnGQu5ZuFCoFMB4a6FhDT
         Loz+QV1EwePXfspV42b5PNjTxNM+hoFpZS5Wi2bg/ug3I83MpgR4wXaMs2Y5JP0Aa7DM
         yC7iL8uLfvlS58HI4NQN36VZPHEpPfEFnlzO61lCWYJCh62vQz2rfdfFZF0Jx05TOwQO
         AsfNtKJp2ZYFi8vQnniMjg131nv5JVEzVi3/nbbXvwB6r6gKzSOWb2E6Ah60MRROqJRS
         W/Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=R3q+JMKzBGAQnCXlhIOLlX/Gd2BadJKwc0zLaY4klC0=;
        b=m1sm25BEvkzI2j2zBP7Sofho9aFdY6EatNSX+Ul58UM32R51QJ/2l9Th5unL/MCO7j
         X9sl5bAQMegHsuyB9qdrEhFBUZeCfXimftiCLa+KACXoFvVw/bw+ezl2RbHR3dQvnkoM
         47VSR6Rl3ckfYGbh6BQxLp2Q52C2rPWCyiLTEYhn1jRpjW8SLNYiMHylJ86v+QOza9kW
         DLG+xfhNqLuOH8DA6924ltUqUnkYRsPNP8N1aWburoyhh9V9dByGf4iDOi5JEonXtCRX
         zbpU3MqehDxkpHYf+xZSQQX8zqtT5QFqGN5NP+J0YN9f9fTumixdLfkwM7RiGB3XQ6mm
         RlyA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YDp68Zyk;
       spf=pass (google.com: domain of andreyknvl@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R3q+JMKzBGAQnCXlhIOLlX/Gd2BadJKwc0zLaY4klC0=;
        b=HGxwrvlog90SgxEI8TIwtNUvbl1wdmaW0y2P2xpJ/vA8gpORrtteDeybBqLl6dX3Mi
         YNwqxsnzh2iZoOexU7GRi2RNuZgq7DDwJU4hJO+PbjfsX2gLMkfzBp4ieGfrt0b6l4/W
         ybSTe54a0opPp5jzYsPncdERdjJuUKaoiTgFQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R3q+JMKzBGAQnCXlhIOLlX/Gd2BadJKwc0zLaY4klC0=;
        b=p/rvFrQCDPNR7YRwSRnUprurIX5lUfzRGg+89cQWkK+yyWqYywzIMo1fnId3KgpZa0
         EhTUdtiLyitZPQ+5TFzEhAMr1nUSbCgqBdGlPmyfAAvZL3q+VUFs1w3TW5ls70SWPv5+
         DaTBEJjn1DCT9JzByuFJHrFdorIEsE79+UE0UjqixFH8sH9vgmkabZ1Wt/HK0aMAJeQk
         i0JToCpinNyB+k5ysBSKOgPDDvazYgFIneWMQyNx1rVx+ocys76OrSpnuPMD3qeF5L6A
         SrRqYCO23WuevJMAnhVaDkOsZhrsocWee7j0GzSQp4gCKQNCoYuOnTbRd2T0t/LGob/K
         4j2Q==
X-Gm-Message-State: APjAAAXa7mmwCjcV7GSX7TxLJMT4uqfPSp9giJLMz6x7zzb3uWti7p1m
	pFi5VVnI+yimFBzX34Rs8K9ebA==
X-Google-Smtp-Source: APXvYqwSiwqHNPq6xg95JXul5HGsT1byawM6sCnc+8pLTTfCK3EhaN2OlrjK0wjfoSDwb7w4jY/1eQ==
X-Received: by 2002:a17:90a:f311:: with SMTP id ca17mr34494399pjb.112.1571057808552;
        Mon, 14 Oct 2019 05:56:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:6904:: with SMTP id j4ls3988851plk.9.gmail; Mon, 14
 Oct 2019 05:56:48 -0700 (PDT)
X-Received: by 2002:a17:902:8689:: with SMTP id g9mr29705108plo.131.1571057808040;
        Mon, 14 Oct 2019 05:56:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571057808; cv=none;
        d=google.com; s=arc-20160816;
        b=vQexr+2TBuTzpif7HzmMxL5ELemVRKw/Ua24oF6kqc14rO3bw2sZ54ep1XCkQtZm/h
         nUDtSQY/KKN7oWwd8auFemSYM3t5MmsDjmJVuoEXyu3y91anrri9rMgGG18JrGA28KF0
         EgLWJ1wskMZJ09Gj03DyNSneGfEz3fTOHAEoR8sIXgrHVSqnuWmt+Be+FWpV/Nz34dxK
         Q6D1OPTRGj101/aFoimnUaiat7HkcFbGKVHQ5a6UKmzYlg5bG59EgfeE7tQkXixu3zlR
         Es8Bmfa2sww9bkzk3CV6Id/mptrhW8BKlZ+ajI+kVimT4WGhVuAu5p35bmp9RuJsJrH+
         HIaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pyS+DrympKyI4FdnI2r2kXlN0WEKP6R4E5v/Ib2pOHo=;
        b=GAHiHy7aM1bPLoa1GiDPtLB9e/Ckl/GZwyTpPhlr9KdlaApk5B2SJwST0vNIGX9jWA
         +hmK78Iqp/ebr1DrolCavK9YKAzHbzHrefoVpmtkviTbSoDM1vfhQuwSps2e3I4IVD8T
         CF0PcnjkQ5oxOOf9latFOdlT0hwzwGPTx7J8YMtw4NGLYAhfBwbhC4Qta4clwo2iPeYw
         E/WNJ3aLQLWOLU0ZrIQbjv2+QmmfRSebL1yv5vlHJbxnZy0qOdGT9W6J57GA9qrcwEEv
         diXoOscEMPc2fHJztc6E2fbFdPjYWMJyRsuwB5pheJfivB0ElEdjljATS+D+qlNRiFrB
         0Z8Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YDp68Zyk;
       spf=pass (google.com: domain of andreyknvl@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id e36sor17592654pge.10.2019.10.14.05.56.48
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 14 Oct 2019 05:56:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a65:4c03:: with SMTP id u3mr33085293pgq.440.1571057807365;
 Mon, 14 Oct 2019 05:56:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAAeHK+zR=S1cyaYfehyUDrpMGMXvxgLEeS8V2ze2HkwYUp6bjg@mail.gmail.com>
 <Pine.LNX.4.44L0.1910111039380.1529-100000@iolanthe.rowland.org> <20191011150646.GA1240544@kroah.com>
In-Reply-To: <20191011150646.GA1240544@kroah.com>
From: "'Andrey Konovalov' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Mon, 14 Oct 2019 14:56:36 +0200
Message-ID: <CAAeHK+yCdTUtTMbH6r_r=hmS+Tk5mk6=nyRVuOFz6yvYSySKPA@mail.gmail.com>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alan Stern <stern@rowland.harvard.edu>, 
	Jaskaran Singh <jaskaransingh7654321@gmail.com>, 
	syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>, 
	Alexander Potapenko <glider@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	USB list <linux-usb@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YDp68Zyk;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Fri, Oct 11, 2019 at 5:06 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Oct 11, 2019 at 10:53:47AM -0400, Alan Stern wrote:
> > On Fri, 11 Oct 2019, Andrey Konovalov wrote:
> >
> > > On Fri, Oct 11, 2019 at 4:08 PM Alan Stern <stern@rowland.harvard.edu> wrote:
> >
> > > > Now yes, it's true that defining status as an array on the stack is
> > > > also a bug, since USB transfer buffers are not allowed to be stack
> > > > variables.
> > >
> > > Hi Alan,
> > >
> > > I'm curious, what is the reason for disallowing that? Should we try to
> > > somehow detect such cases automatically?
> >
> > Transfer buffers are read and written by DMA.  On systems that don't
> > have cache-coherent DMA controllers, it is essential that the CPU does
> > not access any cache line involved in a DMA transfer while the transfer
> > is in progress.  Otherwise the data in the cache would be different
> > from the data in the buffer, leading to corruption.
> >
> > (In theory it would be okay for the CPU to read (not write!) a cache
> > line assigned to a buffer for a DMA write (not read!) transfer.  But
> > even doing that isn't really a good idea.)
> >
> > (Also, this isn't an issue for x86 architectures, because x86 has
> > cache-coherent DMA.  But it is an issue on other architectures.)
> >
> > In practice, this means transfer buffers have to be allocated by
> > something like kmalloc, so that they occupies their own separate set of
> > cache lines.  Buffers on the stack obviously don't satisfy this
> > requirement.
> >
> > At some point there was a discussion about automatically detecting when
> > on-stack (or otherwise invalid) buffers are used for DMA transfers.  I
> > don't recall what the outcome was.
>
> A patchset from Kees was sent, but it needs a bit more work...

Hi Greg,

Could you send a link to the patchset?

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAAeHK%2ByCdTUtTMbH6r_r%3DhmS%2BTk5mk6%3DnyRVuOFz6yvYSySKPA%40mail.gmail.com.
