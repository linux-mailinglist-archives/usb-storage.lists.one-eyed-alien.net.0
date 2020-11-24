Return-Path: <usb-storage+bncBDRZHGH43YJRBNNI636QKGQECCKG7MA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id E76C72C3465
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 00:16:06 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id i39sf390540qtb.1
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 15:16:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606259766; cv=pass;
        d=google.com; s=arc-20160816;
        b=O9mWD68iEYx73vwG7qlBu5dVAc3FmqIMEbkxRm+ikPwkPizrp5skgblc7ozBSEVv8F
         aP7LVgTswQ5qKKInU9rs4VtALkkwyYgSNC29wATOpQtPh7Ol2Hlfy7MplFgf5nKdlCcQ
         EOUnxBXpBWdaefhIrR4TdxrJVIgksZeuqmW9zfaqgLphhfTzjWtIwtKVnR3PnCzKF+g/
         Zqe4UPdDG8iREqeCXOepHdyy1YlQaGm7E2AuQpxlZlFlLv2925RGBkdCgUIstF8GsYHi
         DMr7WJmBbWc4tLGcR2cw0HKAPbiAPrQq+mVX3jHIKLIKQHexKknk7X69R98k2xvRPBnR
         Tqww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WGip7usoC7fPLFHc0m11Z4ADihA7KodJh9twTsLWNYQ=;
        b=bNh9CJ7QfRL7JX3GTmR2sYGfURZevPjdgmU2DoOVVXYhIio8Dv6dwrCV+K6JhLGqeI
         7PLJML638yVD87VhAMFXhz1se27wtv+Q9TDWKq50SQJnnESnIBi5fEPT3x8woxvMCz8n
         WR2eEIrZcvAokG/BrfWORfIWIen5bQIfAzBx+nOyHgOUJNFx36gvHnYzVCEQE8vCjkRN
         TmR1qjdcVv3TwzzWYnjl4hB7ctFRtMbFm0nqKYxRiGa7Lc5H+kshfFyAiR6RcKZ3KdqX
         7FPVofAT2G32VflruueyeziPcyzNR0Fd7M7cxCApqm8SAJN315cnqjYLSRlhOg54Q8SJ
         3afQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l+vUmSI7;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WGip7usoC7fPLFHc0m11Z4ADihA7KodJh9twTsLWNYQ=;
        b=X5J6VIywxs9BR5ksyf6cMPDFgdCyPZARpugH6NR9yeUTwrI3pBos+rJyvY4kOgJUYw
         Ejo1/6JBIztgG0yE1B7RQtsNavS4PjpqrEsf5jv0XojgLR1tH/huvBsIJDXGIWvWE12n
         Qq/3FCCmuT8/UpYz2RVi2m11mC1nxW4LiMWm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WGip7usoC7fPLFHc0m11Z4ADihA7KodJh9twTsLWNYQ=;
        b=VPSuxTfP/ibE0B015BbWQM0HasdzEqvoBL+HLTFAb8B6Tuw/MJU7avJS8ZV6IFA/Ra
         97YEpRVRHltk9Hj8YWDtebYLlfiMG78Miy/sQk1nkGiSsPIfQ5MOmRhXsUl5S/uh7n5n
         yeDoc/9+ta+x4znIE3NFbeYZs9PS+pgOBHVi1/qNAgEjKfA7LriI1rwNRGH2OME5ronX
         rXUxY4pVjkv1a2OXj0dGdZBTgNe/gkuACn7wKrWlPUJgt1/tBfHqYtJ8FAD+nFRUsWov
         2iGlLQ3lR46D60R8IJChw/UelpD0/YzJw+PSS5ghgsBEC1yvn6UM9MqYz6A0zghmTCcq
         UdSg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532CEGn+HWyc5n6UG1XLYRRowZSm6kmRwUt6ywEOdtgvF4W3BkJQ
	/rpK+gw/nANHqdrGv86pEK9grg==
X-Google-Smtp-Source: ABdhPJwkd0z6heorLuJ2wGhjptF+0gDBA9o4U/NP/Mi4yhUWApInjWN1QjAUAwq35y5KfxrEVPUQGA==
X-Received: by 2002:a25:2cd4:: with SMTP id s203mr560840ybs.336.1606259765927;
        Tue, 24 Nov 2020 15:16:05 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:5f42:: with SMTP id h2ls256468ybm.11.gmail; Tue, 24 Nov
 2020 15:16:05 -0800 (PST)
X-Received: by 2002:a25:2495:: with SMTP id k143mr571321ybk.396.1606259765357;
        Tue, 24 Nov 2020 15:16:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606259765; cv=none;
        d=google.com; s=arc-20160816;
        b=efuRTOItMKXi602eamH/ssGZdWsmKbcfvhxDr18t2x+3i9hZWXBWUcFzdK1tbia5p+
         Vz+0KiNAZckNMLFIBxIdqBvZUJK9apOu8Kx8VBly3B/PeuAiVASZ8Qew3bnY6UoO1Ed+
         yjmQWEoogUKzBOiR2gti4yLFSvqdk3eT4MHjk6bLUZwfrbwhOLaV3bUMOl043mazrM8q
         H+DCo2vrL93KxnD3jU79B/u3UwU5ltpFyE64t8q6CfstO5yqSaIXInMlGpaYAb2k3q/l
         Bci8MAQS/RxCkfO4lW2epb2urKbP9mxbliywO4FzpuXwrUpQmYAPkXAYKKJ1kVa4+FGP
         be5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Jbdr1BEjJUZERXYDOU4Gv/mlbgAbUhdHLiICpsfXV1E=;
        b=YcCwbexOThqe4ic3NfDBoNl6tFKdgtGqFksUaDuU11sCprOdid20Bsr9O5N11stCsP
         ZbpR5Rlu5l8hKTk6Ot4ex4P+noHOaKr343pn5BmYnREEho+LjHHp7BIJLsgMvmFomN8p
         yAI4yjM10+H7kyZeTzfv8bO7nJJoAIlHzAntl+4nEJ6eKmFFUwxuWnF9K/JgzDcofayV
         9bl7oB7JQiNQsYn+xj7xfaiOaTCxHJ3UutlfLChOprJm3sit6pzT2Ts4VM3AG+xBuS3C
         A0mHtdNrs8fY26W9c6Vlx5k0XsHwfJ8HRZwjwghfkFdjO/D+V9FL1ZZMZpVqmw2N3JqR
         W+eg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l+vUmSI7;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id u32sor90920ybi.77.2020.11.24.15.16.05
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 24 Nov 2020 15:16:05 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a25:61c5:: with SMTP id v188mr748702ybb.422.1606259765056;
 Tue, 24 Nov 2020 15:16:05 -0800 (PST)
MIME-Version: 1.0
References: <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
 <20201123130348.GA3119@embeddedor> <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
 <202011241327.BB28F12F6@keescook> <alpine.LNX.2.23.453.2011250859290.15@nippy.intranet>
In-Reply-To: <alpine.LNX.2.23.453.2011250859290.15@nippy.intranet>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 25 Nov 2020 00:15:54 +0100
Message-ID: <CANiq72nUt57u5DG9rH=DB0DzQH7U6-QbG-2Ou+PyCY=p=_Ggag@mail.gmail.com>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
To: Finn Thain <fthain@telegraphics.com.au>
Cc: Kees Cook <keescook@chromium.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Joe Perches <joe@perches.com>, 
	Jakub Kicinski <kuba@kernel.org>, alsa-devel@alsa-project.org, 
	linux-atm-general@lists.sourceforge.net, reiserfs-devel@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-ide@vger.kernel.org, dm-devel@redhat.com, keyrings@vger.kernel.org, 
	linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com, 
	wcn36xx@lists.infradead.org, samba-technical@lists.samba.org, 
	linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net, 
	linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net, 
	drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org, 
	linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-scsi@vger.kernel.org, 
	linux-rdma@vger.kernel.org, oss-drivers@netronome.com, 
	bridge@lists.linux-foundation.org, linux-security-module@vger.kernel.org, 
	amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com, 
	cluster-devel@redhat.com, linux-acpi@vger.kernel.org, coreteam@netfilter.org, 
	intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linux-watchdog@vger.kernel.org, 
	selinux@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, linux-geode@lists.infradead.org, 
	linux-can@vger.kernel.org, linux-block@vger.kernel.org, 
	linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org, 
	linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org, 
	nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org, 
	ceph-devel@vger.kernel.org, virtualization@lists.linux-foundation.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, 
	Linux-MM <linux-mm@kvack.org>, Network Development <netdev@vger.kernel.org>, 
	linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org, 
	linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com, 
	linux-integrity@vger.kernel.org, target-devel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l+vUmSI7;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Nov 24, 2020 at 11:24 PM Finn Thain <fthain@telegraphics.com.au> wrote:
>
> These statements are not "missing" unless you presume that code written
> before the latest de facto language spec was written should somehow be
> held to that spec.

There is no "language spec" the kernel adheres to. Even if it did,
kernel code is not frozen. If an improvement is found, it should be
applied.

> If the 'fallthrough' statement is not part of the latest draft spec then
> we should ask why not before we embrace it. Being that the kernel still
> prefers -std=gnu89 you might want to consider what has prevented
> -std=gnu99 or -std=gnu2x etc.

The C standard has nothing to do with this. We use compiler extensions
of several kinds, for many years. Even discounting those extensions,
the kernel is not even conforming to C due to e.g. strict aliasing. I
am not sure what you are trying to argue here.

But, since you insist: yes, the `fallthrough` attribute is in the
current C2x draft.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72nUt57u5DG9rH%3DDB0DzQH7U6-QbG-2Ou%2BPyCY%3Dp%3D_Ggag%40mail.gmail.com.
