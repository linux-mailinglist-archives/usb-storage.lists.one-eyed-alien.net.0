Return-Path: <usb-storage+bncBCILJWNIZYHBBKU37P6QKGQEP6P73AI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 115DE2C49F2
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 22:33:32 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id t9sf2859453ilp.20
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 13:33:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606340011; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJSq6bwUSIAS5hnmfiKfS+wYnxsys9v9EmNfYiY0Y8kM/wcM8aUPDRVT+MJ2I2krKI
         ZNY7Iyy8L28M8NnhLxftbtp/RNDIzjN0Y7JBHwbVZiZ24PbNLs9J9aie4iBJcI2XCPxE
         /uze+aiMIFawyTzPQyLYtJ8zQEWYG7myS/fgoL+becAUupBWgZdn7MDWwvt2THOCpdS7
         P0Ipy9O2eDm4s+BAZFhRQor8K3Y4i2zB6X0OZny714yyOp4gH8qSrWsGeNkLsPL4rz0I
         wbc3f5ksGqvcLHg7OPI+XB0K32Klpf/H5H7/Cxvh/vm4HJSfkxcKRLVLQOOCzpBgCDyw
         6vJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=XcZTP4cXTT+4Bfyef2S4X2pvliHOOM31TGchu18GyKc=;
        b=Fse8ioyhKIFhT3V2oC3+hAJA6mmJR6rFWAQ1a5SLjEdtuZWazsOQbxlhsNpTO14Puf
         MB47K5MVHdIKLKvfiwbd+qKiEk1K386k8vGi+OqA7rF9BVE9BGOQ1XlUc1Nip705Wx6h
         HSuCQMGlR9hhTlSOYLf3ENI64suHBlJekIuWk7JpIygSs0aOTjOc97YfoAQhxD0JNPj+
         rKWmBZlQ3ZZoo4elgyz+D2UTyyDTmbbq/AQ5hxFlxTXLOm0bQIcoOJ5keBJ38qnGOWDc
         0EPiDmnjt7GrQmv8dzZAiembVCOcqscjV1omNsTD+H3EOpIJeR8T9/xhdEDAN3/BZkET
         Z7Bg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XcZTP4cXTT+4Bfyef2S4X2pvliHOOM31TGchu18GyKc=;
        b=FFMZq3rPEUALG2zzeJcoXQc1R6IX9lfmc4BPL0sE/dq2DFsX5ZCALjNwHUSe9Dn+uR
         4wM8yBRfYRDOnW6mn3fwc6Fgha5DkQ1ANt+yeFno5+NUZ5TIFkNpgKXfLT0a8RVKKmHD
         Mf2rWX4vMzyZZKD/Pxzi1SuWdIN+OhqY53JME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XcZTP4cXTT+4Bfyef2S4X2pvliHOOM31TGchu18GyKc=;
        b=HKwi3Q+KhJMDs5Iu2bnVNrIrvsCS2d9mUoDfdQpXs5f3c7bbn9ECaYjkjTWpf3ajbm
         L3wRBOetUqJwo/+sPdDrAul2YJS49L9nZcPU6eR/Ba/RIRc39RyBeLqBw8pOBcadKA0a
         93QShYOU/nWwQBI4HQ5qPCAyFW2CQmnQqO7io1CVhXPlWjxjoS18rxWgs2fS7tZGU8jj
         wiBXhXXekFlw9OSjGospDdX4s2Sj2o4Y1r4JGd2L0CsE9aMkkx5TXnDbExB2n5s8rv+V
         MbsLm3ZLni7UHekZCQJ8S8lONV9kbunMR+sLus4AW9ISwHHfxtAf54txsOCeqrtbjPRz
         FuRg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531NlViOljwntZRa3xdu6YrOxuva0Kf53JYAJybFqyfvKFOOQzTy
	vypvN5bi6ULpWSwVytls2mJKAA==
X-Google-Smtp-Source: ABdhPJwYga2gSn87Ag5JVK6Y+jUHl+mGMfqBwj+46f7QCgpljbzpBAnT/S0BrHY9o+ILycoGgh38Lw==
X-Received: by 2002:a05:6602:588:: with SMTP id v8mr4228704iox.181.1606340010983;
        Wed, 25 Nov 2020 13:33:30 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:d586:: with SMTP id a6ls1020355iln.10.gmail; Wed, 25 Nov
 2020 13:33:30 -0800 (PST)
X-Received: by 2002:a92:cc52:: with SMTP id t18mr4716882ilq.124.1606340010577;
        Wed, 25 Nov 2020 13:33:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606340010; cv=none;
        d=google.com; s=arc-20160816;
        b=H8oQW1HweKUOl6yVCfRQVrfQPZKAAPkCjRtROsBkdBrAG2tjATSoUUv+CA3rPKz3s3
         q0U5N+Y2ULTJ2V2aZySDBf8/qyhE5ZWq8Yq/pw6hhBTIAOSKrLIJk8GpbEn4xiTF4AZB
         x20XwEKtfJqxz7krn6bHQct3Cjfi/Be8gUPnnWM71y8jadKi+fUEbrGdXUQ1AKg76fv2
         OK5/nJZNAJ0sEwYd2jLjQpYo8xpaXj8hL0C2s6HXJRR0ao1f5i9qqY0xYHig5b4+z3q/
         0cngfgGBJFhqhs49hXg9zt6kn89wW+qIoU+JOGp281RZMJUQtXxueoxG/fzrQVqeu5c6
         w15Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=wzrwGkZX1jEEXyvqIiw8qlfrX4fLAwkeGJhxQHRduRA=;
        b=nm2OVdXo/Em6MgRhZXXqUGb5Zebd64lN+Z+pwYUUiHXnxZtthQcIwe+KKw9js9xVE/
         dRDMSGH2nI+mYlZD88EOISMgvgdG0Bq3jxVkYzEGgsS+RHF9FLmThXrfvqU2Ru2oED/o
         GoPxBS+t8Mgmsgla/Z6KykDWus2Ri4GLQJ4aqd8tDk7Y26kaeb48hHGPFpsV+P462R4m
         tjd2H+KofgqZC/YXGyGamaYMx0h1Avr6mEXN4IcQjSQ/VBq6iDRqRkK2Rlx17SMmKTHs
         lrtBjE/5VB9LqRcllTw36Yc74P9zw7TReAhBdsGm4Zxz4oKtKl6InBOfHU9zPcqyOBB6
         QFng==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id a61si2340293jai.52.2020.11.25.13.33.29
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 25 Nov 2020 13:33:29 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id 9789F29FB0;
	Wed, 25 Nov 2020 16:33:24 -0500 (EST)
Date: Thu, 26 Nov 2020 08:33:24 +1100 (AEDT)
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
In-Reply-To: <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
Message-ID: <alpine.LNX.2.23.453.2011260750300.6@nippy.intranet>
References: <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com> <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com> <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com> <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com> <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com> <20201123130348.GA3119@embeddedor>
 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com> <202011241327.BB28F12F6@keescook> <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com> <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
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

> So developers and distributions using Clang can't have 
> -Wimplicit-fallthrough enabled because GCC is less strict (which has 
> been shown in this thread to lead to bugs)?  We'd like to have nice 
> things too, you know.
> 

Apparently the GCC developers don't want you to have "nice things" either. 
Do you think that the kernel should drop gcc in favour of clang?
Or do you think that a codebase can somehow satisfy multiple checkers and 
their divergent interpretations of the language spec?

> This is not a shiny new warning; it's already on for GCC and has existed 
> in both compilers for multiple releases.
> 

Perhaps you're referring to the compiler feature that lead to the 
ill-fated, tree-wide /* fallthrough */ patch series.

When the ink dries on the C23 language spec and the implementations figure 
out how to interpret it then sure, enforce the warning for new code -- the 
cost/benefit analysis is straight forward. However, the case for patching 
existing mature code is another story.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.LNX.2.23.453.2011260750300.6%40nippy.intranet.
