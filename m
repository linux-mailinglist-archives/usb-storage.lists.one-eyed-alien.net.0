Return-Path: <usb-storage+bncBDE4FPUCVULRB5FI46GQMGQE3TW3HIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x246.google.com (mail-lj1-x246.google.com [IPv6:2a00:1450:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id B931D475808
	for <lists+usb-storage@lfdr.de>; Wed, 15 Dec 2021 12:41:41 +0100 (CET)
Received: by mail-lj1-x246.google.com with SMTP id bn28-20020a05651c179c00b002222b4cc6d8sf6247034ljb.0
        for <lists+usb-storage@lfdr.de>; Wed, 15 Dec 2021 03:41:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639568501; cv=pass;
        d=google.com; s=arc-20160816;
        b=xM21shmHUt4phNA8XlmdGqHUAg8u6Jrqz7c1sm643RkqdVWvxWw5MKR9cMAb3gUNgE
         oK81BNxI1WjqTW0tHXBeGLy1yuYzB28TObFLjyEnhPsEzEtm6FPpaE9lcclQ0djYnKzY
         oAccyq9diP740h+v/+DTL1+bAMGuWrq994SysdDb+SoQZX+9HGWwL4K75YfoaPOdj81L
         cssA+kY1dBetFGDpU3kdzDo9gBtE6k7rHXPngS0IN/88qRE8JQ21PldoohBybJfZnRyb
         KlFR98e68A5L1d45JjSUZtlRpN+v6eqMXyNcK0jRKnyVHbQkM9N8J4ICr7OZiWUjhfCH
         xmYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=i89gEBOG7Jmp/vq6Ym7Jd3PDHCeCSLBh7pVi/Ihvz/s=;
        b=IS9As9hpo9RXmDgZQxNM4hvWYR4Xjwx9SeBdJcU2lG5mAI7Do8HnobW94NlSZjMovL
         eeoIGTceSflKdwTYFAR4fYNl0IwID1zRhUjfLyl+rn3Dr/t7DEzOb71Wxqs20D1833Ax
         j7cjPLIxtNYQRro8avlHtEng4HwM0E1Qlu6EhOx8GcC4FGOIZIcshfdcxsQOODYS9XiO
         Nbhn3MN9V/nt1f0/4vEXC/bOwIZxRH55NlxgJo5ZbAl59q5SGHoN8lEywJnKfXioBTmg
         VYL0pryw8UUECTmeHtH/5GoHRQgRY/2tMRSHLEg/47uv91/Zlui7Lvk3hybCg7yd9F1a
         OBfg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=dakCHQ74;
       spf=pass (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gnurou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i89gEBOG7Jmp/vq6Ym7Jd3PDHCeCSLBh7pVi/Ihvz/s=;
        b=GBnGgj1GT6VjGUytQDq90r977zx5v56wxaHRKPFDXjjzrm8wtR+z8gd9WK7shwVCHI
         kIeIwDw7OgsRlk3X6RXGJzuJA4MMVeCBhMIQRMW+VSWf+PrVT8QKrgOli82tZnmGWdii
         rQL9J87eBrkctT1jqCdUXhSVi6ScZDaA87ZcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i89gEBOG7Jmp/vq6Ym7Jd3PDHCeCSLBh7pVi/Ihvz/s=;
        b=GFCZCnGrMaIsRNkh8yby1DBj1ZN0qbu8G5hnz75YNkHsAaY1VwZX4fXFS3d5hig6CC
         dZxIw48GdudwTMc11M0k+ZNt07jCaRXpX9MuoIoVOBc6VgPpHIaPOIpfMJt/ULeFD8Vk
         WxT64sqABFfeGnK/6tEniei4ZTct1vVsTc3AF74O3tkj92EvfjAPY/sg8PRspPqN4SiD
         ShhXsbkUAhAhPyAifwUcUL6s3tYPmiIRfHWg6b/8OmG7RJzvn4/m2Uu0IbaY6ZHgYCOt
         AhrNe/Oc+G93LPy8WdcvKsm91dNQJkYJVC6xA9esJa3o5B9u7kVLvHsuQtVf7ZTw4Mct
         K1Mg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531EtCb1n7ExI2Yyiyb4XC6Gck7l0Zr7HiQj4CI8DjXNNuppMqM6
	jaX1EqjZnmRLaspimOn7hXmrTQ==
X-Google-Smtp-Source: ABdhPJyHyp9bccmpEqExGpW0bmPRL7DFSnfayDNRxxdGVkTC7FirKLCqSzbnITSkRqYZuqTzsbel7Q==
X-Received: by 2002:a05:6512:3b11:: with SMTP id f17mr9576393lfv.374.1639568501218;
        Wed, 15 Dec 2021 03:41:41 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:3d9e:: with SMTP id k30ls144846lfv.1.gmail; Wed, 15
 Dec 2021 03:41:40 -0800 (PST)
X-Received: by 2002:a05:6512:ac4:: with SMTP id n4mr9027596lfu.352.1639568500040;
        Wed, 15 Dec 2021 03:41:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639568500; cv=none;
        d=google.com; s=arc-20160816;
        b=IKqhF60uYuUXYxhIPMtnSGxYBhqnfAlBH3lV951wRCs9Pm7zeaKIFMuua6JYZoUiNM
         HyOKdzuZ7SZHrJumMX2kqSsAviudYndMYvIC0qcTlE0/LDj8uCIpwATKU1161bRuoXVa
         vS5/dqwmqOJ9bFZoLPGo0yQCXwXy5ly7a/OvsbjyZlJTGizR8BiZKcenQQKoH+UtykiK
         u/mqxtu6Ix7qko9+ftYSEbzNJAZjQwLyAXXCrFDoA0Yek+kauMv2RnX1AWwPe5lLInNI
         C3MLCLjBzXYif1dvGkyxKDq5dRhu/o08pmcaoibqS3ENMI1i6EcCMiheViLPMa+vo93X
         lGCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bVoe7yAKZFMYlKyfdTJ++5MCDFft8o/YXQn2x8pFVvM=;
        b=uLqeFYaCIMozUd14oFN1+86uJbFoNuTpTeduJ2Mi/QTTYA4TgVGrTf/Ql1oO9xqovf
         VVHrKkV52MFooT7/Nvfk2qXNVx1OXyHcM/QHw026P/2VkcF32GJnnn3Tys5lC4o17XT2
         Z7ZwOIpyMDSLzLGuQQsl0s26oM2H9WfKuvoX7PuuMBIU39ozt4/OkEtLOYNWOMuXIcF2
         2QkxhtTgFb707QHjGVkZtzloh+O28Q9jGOhoJzrS05EU4bdL7XRJFy76fcL0/F6ICQG5
         JT+d37NZcCYagm1ufxeATmZQxFbB7f23eGgx6GJAYEr+et3Qs2Nb7kiyc4CWk3cY5f8Q
         lwVA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=dakCHQ74;
       spf=pass (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gnurou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id cf27sor463810lfb.122.2021.12.15.03.41.40
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 15 Dec 2021 03:41:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gnurou@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6512:1109:: with SMTP id l9mr9219864lfg.181.1639568499742;
 Wed, 15 Dec 2021 03:41:39 -0800 (PST)
MIME-Version: 1.0
References: <20211212115506.180629-1-gnurou@gmail.com> <9b20ae5d-be8f-59dd-3136-2a9f7ce216e9@suse.com>
In-Reply-To: <9b20ae5d-be8f-59dd-3136-2a9f7ce216e9@suse.com>
From: Alexandre Courbot <gnurou@gmail.com>
Date: Wed, 15 Dec 2021 20:41:25 +0900
Message-ID: <CAAVeFu+sLzNUztnW4Vyr6ukCyjxTwCT-L4Y2xEWsRx=CPuarPw@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: do not use UAS with Logitec LGB-4BNHUC
To: Oliver Neukum <oneukum@suse.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gnurou@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=dakCHQ74;       spf=pass
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

Hi Oliver,

On Tue, Dec 14, 2021 at 4:34 AM Oliver Neukum <oneukum@suse.com> wrote:
>
>
> On 12.12.21 12:55, Alexandre Courbot wrote:
> > This 4-drives USB 3.1 bay gets unhappy when used with UAS:
> >
> >       sd 10:0:0:0: [sdb] tag#18 uas_eh_abort_handler 0 uas-tag 5 inflight: CMD IN
> >       sd 10:0:0:0: [sdb] tag#18 CDB: Read(16) 88 00 00 00 00 00 00 9d 42 30 00 00 04 00 00 00
> >
> > It works perfectly fine as a regular mass-storage device, so prevent UAS
> > from being used with it.
> >
> Hi,
>
> this is a big drastic a fix. s it always that command?
> Have you tried less drastic quirks?

Unfortunately I am not familiar with the storage subsystem so I'm not
sure which quirks would be good candidates to try, would you have
suggestions? As for the command, reproduction is rather random and I
did not keep traces of all instances.

I just noticed that users with similar issues reported that disabling
UAS fixed the problem and sure enough it did in my case as well. The
bay is used with a NAS so I'd rather not mess too much with it, but I
am willing to experiment a bit (after double-checking my backups) if
you have good leads to suggest.

Cheers,
Alex.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAAVeFu%2BsLzNUztnW4Vyr6ukCyjxTwCT-L4Y2xEWsRx%3DCPuarPw%40mail.gmail.com.
