Return-Path: <usb-storage+bncBCILJWNIZYHBBB7J6H6QKGQE557EVIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB4D2C1B98
	for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 03:48:40 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id w10sf15603972ila.22
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 18:48:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606186119; cv=pass;
        d=google.com; s=arc-20160816;
        b=SLs7b8wLW+/72ngX/4MQnDy+zohFIhppct+lPkfcNo6cuxkjURD+4qP10bSZpW4/Uv
         0g03QEKiecMXYGMoTa62FQ/76JHwpyaDsoiTeQiwqJIKctV0cNFopvawGiOxptUvsAC4
         eEZCG9oa5iWEwHuUMzjpGtQoFvzcgYfQ7e2K+z9nCH+9OYxgLi2fhuYG1WshzRrnuoHw
         w2PLNTFO/TTtRUaiMg4X5lmZ6ibXLGXaWkj8aQ0S9j6WU1dm2Ut7l7yfAN4Xy2V6k5ty
         dLPR4LVycesmD3Agj92KGNHbjwQDOERo6gsMKGusXTZvxSPjv7GomZeP5FhITke3Ht8q
         D22A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=Nkti8pZ9V7qg8Q13gdxObmf3ibZB9Lh+8DEUJ6R37z4=;
        b=PVVvDqfurM/gYgqGrcL2Jug2AVCheEwaKcikGAGNRoINuuEB86OkMDNtJs3EVQg1xo
         V/imWvhp93dQdYsnLUIHw7SnGW3Pe1pmnfXP2vA2bJ9TcER0iT6NUCnI9QgApNQGEwZs
         QwIlLa1xyzys6PVBV9r4KSLyToqOcWF75DKJ0Mvg+zblNqrf6UN+OtxFeJW/zDAP0K5A
         iIRR5CfCdnEdjoNXh377HOI5Y/ESkSmXZgui+hsFi6HcUEgA0uFAzK/7Zu/TrCNlxwIK
         1WZiNvY+MjU73fF7tZzkWc6uD0QV5dduUF63bJJK4tXR2SmxpkgbtlcHYeR1GHOzaUTj
         TGpQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nkti8pZ9V7qg8Q13gdxObmf3ibZB9Lh+8DEUJ6R37z4=;
        b=POp8hkMhNP5pY8PEiE13Xyk4i90kQu9DgkbhGBjpAoKBVl8TuNHsT1VjbSP4ZxG6Aq
         UW2NStjybay4DiQB9iL/d4w/lw6gDrLveEr22IcAkV/SgdIU8VXp12+lI8jJdTUck4ZD
         +FqpJKPSavgJaSCzMy5o80kLqNZDXfzCJJhNo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nkti8pZ9V7qg8Q13gdxObmf3ibZB9Lh+8DEUJ6R37z4=;
        b=KTSEQBDE+pqc2oSLqZ5LKaTU+tYLTw/74BJC2M3E+/dDm2VMXW8qn9bz1iegiFoX+E
         95rfIoRcLSeXX69VqgaGzBtoC3aafarojlFMKPfPj3xqydycoVfz6Hr3PXPdNLzZYdpO
         62eRp66/F956AsWtPKyvDe9FztGL1s5M2JtYAEQiFvre/VGE3x/IK6qUXz50Jg1p6k/5
         MkOXnwh/y6XO1P/bJRfn2N+EhcnVQOMsPK3wqQe79eepjr+B5qhYQ1KAhEAjmYPtLP1t
         zuOvhMUyueSTEpvSb9Q2r4Z2R5VCPDH5i89gwXNEaBglV9nruV9yyx7Zj5T3Sw0BmysD
         IsJQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533VW/0f9sLSjOYVfrPHv/k2edyj/ntcE9hDR1h4anYYb0KM7ghW
	mP4rODD6FyzWZ+AMJLfjPNd3LA==
X-Google-Smtp-Source: ABdhPJym9NpNVOXCBIOx5nfJJ30FhcwZdraRsrFQPoPd0Gs8Ekd3+qdXZYcFxQecnMSMf1PGQi8MkQ==
X-Received: by 2002:a92:c690:: with SMTP id o16mr2518024ilg.172.1606186119119;
        Mon, 23 Nov 2020 18:48:39 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:dd0b:: with SMTP id n11ls4128560ilm.6.gmail; Mon, 23 Nov
 2020 18:48:38 -0800 (PST)
X-Received: by 2002:a92:9a90:: with SMTP id c16mr2573862ill.171.1606186118743;
        Mon, 23 Nov 2020 18:48:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606186118; cv=none;
        d=google.com; s=arc-20160816;
        b=NtwPsTiuigKekv8RhZuQbjrKc7Y9rWDLMG9zmarIP51jtb2nORuXEL2HXC0ZF9Wc9r
         //kHPFxQG+ts9PP8itNexmu9M4tkW2dbmTWL+B8iizhuYOY8eGFKRWot5MyzYdPKoF4H
         mymJNl0gcW+x+urBh05kn4LZaFW/zjrZVG/E1+24+vuPGB7IKoeUbq9qmBiynT/80evX
         h4yKkBTZgZL6Lb033wqmkAiw3IG0ckz7uNh1yhATU2pcpl0TodP6bfp4/4Uuww6ucMFe
         qpDomanBjir2Jn4/xHO14N5upFphu1CYMQLhU73uMLaM8oh2ahvYmSPKEXH/qyRNfxvp
         XzSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=xBnf2SYR/z3uPWh9zCOXOdSQzNlODQJIVjytViCSxB0=;
        b=Mo/j+5iV6qJKHyTz19XIuAE2dr9HMzAKqAHZ5+6EAWEfpTK57f4T4MdjoGJ67NT9FB
         p/UQnxobN6k9oVhMud15QueBUsKbgPt6FNgfy3WpluqgYa2LKbjBNVyBiQg4wYVRoM6a
         aAXnbmHAHugxnvFwMSO/a5d70vv92G2zYTVcVneLc0KGt/wE8yHCgUQf1KkY0rUAGOkI
         Mz4JosWQm8KPSyugJ09NGVdojN11ioMR+XSYfZIvwLKJKWppDQ7wPcE7FIJGySm0CbXL
         bH2NaEmBFaC+WJuVQu0cJd9y3ap+ZG4oG5EGdHVmNeZTxgY7JtqV6Ufk02cdjRrbT+2Q
         i3qA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id y23si10629760iod.96.2020.11.23.18.48.38
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 23 Nov 2020 18:48:38 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id EF15F2AA0D;
	Mon, 23 Nov 2020 21:48:35 -0500 (EST)
Date: Tue, 24 Nov 2020 13:48:34 +1100 (AEDT)
From: Finn Thain <fthain@telegraphics.com.au>
To: Joe Perches <joe@perches.com>
cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
    James Bottomley <James.Bottomley@hansenpartnership.com>, 
    Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
    "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    linux-kernel <linux-kernel@vger.kernel.org>, alsa-devel@alsa-project.org, 
    amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org, 
    ceph-devel@vger.kernel.org, cluster-devel@redhat.com, 
    coreteam@netfilter.org, devel@driverdev.osuosl.org, dm-devel@redhat.com, 
    drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org, 
    GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
    intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org, 
    keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net, 
    linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>, 
    linux-arm-msm@vger.kernel.org, linux-atm-general@lists.sourceforge.net, 
    linux-block@vger.kernel.org, linux-can@vger.kernel.org, 
    linux-cifs@vger.kernel.org, 
    Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
    linux-decnet-user@lists.sourceforge.net, 
    Ext4 Developers List <linux-ext4@vger.kernel.org>, 
    linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org, 
    linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org, 
    linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org, 
    linux-ide@vger.kernel.org, linux-iio@vger.kernel.org, 
    linux-input <linux-input@vger.kernel.org>, linux-integrity@vger.kernel.org, 
    linux-mediatek@lists.infradead.org, 
    Linux Media Mailing List <linux-media@vger.kernel.org>, 
    linux-mmc@vger.kernel.org, Linux-MM <linux-mm@kvack.org>, 
    linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org, 
    linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
    linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
    linux-security-module@vger.kernel.org, 
    linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
    linux-watchdog@vger.kernel.org, 
    linux-wireless <linux-wireless@vger.kernel.org>, 
    Network Development <netdev@vger.kernel.org>, 
    netfilter-devel@vger.kernel.org, nouveau@lists.freedesktop.org, 
    op-tee@lists.trustedfirmware.org, oss-drivers@netronome.com, 
    patches@opensource.cirrus.com, rds-devel@oss.oracle.com, 
    reiserfs-devel@vger.kernel.org, samba-technical@lists.samba.org, 
    selinux@vger.kernel.org, target-devel@vger.kernel.org, 
    tipc-discussion@lists.sourceforge.net, 
    usb-storage@lists.one-eyed-alien.net, 
    virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
    "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, 
    xen-devel@lists.xenproject.org, linux-hardening@vger.kernel.org, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Miguel Ojeda <ojeda@kernel.org>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
In-Reply-To: <e72a1aaef8673553a3ee9dfa033d6e893e00abcd.camel@perches.com>
Message-ID: <alpine.LNX.2.23.453.2011241210310.7@nippy.intranet>
References: <cover.1605896059.git.gustavoars@kernel.org>  <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>  <202011201129.B13FDB3C@keescook>  <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>  <202011220816.8B6591A@keescook>
  <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>  <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>  <alpine.LNX.2.23.453.2011230938390.7@nippy.intranet>  <CANiq72=z+tmuey9wj3Kk7wX5s0hTHpsQdLhAqcOVNrHon6xn5Q@mail.gmail.com>
  <alpine.LNX.2.23.453.2011241036520.7@nippy.intranet> <e72a1aaef8673553a3ee9dfa033d6e893e00abcd.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: fthain@telegraphics.com.au
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of fthain@telegraphics.com.au designates
 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
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


On Mon, 23 Nov 2020, Joe Perches wrote:

> On Tue, 2020-11-24 at 11:58 +1100, Finn Thain wrote:
> > it's not for me to prove that such patches don't affect code 
> > generation. That's for the patch author and (unfortunately) for 
> > reviewers.
> 
> Ideally, that proof would be provided by the compilation system itself 
> and not patch authors nor reviewers nor maintainers.
> 
> Unfortunately gcc does not guarantee repeatability or deterministic 
> output. To my knowledge, neither does clang.
> 

Yes, I've said the same thing myself. But having attempted it, I now think 
this is a hard problem. YMMV.

https://lore.kernel.org/linux-scsi/alpine.LNX.2.22.394.2004281017310.12@nippy.intranet/
https://lore.kernel.org/linux-scsi/alpine.LNX.2.22.394.2005211358460.8@nippy.intranet/

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.LNX.2.23.453.2011241210310.7%40nippy.intranet.
