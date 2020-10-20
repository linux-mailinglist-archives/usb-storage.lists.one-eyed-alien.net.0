Return-Path: <usb-storage+bncBC27X66SWQMBB5WYXP6AKGQE3IVGJTY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x646.google.com (mail-ej1-x646.google.com [IPv6:2a00:1450:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id AE80D293DD5
	for <lists+usb-storage@lfdr.de>; Tue, 20 Oct 2020 15:56:07 +0200 (CEST)
Received: by mail-ej1-x646.google.com with SMTP id x22sf855266ejs.17
        for <lists+usb-storage@lfdr.de>; Tue, 20 Oct 2020 06:56:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603202167; cv=pass;
        d=google.com; s=arc-20160816;
        b=hAdb+c76LqdHMTctuUjJASVcvNcsj4mhSCwAKcw9NvSN4R9YVMB3YKMeWbtICGlr8v
         EgcKM5xHJZlfDTEjIm9vbRBfMc3ae4Cul4te3Y6WYNzQse2+UHQmcCTruCf3PAjopyow
         Dw7kKoRlfIk6A/bki6Sl/CKHLSbpdN5x6qNptW9VFJUfvpryKS10uRAJuBytNb0VPop7
         O3VFjbRwAwp3vTtftJwPiLduQRNl4c3IufxrUxhIf12Y7agDU3lRKNSI+J5EvXOtRs5c
         Q459J2K1+vGBPkdVzmSOA5uc+sJkIYmm3fOo1SmyFiDsmRwtlgxjK5QxOcG9bj0+OoTO
         VJ+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=17K+ihR4wg4bbFClrrNeJ74OhUpUULNYYR5OId5lvZU=;
        b=jxBC/2cc4psbHYdjvu4tC6tHwO23sgZ+yeiC883WQ7SsxghwsYj1IWRdtoaWhciuKG
         4Gyz6IETi3vxT+pBuI7yd3CwE8gz9zWGfazNCHEO/MYIzi+4ky7YqRl/MxcsNJEtpCDe
         JGWRG/X60OmhUXMLRD3jyT4FLDcPDCLXKeMH8BrELhvfz4FsWguJpOsL06YAefP9MGv1
         MLdgmitA4tAl5hi1BWOHILlN/7GAEpfN0eWO8/cAvNPVzDil2w4U0TXC1wwPUwJao/Jw
         18v62/Sm5nVccuB8nHnu6jhIJ9r3b8y12Edt1GUesQ2KJe3PT6v+SfLfsyd0u5jLHlsM
         vJyg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ckht+6t3;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=17K+ihR4wg4bbFClrrNeJ74OhUpUULNYYR5OId5lvZU=;
        b=Wy7XGXkTr8U6fPh6ZJlJagjqXu8xDikF9EQOjaJ3qV/SRJdK1JxkxLei6EsGZWMDX/
         g31+V/sFZuYTMm3wBymgLfr/00M2QrYctoN8PghmvAOrLVghSOWyfGLPKnEv21e4xqo6
         v3InVzg/EwkLsMk//uI3Qw/UAXAtBoKsHiav4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=17K+ihR4wg4bbFClrrNeJ74OhUpUULNYYR5OId5lvZU=;
        b=XRfyMvYsjpDzXVY757Rl2yGxV3Ghh2jQ5LBcsPyQNqiYv0g6K4aYVJlL+TAZryhifC
         fOBhZS0aGqGDAw4xXWW7DkWRCMnJ9TI+KXfY0kE6ilLE2garNE8v7C2ThstNvqlPlaf+
         ccJU5Ih7LvenOkeuk9giVV7i3npQNjk3WZpgaYg20fiohWPDTNLKj4Rpi6IcTS+RZQZv
         yKjL81puZSu+kHSjmTsRZsLHr6IB0s+ANBChHnJNLybAXbd/wWFBaTP1ivH/BM6vYG+z
         oWxDXGaJHbgKRxBfCaG1ilqwFqDWgHU9qszoKXOWiperGOn+qpoFSVg9e7U44QRzRwhp
         jCTA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531p3m5ARHxh4B4tAhL50KlfA6i1NhobSjfBvfjfoF+AH0BQ0PFU
	np3nnWB3JZD/9KVLE0p5GJqAcg==
X-Google-Smtp-Source: ABdhPJxeiCAaTnxVs8CsqWlM/QmSnmsetdlXEeGFqnCETqVE6GjiTGJD4fq53yeVUP+Qqun3CDwk6Q==
X-Received: by 2002:a50:9fa8:: with SMTP id c37mr2876111edf.233.1603202167049;
        Tue, 20 Oct 2020 06:56:07 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:370b:: with SMTP id d11ls954945ejc.9.gmail; Tue, 20
 Oct 2020 06:56:06 -0700 (PDT)
X-Received: by 2002:a17:906:fa84:: with SMTP id lt4mr3297839ejb.61.1603202165957;
        Tue, 20 Oct 2020 06:56:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603202165; cv=none;
        d=google.com; s=arc-20160816;
        b=CeSDTyx3XJmZcSEHlvF13k4vuiUPgAsn9bpNB1iSIPky15aXb3yenFT9mb56RVDTOn
         fMuf/aAB6855MqFCnfalzmeA/MJiEiMMiT6AEZSwKpzFybKrS/C1dX29uuNeyTVTG6Ju
         JaoZd0mHNIRAjmbUehF02S4nwthZIPc8TVxJk9YsqM1rEeTfMxBc1BxGJsq4kxjd0vK2
         N1Sbnn+/zU40dAMtRPhORX2oI24nDG8citn+QCxuwF66bng9+T5SU1adG02Iv7jor84y
         86mXp2J4BnRSJShh8qND3j/En/cbnx2dxmmIjaPhcXC3vuQmJUv6kWt1G+qyfP1XplQH
         +2NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=HyQ28xr5/lapv6azTtFCvHFT5XQ1+OzeHk+84iEm66Y=;
        b=UkOcOPARJPobvN2iUUI4dxNjAdCY6Wf+87jt/dHJ9mFPfAiDLE9aLS64vLvCp6Goov
         ZJQMsDxBi7Tr0qghWG0Tm0UYW5mrR1CVHgPhePccQg2mABT9svoCvIcup1FxMKbYeH9A
         5ykvbNU/bt35nUHbJ664RqPsQxcpLm7rlg3/n9S51D/waQ/Kxj3tsjSlVftNK5EbqabL
         hDhBikN2iB6p7TrHM5DDYHJ4bm+UKaifv4qiDVKEvLj+xPenCZcFTBFyvwqttN9lFfJx
         i714rFlSy9RPHVHpja4r8OWkFejV713h/t6rqJZYP9qsl9MJB5C+7jEE7zoeMcEzl081
         X/GQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ckht+6t3;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by mx.google.com with ESMTPS id n13si1279370eji.447.2020.10.20.06.56.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 06:56:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-Gfhi1-KqPAiJNiGZKY6aVA-1; Tue, 20 Oct 2020 09:56:01 -0400
X-MC-Unique: Gfhi1-KqPAiJNiGZKY6aVA-1
Received: by mail-qk1-f199.google.com with SMTP id w189so1804752qkd.6
        for <usb-storage@lists.one-eyed-alien.net>; Tue, 20 Oct 2020 06:56:01 -0700 (PDT)
X-Received: by 2002:a05:6214:174f:: with SMTP id dc15mr3370434qvb.25.1603202160688;
        Tue, 20 Oct 2020 06:56:00 -0700 (PDT)
X-Received: by 2002:a05:6214:174f:: with SMTP id dc15mr3370377qvb.25.1603202160139;
        Tue, 20 Oct 2020 06:56:00 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id b8sm775938qkn.133.2020.10.20.06.55.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 06:55:59 -0700 (PDT)
Subject: [usb-storage] Re: [RFC] treewide: cleanup unreachable breaks
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-edac@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-power@fi.rohmeurope.com, linux-gpio@vger.kernel.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, industrypack-devel@lists.sourceforge.net,
 linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
 linux-scsi@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-can@vger.kernel.org, Network Development <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org,
 linux-wireless <linux-wireless@vger.kernel.org>,
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
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Greg KH <gregkh@linuxfoundation.org>, George Burgess <gbiv@google.com>,
 Joe Perches <joe@perches.com>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018054332.GB593954@kroah.com>
 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <ca1f50d6-1005-8e3d-8d5c-98c82a704338@redhat.com>
Date: Tue, 20 Oct 2020 06:55:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ckht+6t3;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 10/19/20 12:42 PM, Nick Desaulniers wrote:
> On Sat, Oct 17, 2020 at 10:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
>>> From: Tom Rix <trix@redhat.com>
>>>
>>> This is a upcoming change to clean up a new warning treewide.
>>> I am wondering if the change could be one mega patch (see below) or
>>> normal patch per file about 100 patches or somewhere half way by collecting
>>> early acks.
>> Please break it up into one-patch-per-subsystem, like normal, and get it
>> merged that way.
>>
>> Sending us a patch, without even a diffstat to review, isn't going to
>> get you very far...
> Tom,
> If you're able to automate this cleanup, I suggest checking in a
> script that can be run on a directory.  Then for each subsystem you
> can say in your commit "I ran scripts/fix_whatever.py on this subdir."
>  Then others can help you drive the tree wide cleanup.  Then we can
> enable -Wunreachable-code-break either by default, or W=2 right now
> might be a good idea.

I should have waited for Joe Perches's fixer addition to checkpatch :)

The easy fixes I did only cover about 1/2 of the problems.

Remaining are mostly nested switches, which from a complexity standpoint is bad.

>
> Ah, George (gbiv@, cc'ed), did an analysis recently of
> `-Wunreachable-code-loop-increment`, `-Wunreachable-code-break`, and
> `-Wunreachable-code-return` for Android userspace.  From the review:
> ```
> Spoilers: of these, it seems useful to turn on
> -Wunreachable-code-loop-increment and -Wunreachable-code-return by
> default for Android

In my simple add-a-cflag bot, i see there are about 250

issues for -Wunreachable-code-return.

I'll see about doing this one next.

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

Yes, i think think these should be added.

Tom

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ca1f50d6-1005-8e3d-8d5c-98c82a704338%40redhat.com.
