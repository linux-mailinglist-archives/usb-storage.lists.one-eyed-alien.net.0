Return-Path: <usb-storage+bncBCILJWNIZYHBB3NZ636QKGQES4XO2JA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B77B2C34FC
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 00:53:19 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id j7sf449098ils.5
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 15:53:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606261998; cv=pass;
        d=google.com; s=arc-20160816;
        b=0f8V6FVP5HHQF/imWBkc2cuWT4qoDISiihToyB8BdNGHR3Vp4WsMOaLCW+bGcsM3Px
         9WSISiMAt45dIVDemhVP2AnghEcaS09qsqa7eQbCtccS+3qTTfxoNy6rIjs6nlQ+kQDD
         QPS+sSRSALvM66Y1/3ZV6B8OKF0dvrD7ChVVJb4u+JJ4UVaEthpVR8HjSRs6c2p1YSOS
         wVga9WuhFtJPQuWHdUcD+PeOH5wMtMWDKYPmRLgKmfpXX6i4Zz3GvkG2iFZ7YmwlTfYh
         KurEwzg5DTdDYM9CqpOLFllplbpr8b+uIfNzLZhbnyP6s2ZuRuZTD8JwSGWIkR+d3AdZ
         CtcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=6PVD/apGL5JnFbjeQyVPJkzZBagCD2/N5iVHPzOoLro=;
        b=FXzoz5WbHD8UVrHUovp5h8KTlWqQ5K5YYFGf6j3Itw/xEFg9QUAXe/yC0Jl4u7Z7R2
         YonIX1jxy9ckVBZoi1gGkd0EvSkWeFMay7aowBs+x53rkatXCn0Q+6PMDPrWRisaN1YO
         xadgNlRyos2do0QsEG3PfzcHBNxEODMi7nLz1NH66aqoN16SpB8Kd3wQwxCEsZRASEO7
         jYDM2//Lsrpl7jiEDDwNkrgBwSHKH5gDI3bSi6Ovllh8GM6zQj2E06xouePks4myphpH
         pje/VtIo9iDaEnPzicgdLVWtbg9nbejI4YQFJtkqdIhE/rnUIhL3TsM9OlyAMLnCcylq
         7/kA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PVD/apGL5JnFbjeQyVPJkzZBagCD2/N5iVHPzOoLro=;
        b=AD9x05sjvEfp6RSmm0+c6THtZEY29CF4pLgh8jrZHHFyNeBeQzMbLPXohlb24F8zzq
         Qs/SQ4pPXjmh8i9qKoJfDSYBv/vJJq+oW6rut3vV+Z/z3hNCJEXVJAy2ziKNVevSsANV
         /g9EpNyH09Pgon8YUaljKndI/dZOysVJkarJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PVD/apGL5JnFbjeQyVPJkzZBagCD2/N5iVHPzOoLro=;
        b=rDG7XP4hItw+FLQ/uNf02bLTw4N4vhE+y+SkBRXaNsEyLTdbc9Afmk40+Wor1UpBX/
         JVgLMCvGjv8BQ8NypqvubEqD4YjujRByMbyRt+iXDvuufwkVvvxuhtnHWq7FMtBC4puy
         z0q7SEwQw2JXnxMHliggdthbU0lIT1hi8Jaxc4+oOXaJDP3ht/cQF2H/IAFFMAmHwTUj
         xCFbm/UNSGtF06Y9vz6mH4j1RDfUSeqX8cVFJEE8D9m/qPHOB0fR9I6WqFVus4NeeV/y
         UpfhE56/Hrl905qj/YCHeMJZsambnzXqcnXuf7JFGNL0MKVpglFewHC/gU3TB4ko/1a0
         0UKw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533gU8DNeYVLR9CY9EATFzxBM3JWfEGF2mmdOpYfa8D76VrCTF08
	G4fQNdw0cLkrZDtbHQE3mN4Frw==
X-Google-Smtp-Source: ABdhPJyA0TFqlVzb0DEP7QbAxtAdWhGY7a1JM/uQuh/DmeV9hwwgcgGmmFesPguuJUycRHU8S/Yf9A==
X-Received: by 2002:a02:a98c:: with SMTP id q12mr928861jam.140.1606261997906;
        Tue, 24 Nov 2020 15:53:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:99d1:: with SMTP id t78ls195923ilk.7.gmail; Tue, 24 Nov
 2020 15:53:17 -0800 (PST)
X-Received: by 2002:a92:d0cf:: with SMTP id y15mr788277ila.168.1606261997338;
        Tue, 24 Nov 2020 15:53:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606261997; cv=none;
        d=google.com; s=arc-20160816;
        b=lQjH7SoU30WyWUvHFSgWMjKcW4qxAexUYd1OkVmkzaVbyK7EhZYXFDpb72H8F9aGv7
         zJco1MAZSmfBoWhRsNGZrKCfuEAJvFjdoC3otMc2qmPgkEwYVLiffTPTjl129qDJG2k2
         9gta91Z3n+S1UcqpTsvZkfEbSNTslz9Mrb2Nx3GWOXpw0Ji9ARBOBknhWjsS4Z5C1uuO
         SxtyWQRghTmb/eeifMLH3+WbSsMVLkN3WW8Pm8I0dZbEGCwQYKs6pgmcXj90rUoDXudp
         EWvwXUbJ+Gng5GxOppNsbjBaSBXCp/TJSJuGXR4QUsJQ3n+CNfDCP0V1DXHGJIdExfwf
         oI5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=2iGQ6mWZNtbJPiwAVaJof98ylz+QVxJv4E6bAwuQLM0=;
        b=kSyS7dAOcyJiA48h3JlJO44QdbPmgs0DmXtIPpVQ8Sq+NWqkaUB1JM63j2VZrWUXiq
         skEEagw4S7L7SIPT2iB+naL8XSMEUN382PiKEVmrM48aeBxGaeDHA/EvF/YyQRbugysj
         OfEnIxwdq1nkq03tQbEz0/DSJeSGM79Hma/XOFpJAD1Hapj01NrzR5cl/JJyBf4H0nBv
         0UFWTakLYGtCaFJxV+sxPJAHi0HmTfnse7n6pbnqFRBufEjQVuZuTttqkkeSf5PGZ/D3
         E3T9a4790j7Nn+S/BaTg8cX1tLca8SpKEQu90pWlBg2GyLJ8bFdQccc1X8f1SkImp7Qa
         kbug==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id n21si391742jat.58.2020.11.24.15.53.17
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 24 Nov 2020 15:53:17 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id DCBBC2AA63;
	Tue, 24 Nov 2020 18:53:13 -0500 (EST)
Date: Wed, 25 Nov 2020 10:53:13 +1100 (AEDT)
From: Finn Thain <fthain@telegraphics.com.au>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
cc: Kees Cook <keescook@chromium.org>, 
    James Bottomley <James.Bottomley@hansenpartnership.com>, 
    "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>, 
    alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net, 
    reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org, 
    linux-wireless <linux-wireless@vger.kernel.org>, 
    linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
    linux-kernel <linux-kernel@vger.kernel.org>, 
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
    linux-input <linux-input@vger.kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
    tipc-discussion@lists.sourceforge.net, 
    Ext4 Developers List <linux-ext4@vger.kernel.org>, 
    Linux Media Mailing List <linux-media@vger.kernel.org>, 
    linux-watchdog@vger.kernel.org, selinux@vger.kernel.org, 
    linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
    linux-geode@lists.infradead.org, linux-can@vger.kernel.org, 
    linux-block@vger.kernel.org, linux-gpio@vger.kernel.org, 
    op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org, 
    xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org, 
    linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org, 
    virtualization@lists.linux-foundation.org, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>, 
    linux-hwmon@vger.kernel.org, 
    "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, 
    linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, 
    Linux-MM <linux-mm@kvack.org>, 
    Network Development <netdev@vger.kernel.org>, 
    linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org, 
    linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org, 
    linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org, 
    Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
    patches@opensource.cirrus.com, linux-integrity@vger.kernel.org, 
    target-devel@vger.kernel.org, linux-hardening@vger.kernel.org, 
    Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
In-Reply-To: <CANiq72nUt57u5DG9rH=DB0DzQH7U6-QbG-2Ou+PyCY=p=_Ggag@mail.gmail.com>
Message-ID: <alpine.LNX.2.23.453.2011251022550.14@nippy.intranet>
References: <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com> <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com> <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com> <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com> <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com> <20201123130348.GA3119@embeddedor>
 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com> <202011241327.BB28F12F6@keescook> <alpine.LNX.2.23.453.2011250859290.15@nippy.intranet> <CANiq72nUt57u5DG9rH=DB0DzQH7U6-QbG-2Ou+PyCY=p=_Ggag@mail.gmail.com>
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


On Wed, 25 Nov 2020, Miguel Ojeda wrote:

> 
> The C standard has nothing to do with this. We use compiler extensions 
> of several kinds, for many years. Even discounting those extensions, the 
> kernel is not even conforming to C due to e.g. strict aliasing. I am not 
> sure what you are trying to argue here.
> 

I'm saying that supporting the official language spec makes more sense 
than attempting to support a multitude of divergent interpretations of the 
spec (i.e. gcc, clang, coverity etc.)

I'm also saying that the reason why we use -std=gnu89 is that existing 
code was written in that language, not in ad hoc languages comprised of 
collections of extensions that change with every release.

> But, since you insist: yes, the `fallthrough` attribute is in the 
> current C2x draft.
> 

Thank you for checking. I found a free version that's only 6 weeks old:

http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2583.pdf

It will be interesting to see whether 6.7.11.5 changes once the various 
implementations reach agreement.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.LNX.2.23.453.2011251022550.14%40nippy.intranet.
