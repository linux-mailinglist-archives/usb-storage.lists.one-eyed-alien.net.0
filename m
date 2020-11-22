Return-Path: <usb-storage+bncBCILJWNIZYHBBO6Y5P6QKGQED37AKAA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 096192BFC92
	for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 23:54:53 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id a10sf8059006iln.0
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 14:54:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606085692; cv=pass;
        d=google.com; s=arc-20160816;
        b=MfKMwmaa+r/6HB/7zT2PkdJCdXefvH8SxbZv8Kp0Ue3DlafvZkvBBPp8wTFmhbFiuR
         pg0LMaWxTQ7ue7xonwn9q90oOe0JkGBrrbjtbDRsk+3fODna0PMDSLfnXgMo4S8qpQiv
         DKn/xJoR4CKin2R8oEQif81PWcjMiA/YF59vHEmDuQrOBgrC2V/+IZO3dVOMEsHcvQ3F
         m5xjIDOUL6c+i6kh0SQqtNpiNyK6M/Oj9ny3HaVr+wTURbe/EtT5Clrr/v2e8+6Cgxjh
         bGl201CeIc4bNfsv7/pypHcQoYg24TsgUfuTyqNlHZyE3RCkgpUVYA9PSlx1b44F3r+p
         vZqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=AHsgj3doUn0CExkPKZIC3BGXIIlojXlKqHtKMEgK7hM=;
        b=j28tl1IV7We+UVn4dhkgOpgJ1GL8Rw7SgmWeVe1qvVCKzDuMAy2PXZKu9ORAVF4cqc
         6+K8DvYIYt9IHFkKozduZ+k4aPpq75kBkpRr56SlI2NBc63UpRLNOVaSkNSEx9OTH8Ss
         8PT81gVyFd6UXTVIjo64JyIJNcu5FyBlmUkmRjpYbp1BxT5wS29yiV/y4HWneMbSZanz
         FZ3zI/h0DjdTMDyDySTPGKCNIggM24hfwlI1ppe3tM1HrJ1EVW6WwZVMjK03t5lVBjBv
         bbRqNZ/RPG9rF77KlDUa/egqpofInojO0livQgjX4SZNLSDFZG8tcIQkyOjc0PhvE1D8
         Ewhg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AHsgj3doUn0CExkPKZIC3BGXIIlojXlKqHtKMEgK7hM=;
        b=lEme7hgRIOlccp63EAyAmIc92cumP7I049bvn9hc1+U3LURSa5qh8HPEoWOKpSArED
         4TA3PG5LbhIVQkyAM/N/3NU4VvrkM17K8RK0e7lfn1QZhDr2wHgvIgPYyvgR37131KXr
         A7yXqCfBqDDjAN6e2uSBmCCPuDMZuZOGWFr2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AHsgj3doUn0CExkPKZIC3BGXIIlojXlKqHtKMEgK7hM=;
        b=RiV32TloPgydtT/VaZcsvScUrl7DOAeLt6w5zvU+y9TC2lJFVuGm17Iv1GYLc6H1Dj
         UxeleNW1Bp1P4kytkw1BTaT3UcoKU15lpK9EFUD0/BS+4Oi/iD+fddoSEbTPKVuw4FJp
         793KxLn3nJZwPS4Rkh4ahwkW7L9LQCkyB6VYyMaHQMn40rcx5go0qCsmdB+l9fqck6BJ
         j6U+wWTldBayVLVJ8lMq48fFdVucdm282OWpmLJnroljnGwBMYifCLhiiO49esv9xLR/
         lDUil8Q43q7+qUxDVpViA13IGTHLkqvkutb652+stk6pBLbKVx6TUIa74fLk3sOQC8Z1
         GsNQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM53238h0X/3DJ9abJtmlksDcgpcVQh3l55YKZoCxwRHL8sEKh5aOV
	LSfKpZniBiymQGAKBXAXY0ZRCg==
X-Google-Smtp-Source: ABdhPJwLxUVG3E7GycArLJKJnL0AzYUiRPBqrX3nwN/j8nSGiABagbClHDNbC1VXKPENlzyEmUiTcA==
X-Received: by 2002:a92:6e12:: with SMTP id j18mr32597232ilc.44.1606085691741;
        Sun, 22 Nov 2020 14:54:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a02:77c3:: with SMTP id g186ls490393jac.7.gmail; Sun, 22 Nov
 2020 14:54:51 -0800 (PST)
X-Received: by 2002:a02:90c6:: with SMTP id c6mr27144104jag.3.1606085691340;
        Sun, 22 Nov 2020 14:54:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606085691; cv=none;
        d=google.com; s=arc-20160816;
        b=EiBHj5lvH47vbpp99UNoJpCQ0EyfgUtKsNp7hUlxRvn5BBkDpBNak17qyoStLU+boU
         JkArIwoWibE2HEs3O+sSkR/b4gbf0uFEYvP1DjsD7cOTNfv8CsNlvfeCVdL66isY860M
         fiIgvvBVMTVJ/V8XMmR1uyNP29svsCJa2uKjxigWnSwiLE3hdNF7MhK23aw2a8xFln6I
         GW/2M8VbGcIIOyVsWCwAr5CKRZl/U2KG2raDb9i/YcPUo7ojDj6B6KDKmbixyf6SFTUs
         tCgImMaKTzCRO7uLMRBfsjP08BhYDKRYJg7asXf6oRL4cXcntcQDi/fy/b0q/w5Z2tsM
         LYLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=ZLrTLalRfobUdn12ywM7UeLRs6N1qxnNClcLuZ7h6qg=;
        b=ObGTuxIDxOnnjsmtsXltnAZhRcLnUSUtkMKolvgud7qIJEPZYcmWRlppPr626yWAkJ
         9bFKmAL6ct8qfXpo10zEt/4cFEZJQU5ycdKTWhtfllD+1J0UjVAym3zEtu9gDsnBCiPA
         QdZGgtgiU9/ezBwf2qai+e4usLngK7IDB9GJ4rxaKMBP+I0U/FwSM5rbz3ILYWsu1FeU
         maBC2Cclmv7pXzK4A9SbrQb6jsi9uu4/xiqjJn8ZvXK39Ss+Y8mYoCOUDDCSdPBGZbpW
         RgTeOVcNooCU23nnC0fR9v2Hd0dDvIXcEXQboZad4ZlRZJzzdscLrAfqor+n33b3Qr2N
         WpwQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id z13si7257267jal.40.2020.11.22.14.54.51
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 22 Nov 2020 14:54:51 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id BF98E29DB3;
	Sun, 22 Nov 2020 17:54:47 -0500 (EST)
Date: Mon, 23 Nov 2020 09:54:48 +1100 (AEDT)
From: Finn Thain <fthain@telegraphics.com.au>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
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
    Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
In-Reply-To: <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
Message-ID: <alpine.LNX.2.23.453.2011230938390.7@nippy.intranet>
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com> <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com> <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com> <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
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


On Sun, 22 Nov 2020, Miguel Ojeda wrote:

> 
> It isn't that much effort, isn't it? Plus we need to take into account 
> the future mistakes that it might prevent, too.

We should also take into account optimisim about future improvements in 
tooling.

> So even if there were zero problems found so far, it is still a positive 
> change.
> 

It is if you want to spin it that way.

> I would agree if these changes were high risk, though; but they are 
> almost trivial.
> 

This is trivial:

 case 1:
	this();
+	fallthrough;
 case 2:
 	that();

But what we inevitably get is changes like this:

 case 3:
        this();
+       break;
 case 4:
        hmmm();

Why? Mainly to silence the compiler. Also because the patch author argued 
successfully that they had found a theoretical bug, often in mature code.

But is anyone keeping score of the regressions? If unreported bugs count, 
what about unreported regressions?

> Cheers,
> Miguel
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.LNX.2.23.453.2011230938390.7%40nippy.intranet.
