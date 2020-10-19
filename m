Return-Path: <usb-storage+bncBDYJPJO25UGBB6XPW76AKGQEIQEDKUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E8F292F72
	for <lists+usb-storage@lfdr.de>; Mon, 19 Oct 2020 22:32:59 +0200 (CEST)
Received: by mail-oi1-x245.google.com with SMTP id i128sf508204oib.1
        for <lists+usb-storage@lfdr.de>; Mon, 19 Oct 2020 13:32:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603139578; cv=pass;
        d=google.com; s=arc-20160816;
        b=vQxdDJngFMBgf6zbJOQ5Y+VBu08V1KMYF6aDIVkC/Lh9xgGy+1YbZNiD4RLuqcgCgX
         whxyNbCDywXqxONaykbekHFiSnYl17IV7MvLh2/9AWk1riA+WKT1Yk0Zl+QahJKvHU1/
         DHP1LK0SgyxZhVuLSqqJaOZMOLQYLqwKZEuX7bnHw0iDiO7EBfChZmgSUii37XKtb7QJ
         ok4W/uDLIIJqGpFO3iFlikuR0YT3Y0jjyat4NzXjpT/ymnn6x+ePA3jxfLR14GTTqB8/
         zE/8CyyyE7nwMGg/C3KbZ//TgnKtOVm9LyZLI8g6G6lOIDCbPH/rUoVY9EEkIh/ohxvm
         vAVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=32ufMjUEaWp69fLe+ab4jOEzw9TlDRq3bRrVP96020w=;
        b=bvYWt/CWsapaiyOdxUhJYsmDOcoklfe9u6pVmdE9Q2yEVsm5cT5YHzU2l45kUlkyIn
         T6QkFjoeqt4TNZHdt+BiOJ3ErrOftfE3qF9kc3Vq0uUJtfvY6oIElC3k23ggnGM9fByr
         TCVRKJI6E5qrMYgWPjACPc1U/xDLNB0dJDW7OccmGstfIQjcWOPBBIkiFcMcxqT+TAsm
         O2KFrEhxQBiz9Zu7VvjetMln4uv45qJfa2Ak4J/RJRROIrG+CEHBDxWh3cpOehx+Nn0h
         skbzmFVh0+s7Z3wXKYZPvoB09ddgXtADF1UaBlhSK4hSRPLmxflndl6rECMminV0GHhR
         BGNA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vqIoQqfP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=32ufMjUEaWp69fLe+ab4jOEzw9TlDRq3bRrVP96020w=;
        b=dNDIiAmxuTjK8KB0ynyECsJ67Mj1dT3LCJT+uUS9AHs02OABRIRfizhMB5a0JNyOZZ
         ha/XMq57vvpJkWGsNYmQDE4cf8SRTFT3K3c2fVfnNDcL7XgULJ424PidJGt2/4KrjVGG
         tSKBx5y/cJoa4ctx50p/1Y0k09OvZPqPky5e4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=32ufMjUEaWp69fLe+ab4jOEzw9TlDRq3bRrVP96020w=;
        b=YLWPjgxpEMEwLQ8ciDmhglzlI+wJO0KOW9/FsJnVzm8g8As4PBznLTHOmWtTfg6ODp
         3pvN+27BlY6lbWsmu8dexMOEJyqrFhRDCr+phC3FcUwBTrL2OMmChitFhFO+2tUTy6t/
         2z9G0mjfUt+LFepbNVpNLAlc9uxCJDzbLwy9xx1PnmJCvdPIkU96iEy25lhSD8VbbyPe
         Ld6cZPCgHRtFCPP+EpotcXjEyTgdQBJ4WFvUbm+twWDZHOyL7xsC4IRzWx7PnzsceZ/v
         LbTS2Il4+4Ne4CgdRCeLj0S2AdU7RfDJQJiJ3vC0TYd8kpFBWPZ3/K9gRhCHZnux7lMm
         AdLA==
X-Gm-Message-State: AOAM5318mTQunrJy+qKbedKfEnVYW0wbDDCS7bM5ugNPomeGPyyGJlyU
	t2ROeoEb0y3IEGdbge3u0Zu5ig==
X-Google-Smtp-Source: ABdhPJwvJunMHElkb7h22Ig0TK/A4884UQaPRAtRtSWSh2efe3oHJ7Dd6CF6tkbxRGvHdx3s+bOvTg==
X-Received: by 2002:a9d:2a88:: with SMTP id e8mr1193335otb.122.1603139578406;
        Mon, 19 Oct 2020 13:32:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:6319:: with SMTP id q25ls178970otk.11.gmail; Mon, 19 Oct
 2020 13:32:58 -0700 (PDT)
X-Received: by 2002:a9d:2037:: with SMTP id n52mr1226774ota.320.1603139578051;
        Mon, 19 Oct 2020 13:32:58 -0700 (PDT)
Received: by 2002:aca:2408:0:b029:d5:77d6:7138 with SMTP id n8-20020aca24080000b02900d577d67138msoic;
        Mon, 19 Oct 2020 12:42:28 -0700 (PDT)
X-Received: by 2002:a17:90a:73c9:: with SMTP id n9mr981165pjk.90.1603136547472;
        Mon, 19 Oct 2020 12:42:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603136547; cv=none;
        d=google.com; s=arc-20160816;
        b=xEIJ8iwb1sRJFJGueSiVjDuaftiSEJmDKKxiZlooqL0kblhwtEjlPbFFL635Yzjqjd
         IaEdE9oQfXaEUd/iltT2KohnjjcIJyh6c0CIK56vYMk18uldAkshKlipmreNYrgP/CqY
         P9y7tJU3ouFqUP5+ZAcBzbRNgdQ1oBJEnBBEuzGTi3CLkJGAjgcghzQhaO8JCS5Tm4aq
         XfacYSqds/1RbqfDDm6LMZfv6d1IvDsw4XRJmZ3NUACysd7ON9MPuQMpvWNEVEAy5HQP
         kCLF1Y6BtEOz/BlQ/x1cwAkKnisIJN1if9KTdiTZLCMxev2SuacTwofzGdzX07BV7GOX
         frTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=no6WOfZDuAXhTDfVia9Vunkz4L7BthY0F8m0jo4//vs=;
        b=yibKNRNei1aQ+AuMDp575C4MexuG365tJ230lhqu2/yGAJDFztLAiK79QOxlAH2ImU
         Br8mXNqAwHL41C/ysoV+3aJj/wsoZymUyUfLPZXFJBiA6/4P0Ujst7NEQFzFrYYxUqdB
         uFaY+JdAW9M6dZjPTXbQVveeZPpMUP7EO0tctjstiM41vA7kx8j1NhTR1ks0VphAEd6d
         V09eDgFTrAQRihM6ZJ4wqnPIHAiZ7RxI8MJjg4Qal7HvToq4sJZnBOAl4wkNSDx7cq4v
         E/kC2c7c2PH0HPB8xHIPgiLXzq3XBww9ObTCh0SQFveKgyjiM5lr7ITk9tGVATinGp4+
         Q+sQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vqIoQqfP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id nv6sor275189pjb.26.2020.10.19.12.42.27
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 19 Oct 2020 12:42:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:ee87:: with SMTP id i7mr921476pjz.25.1603136546933;
 Mon, 19 Oct 2020 12:42:26 -0700 (PDT)
MIME-Version: 1.0
References: <20201017160928.12698-1-trix@redhat.com> <20201018054332.GB593954@kroah.com>
In-Reply-To: <20201018054332.GB593954@kroah.com>
From: "'Nick Desaulniers' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Mon, 19 Oct 2020 12:42:15 -0700
Message-ID: <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
Subject: [usb-storage] Re: [RFC] treewide: cleanup unreachable breaks
To: Tom Rix <trix@redhat.com>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-edac@vger.kernel.org, 
	linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org, 
	xen-devel@lists.xenproject.org, linux-block@vger.kernel.org, 
	openipmi-developer@lists.sourceforge.net, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-power@fi.rohmeurope.com, 
	linux-gpio@vger.kernel.org, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, nouveau@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, 
	linux-iio@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	industrypack-devel@lists.sourceforge.net, linux-media@vger.kernel.org, 
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org, 
	linux-mtd@lists.infradead.org, linux-can@vger.kernel.org, 
	Network Development <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org, 
	ath10k@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-stm32@st-md-mailman.stormreply.com, linux-nfc@lists.01.org, 
	linux-nvdimm <linux-nvdimm@lists.01.org>, linux-pci@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
	patches@opensource.cirrus.com, storagedev@microchip.com, 
	devel@driverdev.osuosl.org, linux-serial@vger.kernel.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com, 
	bpf <bpf@vger.kernel.org>, linux-integrity@vger.kernel.org, 
	linux-security-module@vger.kernel.org, keyrings@vger.kernel.org, 
	alsa-devel@alsa-project.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>, 
	George Burgess <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vqIoQqfP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Sat, Oct 17, 2020 at 10:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > From: Tom Rix <trix@redhat.com>
> >
> > This is a upcoming change to clean up a new warning treewide.
> > I am wondering if the change could be one mega patch (see below) or
> > normal patch per file about 100 patches or somewhere half way by collecting
> > early acks.
>
> Please break it up into one-patch-per-subsystem, like normal, and get it
> merged that way.
>
> Sending us a patch, without even a diffstat to review, isn't going to
> get you very far...

Tom,
If you're able to automate this cleanup, I suggest checking in a
script that can be run on a directory.  Then for each subsystem you
can say in your commit "I ran scripts/fix_whatever.py on this subdir."
 Then others can help you drive the tree wide cleanup.  Then we can
enable -Wunreachable-code-break either by default, or W=2 right now
might be a good idea.

Ah, George (gbiv@, cc'ed), did an analysis recently of
`-Wunreachable-code-loop-increment`, `-Wunreachable-code-break`, and
`-Wunreachable-code-return` for Android userspace.  From the review:
```
Spoilers: of these, it seems useful to turn on
-Wunreachable-code-loop-increment and -Wunreachable-code-return by
default for Android
...
While these conventions about always having break arguably became
obsolete when we enabled -Wfallthrough, my sample turned up zero
potential bugs caught by this warning, and we'd need to put a lot of
effort into getting a clean tree. So this warning doesn't seem to be
worth it.
```
Looks like there's an order of magnitude of `-Wunreachable-code-break`
than the other two.

We probably should add all 3 to W=2 builds (wrapped in cc-option).
I've filed https://github.com/ClangBuiltLinux/linux/issues/1180 to
follow up on.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAKwvOdkR_Ttfo7_JKUiZFVqr%3DUh%3D4b05KCPCSuzwk%3DzaWtA2_Q%40mail.gmail.com.
