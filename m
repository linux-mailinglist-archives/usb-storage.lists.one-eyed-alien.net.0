Return-Path: <usb-storage+bncBCILJWNIZYHBBDMQ636QKGQELDCRNDA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA892C33D5
	for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 23:24:16 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id g125sf327299ilh.6
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 14:24:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606256655; cv=pass;
        d=google.com; s=arc-20160816;
        b=NBRNE80k8RaPKpAi+hM0KLPixv4tAiIWR6JoNzkbOcO43J+9yCfc4cLl6xtnPgWBh/
         4eKjhbJIQfXy4gDU8J5KG/8hFRZpCWZhnyz6pOdW6hZH4xZtFMT3iC3NvD/SC5ZDDNW6
         24QjB7OLmnJLIg6qWxmjl8WkV+FbjXisNEXBjNOVf0XOWcbij242OLXvtMdDm7ElzOXh
         lP02JOmzamUS8h+acRsWUdb2SuR7zD3IK/BSsMq4T/GRLQCmc00BcrY+OIMgju1nOKfq
         d0u8qum/aTcB3o892zyMq0rluqH7RTVxxDln+kYMLX8qOyzrB5+VVCoRxO8oWTaN0w21
         cwjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=jy3Kjg9tLpKHzj1nzd2z6yKWqo0x6zZSquqy4e8vf/o=;
        b=haELgOzjYSYGMf5X9E/39skLJ/wqOYfvckym6UhRWcYcz948spSOen3h7Piw51a97t
         mQhu6fdD4H1J2hjlrXB9qRPxR4uXbM5rbge8+ZhACBG/zG37LFKhnVCO1XYxRZyyVNU7
         w8y9hvHqhcvRBP99hZh76uW/FM+sHXnXunRzcb90zCs2kdVlKwUg9m+8wDqMRdIGZOdE
         n8/mRV3PS3FfhnGa62yLySnDuIU6sRuN7IalqaeieClRNcdNQZgs/MnEgnL7B/C3kfUw
         ZtIW0llbrmDM38Rt1vJ45QhNxk/BBcqSMEF/vEMnJeZP3N3lxhuYu/9WMzCmwsigrvWd
         UacA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jy3Kjg9tLpKHzj1nzd2z6yKWqo0x6zZSquqy4e8vf/o=;
        b=d89zxTrcmZPjv4ChCKWXeK7DIi+1wsE3OS/UqXD/F6LcnHPE5hync755bY3Wep1Fo2
         225rlPBRKtkt5n0PK409M0YRE/nlsGPhNfE2g5fpadrQ+QHe6l+DWxRv1DD7rIUUPrl/
         Koq3mUM6o0je+DQrP5yIH1xJCMP9EbXLrYODA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jy3Kjg9tLpKHzj1nzd2z6yKWqo0x6zZSquqy4e8vf/o=;
        b=CaJ0LB4iL+zerTKyg97JOfpZSp3eVJn7x5o7zMbx5u2IRUSEcuR3sG5Dh0VN2jmxpr
         HmzrqZW7qEoVEIxxCRYFFDpcWFzC75Ve7+eXjY7MaP1fJ9jqYabuZQYuvt5B3n8Ka2bj
         h4XMN3SJBeFZgCpsnO84TF3/U/axGykS2GHQjeFB/1WYSbyy1NSinL8CV8I0T1GDMT7Z
         mW43yW2qYvv0MTMTZMm7BqMQUbkBpYw22jiLEEh73n90frBIhJ41CFOhp04PTPbAI/rp
         eddOiIsw8e14Dn8qqt2iFpIpOdDzbGg7UW+OlJ4Q1GXCDRsEmTjC9mcs2afV0p/ly3uE
         3l9A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530+vz+hvX1dYnxeAlrYb4aMTgXttO2JC7NTpborE7gEpMZoMIpa
	QOdKnY8zZvYscmmEbswv8u3GKw==
X-Google-Smtp-Source: ABdhPJxyFFbM7rYwK6TTxR+nfcvK/TEKD45jeYzkABxFwzK0nCid18sgiwM2n9trX1BIk55y2y05Lw==
X-Received: by 2002:a6b:c582:: with SMTP id v124mr377966iof.13.1606256654057;
        Tue, 24 Nov 2020 14:24:14 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a02:b113:: with SMTP id r19ls47903jah.8.gmail; Tue, 24 Nov
 2020 14:24:13 -0800 (PST)
X-Received: by 2002:a02:820e:: with SMTP id o14mr658100jag.41.1606256653564;
        Tue, 24 Nov 2020 14:24:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606256653; cv=none;
        d=google.com; s=arc-20160816;
        b=kfi1cRJZ29LKwm6vJkP/+E/A7AJ9ge5XaJopDI6wdKXhhUus0CLDKaWvVCnAKyvXol
         pCwt9CZ/i2RDWn0F1eG1+K2kg1TEWJXphWOT6qs0qceh0NKW4H0LjOI7ETexVi3ynPUh
         1RjfxbfKC3Bhc2OuDCJX0d2ul3BjlcyzfUkEy0FG+mtACqMBg2TWWttzndh3OutdC4d2
         QgbmpYv2ww6fUKS9tn9zM8t6/i4lhUxmtsvgP3I3S6/ZRwSO1HNzSNqJMj6LoRONXwns
         xNrmhjEwQO5RtaFU9nY+6WT5GjWtNnxhudKA0es5Z4vja44pKt79UkHFMfly2pXBUbZX
         pdug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=rfErvvek2o4mgzvkcpzcQmFb1xIfI/gZvM9qIx9fcLQ=;
        b=uBDFoUvvdAacnjsRlU/S6IPqNvY3jYApIHFVdpqhgpeiU+hfLEXW8TECiZQRG6iWZC
         5UTf1Q8V3hyk39htBHnX72Zm2h2cuLP+nwUqgwBvQTPqzyKKmXXXKJvPb4joK5qB9hBj
         ox+uh7ttD3efchwnMjTFSMjt0feqmqZeE6eHGxdFvrwar541P67gV1JxKA1PkIUp4uRD
         ah0XjbvumI2RQRUh7bObmG694BQwUKn4RAdBo1RcSl/ij2msxsBfYKNBwb5wi9lR4x5/
         b5zKf1AS8ALgDPKVEi87enoa49ggfFPknESu7+Iu3aeXyOQJxziptZ+TF2m/BKns4D/8
         ulhQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id a5si387750ilv.75.2020.11.24.14.24.13
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 24 Nov 2020 14:24:13 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id 8A96E22AD6;
	Tue, 24 Nov 2020 17:24:09 -0500 (EST)
Date: Wed, 25 Nov 2020 09:24:08 +1100 (AEDT)
From: Finn Thain <fthain@telegraphics.com.au>
To: Kees Cook <keescook@chromium.org>
cc: James Bottomley <James.Bottomley@HansenPartnership.com>, 
    "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>, 
    alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net, 
    reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org, 
    linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org, 
    dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
    Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org, 
    dm-devel@redhat.com, keyrings@vger.kernel.org, 
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
    cluster-devel@redhat.com, linux-acpi@vger.kernel.org, 
    coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org, 
    linux-input@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>, 
    tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org, 
    linux-media@vger.kernel.org, linux-watchdog@vger.kernel.org, 
    selinux@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
    intel-gfx@lists.freedesktop.org, linux-geode@lists.infradead.org, 
    linux-can@vger.kernel.org, linux-block@vger.kernel.org, 
    linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org, 
    linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org, 
    nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org, 
    ceph-devel@vger.kernel.org, virtualization@lists.linux-foundation.org, 
    linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org, 
    x86@kernel.org, linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, 
    linux-mm@kvack.org, netdev@vger.kernel.org, 
    linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org, 
    linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org, 
    linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org, 
    linux-crypto@vger.kernel.org, patches@opensource.cirrus.com, 
    linux-integrity@vger.kernel.org, target-devel@vger.kernel.org, 
    linux-hardening@vger.kernel.org, 
    Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
In-Reply-To: <202011241327.BB28F12F6@keescook>
Message-ID: <alpine.LNX.2.23.453.2011250859290.15@nippy.intranet>
References: <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com> <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com> <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com> <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com> <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com> <20201123130348.GA3119@embeddedor>
 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com> <202011241327.BB28F12F6@keescook>
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

On Tue, 24 Nov 2020, Kees Cook wrote:

> On Mon, Nov 23, 2020 at 08:31:30AM -0800, James Bottomley wrote:
> > Really, no ... something which produces no improvement has no value at 
> > all ... we really shouldn't be wasting maintainer time with it because 
> > it has a cost to merge.  I'm not sure we understand where the balance 
> > lies in value vs cost to merge but I am confident in the zero value 
> > case.
> 
> What? We can't measure how many future bugs aren't introduced because 
> the kernel requires explicit case flow-control statements for all new 
> code.
> 

These statements are not "missing" unless you presume that code written 
before the latest de facto language spec was written should somehow be 
held to that spec.

If the 'fallthrough' statement is not part of the latest draft spec then 
we should ask why not before we embrace it. Being that the kernel still 
prefers -std=gnu89 you might want to consider what has prevented 
-std=gnu99 or -std=gnu2x etc.

> We already enable -Wimplicit-fallthrough globally, so that's not the 
> discussion. The issue is that Clang is (correctly) even more strict than 
> GCC for this, so these are the remaining ones to fix for full Clang 
> coverage too.
> 

Seems to me you should be patching the compiler.

When you have consensus among the language lawyers you'll have more 
credibility with those being subjected to enforcement.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.LNX.2.23.453.2011250859290.15%40nippy.intranet.
