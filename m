Return-Path: <usb-storage+bncBCUJ7YGL3QFBBC5VQLWQKGQEDCPXDJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCDDD43C4
	for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 17:06:53 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id w5sf7139643pgp.7
        for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 08:06:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570806412; cv=pass;
        d=google.com; s=arc-20160816;
        b=D+wNb09HD4wEfU7rCwPE/UQzbMLqD7tLHfQJyTyHdpQDueNtrP7MERCQTFfb4G52ep
         XdyBccGjk+8PIZaB9VsXIm5IwgXGAnUAFVSKrkXWDD6rkklXQpYbd8Pv3vctyZGd/qNT
         MrIDiUA9LxBJzjp14sr4lV0azphnbq60H9btGfmxblml5W+7Ii8auM9HeisMJ72o12v7
         CB6LV1smgILc1gEQfExf0CvLbtUx2i3/jjaTMQESJgT2i6Ssb/Q/7SLERWWqmupu04Cg
         Zesrnbj/Vd5jLTrf1rQfDv4yExJfzh/VTWEBzpjEPF5/2FxhviP7tdcktnQcEik7XCii
         altw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Ys4aSJkA34WoyjkC78FL3jin9ArSaGuAikIFzODEArU=;
        b=mbpIdsx3It6i2JJTAcYT1xXkjpp16KtYT6cDMxroksRewpF+DkjNPe8qEbuqgazro5
         ZiDhYlyFYUJGcB5L0dJAsS5V1vupIpxdvBk/Z6r7xJxeojsdRNmGGImaBD6PNXZGy3mV
         RAHEqkvYCBQJEJKamc1u6MhU868bSFvW3NeLJ7+9tOR5d91/yn6yQo1BE0cX5Gauut35
         Q5fufRsouFwL1X/+d4ZDjp6kDBi7L7DS/vcqemEYTlq/oyItiX8UOMnlIkSBp6kG3AH0
         9rT7pegpiAMJ2KIYba/1sSZyl0V1vCOie1RD3GR6LgWSlrEm16ac/wjG2tgidycnK4s8
         y9ow==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gfj56F35;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ys4aSJkA34WoyjkC78FL3jin9ArSaGuAikIFzODEArU=;
        b=jrEvqRvhSc42rCchF7QrJ5W2zxsR+X3K7YSc+kkoqiU35TlvrzENGXKWwUKwhaS4ai
         WALGh1FxyAbgTop+6ZjZoLfTQy5/fvv3JcLFJ4AXXDT/ce3tbLQGIh0moDZY1b/qkCen
         pC0uVVkoafmoczZ0heubfazLmkdQXoGDEse4E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ys4aSJkA34WoyjkC78FL3jin9ArSaGuAikIFzODEArU=;
        b=K5AfUsx+STyfnigAmE+ib6viJOevrviaCsyRDmmeJbX00IZ2Ea6S8NEc6CfYUBKh47
         dqHegwm0C1crdjptRB2Gqc2B7TNlTB3QzpKSeroT1kz3KAVSZwV6dmbezzZo04/pCvLE
         HN9tmh4wFHDqSsuJJ+rXzDWTBaYjf9qb6BiERCQMM0Mv/vO3MRrRxCS6sNdofgCe+w6h
         zBo7gsHnWqArPXBGDMgABFG9LLZE3TYgg/TxM0bBlnCD8BxSu/aB7YkPiKLvoSb4sPLJ
         /Ll6+zpJqS1hxMy6IS8A9ravMmf0NHnNGEf9n4HroloDThubGGfmDnGyd75ZH07nnMKN
         yLoQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXKaaGdH9kValRgBziglxBsa7q7pm8jZn6I+bujLsKb5XXk5gTr
	GCIlL9IS79K1HBGig7Yzut493w==
X-Google-Smtp-Source: APXvYqxtdh/bGeBaQnl44wE65k10JzIBU0cxkodeyQtTJKZYYm17et17sam0E5Tf+1zQYCwJFDlP9w==
X-Received: by 2002:a62:6446:: with SMTP id y67mr16403054pfb.47.1570806412046;
        Fri, 11 Oct 2019 08:06:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:d68f:: with SMTP id v15ls2129238ply.15.gmail; Fri,
 11 Oct 2019 08:06:51 -0700 (PDT)
X-Received: by 2002:a17:902:740b:: with SMTP id g11mr15319220pll.266.1570806411328;
        Fri, 11 Oct 2019 08:06:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570806411; cv=none;
        d=google.com; s=arc-20160816;
        b=btGq0dSlwe+kePeISUPcdge7YE78oS14B0ATpuUWeydmXzjc4hDxZX4CImFjxKbksF
         F6tXxab/X11dmVlqucsboFx8/p+YTH2MYtfjdGHr7VfyprB2ZmMqLCIq61bw+pYkgopW
         eDTkjFHVgN3eRqFUBr+c8j4+v2rlaDSAnsbETUhTr2T0DoM8TSnWjT1tfLz2L6+dcmz+
         Q6xOgy4q0a3x6l2XuT15m84049kE6irjPrgmiU35o31v9AhcsV04cX4EZKyVvmZ0Xd/y
         uiMob8PoTdCH3QAmdJ21vmANbyDt4l/MpUFHn7Y93Oe+Hb5jSftQFru6rSy0yh39bx0C
         tamg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hMl8/iSyAmqW49EcpjM3yi0cAtVtpavlAXFFaWcm6ik=;
        b=W/VLj18UQQUaoXe9fcy1Z73y6NQzw6lCKsaRwMd06KNCu7tz2inFuG0qlogU5FX/QW
         Cl9as2hslQXRC7VKMLKQj/a1U0J8pzaqLvA3GOmyws58W4DvOoawcSCPAwGVHXY8vvVj
         2ezFLVaYlQ8TkCOrTzqm8zL/62HIsmZD/EWxdmQfEwryH6K0DEZ0RFbq1cxFeM4j6HV8
         1iF2c6ce/CqKaJu9WwOv3ejosOCpr9gFOINkVW/d5rk4vrhO9eQ9yVMu+OYbGBKvEm5+
         si/Zf7oxTmoq4rVLcu7f4cMcaMD1jr/CE3mY2uVyjQHKpmAkughbYRMmUhdWmUHE++yc
         cVOQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gfj56F35;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id k29si1614906pfp.52.2019.10.11.08.06.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 08:06:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 73948206CD;
	Fri, 11 Oct 2019 15:06:48 +0000 (UTC)
Date: Fri, 11 Oct 2019 17:06:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Andrey Konovalov <andreyknvl@google.com>,
	Jaskaran Singh <jaskaransingh7654321@gmail.com>,
	syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>,
	Alexander Potapenko <glider@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	USB list <linux-usb@vger.kernel.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
Message-ID: <20191011150646.GA1240544@kroah.com>
References: <CAAeHK+zR=S1cyaYfehyUDrpMGMXvxgLEeS8V2ze2HkwYUp6bjg@mail.gmail.com>
 <Pine.LNX.4.44L0.1910111039380.1529-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44L0.1910111039380.1529-100000@iolanthe.rowland.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gfj56F35;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Fri, Oct 11, 2019 at 10:53:47AM -0400, Alan Stern wrote:
> On Fri, 11 Oct 2019, Andrey Konovalov wrote:
> 
> > On Fri, Oct 11, 2019 at 4:08 PM Alan Stern <stern@rowland.harvard.edu> wrote:
> 
> > > Now yes, it's true that defining status as an array on the stack is
> > > also a bug, since USB transfer buffers are not allowed to be stack
> > > variables.
> > 
> > Hi Alan,
> > 
> > I'm curious, what is the reason for disallowing that? Should we try to
> > somehow detect such cases automatically?
> 
> Transfer buffers are read and written by DMA.  On systems that don't
> have cache-coherent DMA controllers, it is essential that the CPU does
> not access any cache line involved in a DMA transfer while the transfer
> is in progress.  Otherwise the data in the cache would be different
> from the data in the buffer, leading to corruption.
> 
> (In theory it would be okay for the CPU to read (not write!) a cache
> line assigned to a buffer for a DMA write (not read!) transfer.  But
> even doing that isn't really a good idea.)
> 
> (Also, this isn't an issue for x86 architectures, because x86 has 
> cache-coherent DMA.  But it is an issue on other architectures.)
> 
> In practice, this means transfer buffers have to be allocated by
> something like kmalloc, so that they occupies their own separate set of
> cache lines.  Buffers on the stack obviously don't satisfy this
> requirement.
> 
> At some point there was a discussion about automatically detecting when
> on-stack (or otherwise invalid) buffers are used for DMA transfers.  I
> don't recall what the outcome was.

A patchset from Kees was sent, but it needs a bit more work...

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20191011150646.GA1240544%40kroah.com.
