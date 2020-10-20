Return-Path: <usb-storage+bncBDY3NC743AGBBLG7XT6AKGQENC7WPVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com [IPv6:2607:f8b0:4864:20::d46])
	by mail.lfdr.de (Postfix) with ESMTPS id 79955294248
	for <lists+usb-storage@lfdr.de>; Tue, 20 Oct 2020 20:42:53 +0200 (CEST)
Received: by mail-io1-xd46.google.com with SMTP id q126sf2786416iof.3
        for <lists+usb-storage@lfdr.de>; Tue, 20 Oct 2020 11:42:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603219372; cv=pass;
        d=google.com; s=arc-20160816;
        b=P3Pxy9NSmdS/0/9nAhnICr3fDaD1JcVkOuDhzvN9+nVWWG0WoEhpLDVKwUgLPhfSen
         mS/tyRQnnS3ure63IS4ii7vyfpIywwXtFWtlUAiILWn7WWsK6+2KVH8AJKQrf9xS7N8G
         K8Ee93VCqjTKC1YwSaKhXO6vlkLRaE3Dd+ntOr2Fg47vRontBPc2Yto4wZiCxp1/1DnS
         01B1C8DXxNSW2RoFJJuxEoqKPuO4Khcli0Ub9ioKwRK7CxOqd3iic/S9oY/xhm1/aUz2
         4aoJ4hUg2nNl2yyxf+469SUrpT4T7Zbzpv41qouywgaFvohIjxvnFkTu3jGBm5SOZYom
         +xqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=XFNch6a96mk4+fZK01tzw1VbqbQ52ovN4K4L1r8oZ5s=;
        b=nZj6k9qN01IwocsMPKb9d4g8no6VgSMtVYCguXuSoLPfXtpu4IW8h03IGryOESHSIU
         JUyz/sgqgOgXU2pGVjjxqAgUIMCVMHEo1PueqK60zhoRt61DnDA3GnmZ4zNNXlPSiRQK
         T36eFy8d4se73abQes/9OipxY8kOyT3NECmf7Hwc6daTZ2NfITei8+Mg4+kS6I3ozoxY
         GPjM2zQP/6V29rv1f7Ii6SuXdU0FiiOdj1UOnYxroTxQse9QNQE9rKo31QqiOGZfPOP/
         tdvpWU4mT85DvB+usZ5pKGwGYiNBojqyYlDvBre0bQ3UqOVm9FwfdtaBK7RqBDEHhIDp
         86yQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.224 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XFNch6a96mk4+fZK01tzw1VbqbQ52ovN4K4L1r8oZ5s=;
        b=XCPJbWbdW+04V195Qmtwv9tsYrF5ZALr0Wi3pPxPPjH0sDqhtEtBlc7K/Bzc//H3bu
         cm153E8+wlSN963ptr0VyAS5PBXNiLgk10VdeXhKJA0HPR73+x9emm0sgd6Blqy3vMw0
         /ga6ziMPUIjko0guVeWtxxrVg2jOxmr49qw9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XFNch6a96mk4+fZK01tzw1VbqbQ52ovN4K4L1r8oZ5s=;
        b=qbKBqv0NKDwJ1RTrvsHODEve34N8TNJfW+dcHHELTeI9VqAHLjeKQZ42Cvu6dGxXjc
         J9H9ja+qa1xbM6lAN3TdAz9ooD8B3OQ6i4GmWFvUwz2OfYkzPpDB551h72QVLoEyrPCP
         rX0jIGRX3E0hL4RuyicokUVlEFqTOpH9Uc75Q7/FYPY2K/BM+c3ZsNNdlUszRNYxe9YO
         HmpSQIi8QXiSfeFl5zy5VcSD3TsEpKgHcCQSov5oYUAe89QU0JvClGwOPEeeogJqDCcw
         KKlsili6j1Z5kxPxHjVYqvbyV6yRDx82xQfwMLzuwvmz1IaIlopK0DcKkXTP+S+ZshIp
         0fJg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530s352VO+2uUuJKskk4M1JPViQiABBQgqFIezm8BipGd3MM+4BN
	Ggt/iq2+WMt27AzZge8pQEbPVA==
X-Google-Smtp-Source: ABdhPJwQ1XI8PKFGPoESlnt37nOitt9ac6BDydGnPzEVjz0GE9LTJY1o5mEBCNmcR/AeLfi2BharKw==
X-Received: by 2002:a02:a510:: with SMTP id e16mr3169891jam.51.1603219372421;
        Tue, 20 Oct 2020 11:42:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:8d06:: with SMTP id p6ls400846ioj.9.gmail; Tue, 20 Oct
 2020 11:42:51 -0700 (PDT)
X-Received: by 2002:a05:6602:2b90:: with SMTP id r16mr3319866iov.31.1603219371878;
        Tue, 20 Oct 2020 11:42:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603219371; cv=none;
        d=google.com; s=arc-20160816;
        b=ObjLslcXNep8C6oQTCTs4yc0C3vri0/dkZN4pa2aAbMY9fuhfnn/zx+WHmyCJ+cNgQ
         72yvmiYsGvbruZqzYlhwYgOWT0hEIZp2VNjxyssUa2nHY9gjl7ruR95MprsppuY7q0Eh
         EhAUcuU8Utkc+A37Yt34MA992DvIl/DPSo1e/ZjF1LfvGRlr853WZdAkvmmC7IzWdLvt
         cOMJAsPTRilm1R8/ZtZmp5cyhrsouQCeZ9hGLlnsyNYlrmsmUOa9MYMTgZx5RcOs9bmK
         62kKDZw83iYcjs3sPXRKSqi8fuiXR3zU9ytt/vHlCbZT4fuz/0Z+54qb036qlTEYee0t
         MV/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=L7f8gxzmHz1zuppy2OCatGDIIf9704YunK91Oxegy1A=;
        b=pald0TSrht3rxcwu1Wy46cab430+oharnsOf/Gh3YnCI/jIV6/LNYVKRSQBtkjJlP/
         v4O8/6lWGErp9ejuy9isP5T90OTgLgf9/nbtaW+KQlk3umY/fgNQzvL7d4LKxRqdy0uW
         TzUIjpxcaW/cKl74Yf9lLCzf6RoW/iSzVnutVP2j1VRzG0q1pp0vPaPSAvIVgwCB1iYY
         a6f9LGCmDlb443NMp7cYUr3Tz//700kNEucy/YVJy/uaXFU51h/BW/6oGpcxvEg0CJKp
         Kwlzhgvm2nHttHR4VUlVBUQ/A+NvF/ht+N1t3jBEzPaymh7aXsk2mJvchPFBHWmcx3p8
         U0aA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.224 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0224.hostedemail.com. [216.40.44.224])
        by mx.google.com with ESMTPS id b10si1253544ill.126.2020.10.20.11.42.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 11:42:51 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.224 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.224;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 43FA51260;
	Tue, 20 Oct 2020 18:42:51 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1434:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2553:2560:2563:2682:2685:2731:2828:2859:2911:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4425:5007:6742:6743:7576:7903:8957:9025:10004:10400:10450:10455:10848:11232:11658:11914:12043:12295:12297:12663:12740:12760:12895:13153:13228:13439:14181:14659:14721:19904:19999:21080:21451:21627:21939:21990:30012:30034:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: humor84_3a06a8527241
X-Filterd-Recvd-Size: 4943
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA;
	Tue, 20 Oct 2020 18:42:43 +0000 (UTC)
Message-ID: <3bc5c2e3b3edc22a4d167ec807ecdaaf8dcda76d.camel@perches.com>
Subject: [usb-storage] Re: [RFC] treewide: cleanup unreachable breaks
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-edac@vger.kernel.org, 
 linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org, 
 xen-devel@lists.xenproject.org, linux-block@vger.kernel.org, 
 openipmi-developer@lists.sourceforge.net, "open list:HARDWARE RANDOM NUMBER
 GENERATOR CORE" <linux-crypto@vger.kernel.org>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>,  linux-power@fi.rohmeurope.com,
 linux-gpio@vger.kernel.org, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 nouveau@lists.freedesktop.org, virtualization@lists.linux-foundation.org, 
 spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org, 
 linux-amlogic@lists.infradead.org,
 industrypack-devel@lists.sourceforge.net,  linux-media@vger.kernel.org,
 MPT-FusionLinux.pdl@broadcom.com,  linux-scsi@vger.kernel.org,
 linux-mtd@lists.infradead.org,  linux-can@vger.kernel.org, Network
 Development <netdev@vger.kernel.org>,  intel-wired-lan@lists.osuosl.org,
 ath10k@lists.infradead.org, linux-wireless
 <linux-wireless@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
  linux-nfc@lists.01.org, linux-nvdimm <linux-nvdimm@lists.01.org>, 
 linux-pci@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 platform-driver-x86@vger.kernel.org, patches@opensource.cirrus.com, 
 storagedev@microchip.com, devel@driverdev.osuosl.org, 
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org, 
 usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org, 
 ocfs2-devel@oss.oracle.com, bpf <bpf@vger.kernel.org>, 
 linux-integrity@vger.kernel.org, linux-security-module@vger.kernel.org, 
 keyrings@vger.kernel.org, alsa-devel@alsa-project.org, clang-built-linux
 <clang-built-linux@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>,
  George Burgess <gbiv@google.com>
Date: Tue, 20 Oct 2020 11:42:42 -0700
In-Reply-To: <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
References: <20201017160928.12698-1-trix@redhat.com>
	 <20201018054332.GB593954@kroah.com>
	 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.224 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Mon, 2020-10-19 at 12:42 -0700, Nick Desaulniers wrote:
> On Sat, Oct 17, 2020 at 10:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > > From: Tom Rix <trix@redhat.com>
> > > 
> > > This is a upcoming change to clean up a new warning treewide.
> > > I am wondering if the change could be one mega patch (see below) or
> > > normal patch per file about 100 patches or somewhere half way by collecting
> > > early acks.
> > 
> > Please break it up into one-patch-per-subsystem, like normal, and get it
> > merged that way.
> > 
> > Sending us a patch, without even a diffstat to review, isn't going to
> > get you very far...
> 
> Tom,
> If you're able to automate this cleanup, I suggest checking in a
> script that can be run on a directory.  Then for each subsystem you
> can say in your commit "I ran scripts/fix_whatever.py on this subdir."
>  Then others can help you drive the tree wide cleanup.  Then we can
> enable -Wunreachable-code-break either by default, or W=2 right now
> might be a good idea.
> 
> Ah, George (gbiv@, cc'ed), did an analysis recently of
> `-Wunreachable-code-loop-increment`, `-Wunreachable-code-break`, and
> `-Wunreachable-code-return` for Android userspace.  From the review:
> ```
> Spoilers: of these, it seems useful to turn on
> -Wunreachable-code-loop-increment and -Wunreachable-code-return by
> default for Android
> ...
> While these conventions about always having break arguably became
> obsolete when we enabled -Wfallthrough, my sample turned up zero
> potential bugs caught by this warning, and we'd need to put a lot of
> effort into getting a clean tree. So this warning doesn't seem to be
> worth it.
> ```
> Looks like there's an order of magnitude of `-Wunreachable-code-break`
> than the other two.
> 
> We probably should add all 3 to W=2 builds (wrapped in cc-option).
> I've filed https://github.com/ClangBuiltLinux/linux/issues/1180 to
> follow up on.

I suggest using W=1 as people that are doing cleanups
generally use that and not W=123 or any other style.

Every other use of W= is still quite noisy and these
code warnings are relatively trivially to fix up.


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/3bc5c2e3b3edc22a4d167ec807ecdaaf8dcda76d.camel%40perches.com.
