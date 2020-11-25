Return-Path: <usb-storage+bncBCILJWNIZYHBBF6O7P6QKGQE2AIJUGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd47.google.com (mail-io1-xd47.google.com [IPv6:2607:f8b0:4864:20::d47])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B4B2C4B69
	for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 00:22:00 +0100 (CET)
Received: by mail-io1-xd47.google.com with SMTP id b4sf245532ioa.4
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 15:22:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606346519; cv=pass;
        d=google.com; s=arc-20160816;
        b=QszlwxfWUuzlcvyRk7z0kDatBlW8/9Mf1bMsMAqaA7qyYmoyrjqpDcCARb99Ra2t7N
         1M7KmhwPhW3ki89Lyt/4z7T9D+f4+GEAodvT1cfrcoyyRVORrlarLBX7TYr6Kdc7HN/D
         sZuyFpo1UJXED8JSIHQddlvEGKuHg8tHA0/m+UwTXqJbpXe+FJKL118WfPivuwQh2emy
         uBR+Kfoj9CJ9DO/gAkqxHKMWbeaGqq5ew1JtAVSQ81Aglj1XPtb/p/rYjSG3n8Vybjs6
         ohjMoXXVSSi5VDt69BPapQw4/B9EesJXVVkIcm23lXwBV1Au8J1ooZvmRMbbYRzyKlXs
         H94A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=TvcQ8UH7oIwvWDda27CnhH8lPWjjNwkOnnfiZyG+U/k=;
        b=v+FJQHUGuJmMseIcjcxkZfahwPV7uIbnK1nWQBgNlVaPBtyJr36CvU+J+TmEYb8Jnn
         vu87CBZjn94kOUAt2cIRgS9UD4leK4yeZ5wI6G7ohuFt8ugLJUbHfkpsY2TfBmukwihK
         iOltwFZUosrMK6caYVjOrellFXfhYfYXBVHKzg3nY+88It7FJIgy7ePuPUrkzB01EMi2
         5OWtv2EDPnlEbUYmyJMZumFkVXh+BPK4Wnev6c4FZn6Ufni9hpaP8XAW7zhtpPAFKZs+
         98FtvxAEh1PampF6b88Uf0STmlAyO6U+iVKLMgH9/ZOa9BDkxzClwND0skLL2Twup3ss
         ZovA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TvcQ8UH7oIwvWDda27CnhH8lPWjjNwkOnnfiZyG+U/k=;
        b=CEuzpqxTbEmdW2FZbpmi6nCwcMXUGO5nK//fm+17JE++hdNEI6fItQ0zHHSDloQaxv
         55SrXGopnNV3fteNl3En9W+OhPMR5xeOjFEOXoJaN7kMJp9apVpXoFueSeDHAGHamH+a
         tF7P8Nn6gUKr6jgxxm31ou+TMflwm/S7dvHiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TvcQ8UH7oIwvWDda27CnhH8lPWjjNwkOnnfiZyG+U/k=;
        b=Ld9XQuSPK+OVE/rk4ds+//kWJLjxFx09ArVg/benVuYtANaOhkNkQqXdtQShBINHIq
         Dyx1aV1nzf4PzpyNobTAVFwf66HUwV5lmTTET6cbaQQXWFjVS65JNXDO1ZW/xYkzEuTo
         UhMTggGfgV2ljvFozo7LBGs6S+FdPuf0fdVX2YNBjmdD64HPtuIyqJQ0kFeYM7syPP+K
         hqpJSWOzQoqGnk1GRmNFbkOjMuXP01nf+8XBqvephTQDwWk8Q51OAu/TSyta9uY6loau
         OZtHYN9m3J9D7FptT6Nh8Gx6JqcUaMMTZcMdSg/EniADS0X+mP6owKbAAdyodWufJyjd
         WwFw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531KHMYtu2M3lL5AsCf2BlJ8LwMM62Tlt1ctgfwZvDRjLBqSvtQV
	JykD81sBwcdXSMxT8KDh9K14Vw==
X-Google-Smtp-Source: ABdhPJzKTiN4OGQ4aQAlKQE90/57+PwzRsq2Xr+8z3CQTgDFvRpW6TSH+jZ6m8vRaJwT7D8LgqtBhg==
X-Received: by 2002:a05:6e02:1786:: with SMTP id y6mr128496ilu.121.1606346519231;
        Wed, 25 Nov 2020 15:21:59 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:bb4b:: with SMTP id w72ls55313ili.9.gmail; Wed, 25 Nov
 2020 15:21:58 -0800 (PST)
X-Received: by 2002:a92:1808:: with SMTP id 8mr124832ily.195.1606346518844;
        Wed, 25 Nov 2020 15:21:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606346518; cv=none;
        d=google.com; s=arc-20160816;
        b=Lu0uCUMY9Gc0OGH5dw9r377YRJuQudzT7aL7TMjSRNWeoraCsen3HR7tHXCx7igJc4
         D196ZXO6ZFSN7KreEJzwfAySIxcZWdEAwCX00d9gNL9TeB3Yd8o7/bLKaKd9DefkplYr
         8ftwMTtQbCJl6+GaWGgpYVNe1cryV6Ap6HmUAhN2Lc5zQOVBV9c6sdivi+HqotuCNpjr
         ssqXSlMkS2wGAJX1dXCl9dKIcnmGWTLMCvTsKsLGCIeQ73MsJRKoGl1I1m3l2Bh67/ta
         uTq2+OJZjMZvUmtTaetI3LgcNgh2RY+XL525NkfnF+ilbKMe1+ymy6ySgeYHNWsdsysw
         FTGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=mod24iPlOIRytkgTlGHL105Ak8dcfCT40D8baLqdx/s=;
        b=vF/fEEpL/s2ro+RyBUL29Ot1jW7JokcdpQarknFYDk2Dq35KWzeFgJvzhTxSTt2TcI
         okjj4oD759yCvKSgXy3lo8dATRXxdTZSEzvUuAjDi0HwDiUUd9XVbwJelKJuN4Zqt/HW
         3UrXIJ6CvQBad2NkpdnFIPwUo4gCSXKnNNL2FkuXQE/i47mevXMJbvYm3KdYZIFww4L9
         MUm0/47I7qFtQW3QRR/vEaLORgpRl4GVPfA01aO92EnETsKVQc3A3Tk6greZcvGT4yNL
         8wSfp3plb/t9G5VNca+Jo9IQ/5G0ASQW3+Wkw1BLGQEzW8AKadqnTfG6FgmAkoYFuGE5
         wWPA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id v4si2613704jas.5.2020.11.25.15.21.58
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 25 Nov 2020 15:21:58 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id 414EA2A490;
	Wed, 25 Nov 2020 18:21:54 -0500 (EST)
Date: Thu, 26 Nov 2020 10:21:54 +1100 (AEDT)
From: Finn Thain <fthain@telegraphics.com.au>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
    Kees Cook <keescook@chromium.org>, 
    "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>, 
    alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net, 
    reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org, 
    linux-wireless <linux-wireless@vger.kernel.org>, 
    linux-fbdev@vger.kernel.org, dri-devel <dri-devel@lists.freedesktop.org>, 
    LKML <linux-kernel@vger.kernel.org>, 
    Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org, 
    dm-devel@redhat.com, keyrings@vger.kernel.org, 
    linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com, 
    wcn36xx@lists.infradead.org, samba-technical@lists.samba.org, 
    linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net, 
    linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net, 
    drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org, 
    linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com, 
    linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, 
    oss-drivers@netronome.com, bridge@lists.linux-foundation.org, 
    linux-security-module@vger.kernel.org, 
    amd-gfx list <amd-gfx@lists.freedesktop.org>, 
    linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com, 
    linux-acpi@vger.kernel.org, coreteam@netfilter.org, 
    intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org, 
    Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net, 
    linux-ext4@vger.kernel.org, linux-media@vger.kernel.org, 
    linux-watchdog@vger.kernel.org, selinux@vger.kernel.org, 
    linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
    intel-gfx@lists.freedesktop.org, linux-geode@lists.infradead.org, 
    linux-can@vger.kernel.org, linux-block@vger.kernel.org, 
    linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org, 
    linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org, 
    nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org, 
    ceph-devel@vger.kernel.org, virtualization@lists.linux-foundation.org, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>, 
    linux-hwmon@vger.kernel.org, 
    "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, 
    linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, 
    Linux Memory Management List <linux-mm@kvack.org>, 
    Network Development <netdev@vger.kernel.org>, 
    linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org, 
    Linux-Renesas <linux-renesas-soc@vger.kernel.org>, 
    linux-sctp@vger.kernel.org, linux-usb@vger.kernel.org, 
    netfilter-devel@vger.kernel.org, 
    "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, 
    patches@opensource.cirrus.com, linux-integrity@vger.kernel.org, 
    target-devel@vger.kernel.org, linux-hardening@vger.kernel.org, 
    Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
In-Reply-To: <CAKwvOdna5Zj_O=sB7Q0jHZX0BJSaakX=ZyftwQ_3=L3-ZB54XQ@mail.gmail.com>
Message-ID: <alpine.LNX.2.23.453.2011260918510.6@nippy.intranet>
References: <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com> <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com> <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com> <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com> <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com> <20201123130348.GA3119@embeddedor>
 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com> <202011241327.BB28F12F6@keescook> <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com> <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
 <alpine.LNX.2.23.453.2011260750300.6@nippy.intranet> <CAKwvOdna5Zj_O=sB7Q0jHZX0BJSaakX=ZyftwQ_3=L3-ZB54XQ@mail.gmail.com>
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

On Wed, 25 Nov 2020, Nick Desaulniers wrote:

> On Wed, Nov 25, 2020 at 1:33 PM Finn Thain <fthain@telegraphics.com.au> 
> wrote:
> >
> > Or do you think that a codebase can somehow satisfy multiple checkers 
> > and their divergent interpretations of the language spec?
> 
> Have we found any cases yet that are divergent? I don't think so.

There are many implementations, so I think you are guaranteed to find more 
divergence if you look. That's because the spec is full of language like 
this: "implementations are encouraged not to emit a diagnostic" and 
"implementations are encouraged to issue a diagnostic".

Some implementations will decide to not emit (under the premise that vast 
amounts of existing code would have to get patched until the compiler goes 
quiet) whereas other implementations will decide to emit (under the 
premise that the author is doing the checking and not the janitor or the 
packager).

> It sounds to me like GCC's cases it warns for is a subset of Clang's. 
> Having additional coverage with Clang then should ensure coverage for 
> both.
> 

If that claim were true, the solution would be simple. (It's not.)

For the benefit of projects that enable -Werror and projects that 
nominated gcc as their preferred compiler, clang would simply need a flag 
to enable conformance with gcc by suppressing those additional warnings 
that clang would normally produce.

This simple solution is, of course, completely unworkable, since it would 
force clang to copy some portion of gcc's logic (rewritten under LLVM's 
unique license) and then to track future changes to that portion of gcc 
indefinitely.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.LNX.2.23.453.2011260918510.6%40nippy.intranet.
