Return-Path: <usb-storage+bncBDD5ZFHSSQARBLFWUP4AKGQEIFX2FXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A0C21BF1E
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jul 2020 23:18:37 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id b8sf7270347wro.19
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jul 2020 14:18:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594415917; cv=pass;
        d=google.com; s=arc-20160816;
        b=spIAWbBBg5ml+iXhc5AeFth33oqRpaXTILJoqoNvBOC+DawHQUJWCFYLBsRTM4BogV
         RXHFYAoFJMeVWPxEU/4+WBj9lCI0fDujDZ+lL6PK2FelAKy0an16dfync6z70JnnxTsQ
         f0gI+mx6YzraJVZdNppz/74apo8NGglwr2usVFPCBuQM5oy2grNYkng/hcM4upXwGH/B
         rLx0UKvQX3kaWmNIWkIKo8+WpGiL6AoN7mD+6nGQ9e01OtQp4EkiJ+rjBVQtualWOfSn
         enOM7NAKxD4M3ACXP3mQCzGuprc994+YeV6qlxz7aKzfa4zV1memkUuGYz8xcgeZNb2H
         2DPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=Qu/95RNrReofYnbsQmkqJu0kfRt2IYQaEYoYuBcDb38=;
        b=dckUu4Kxb4yOzyQLrhswzdH/mrHicAh1BcBFhKL+WkTODTO/OmBZ1EvGYS0j+vUSlN
         5zQBbj37rerd9gc8KKxNtIaMVCPxidH2f79ZX0DrmNX2LN1LPdooQgmWu7RFRTbcP413
         OU4k8MdxtEjo+UQsO9JJE6QUgbgYSeeTNVtPcTTg+bl0dm6WIp1DrYgk6j77f2HFZBZD
         bzLU5F0E267itldNyRcT9oCx88dBi5BE4WgNpfEspyzGnCxaqu+8J3Px2xlEB7Czel28
         MpUg8AVdgBeOHZrJjFSasvKqnyp3prOMlxO4djGq3UhoJ1g82fmnnCYOXYAaJZ/Mep7U
         DWQw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qu/95RNrReofYnbsQmkqJu0kfRt2IYQaEYoYuBcDb38=;
        b=CVaMW1JbDaMcAOoNg2K9FSdNbEsXvUX02VcJQmg7C/YJkGSl77W4WTbMmFAjL/ofGp
         lU42hAPsHzCsC1dUGVGwNDp8IRWkZLbn1Yvf/VndvUlqOdhXvSq4AuixNivyr4I9C77n
         RyNY6oARPvnZwi7LrPQh9+82Rpp2sxM5o9TKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qu/95RNrReofYnbsQmkqJu0kfRt2IYQaEYoYuBcDb38=;
        b=oOOO/wor/QQZFofgB+ivDIoswodi79WV1vaJy8oOcdKqnF2FqaidkPRvkUQCOwtVEG
         MHhtE0OvT0EPyzXPSBfCNdDRfAVpDhvbHjYV8+bxoRxVI3WjtCHURr7TLRKji/BXivsR
         gdgXkCLpGwaMJK2xU8K/m4bHSbd3BSWpCUlaSwXN1zlFE9fxbNsVsZ4IN1AouvIooOUH
         /PUt68Um705+bm7x2sRMzHBXiaHBtIzqxyMqzJJKLEbCJtcFWVAWxu3bhr/W6UOn1PSp
         +ZyvSe+rQz8BpNTvwK8VyRDK6GPdwoarmAExbyhUdvCkYA9aIOsWmuiciE3y8lHl5xqk
         Yr1A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530sdRKG7NNoAd2+610sZZhEjXS8Ax8Ep8ye1HawYuYEbIUd+i17
	7tPwfRFwCa4vkgQp9KFZQig1qg==
X-Google-Smtp-Source: ABdhPJyFlKTVaSZEeF5Sav9N79/SdsS5n4ZNRlfRisb7st7saZdFLocvpvZBLcnePALZWecj/eueXA==
X-Received: by 2002:a5d:63ce:: with SMTP id c14mr74494700wrw.254.1594415917048;
        Fri, 10 Jul 2020 14:18:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:9c95:: with SMTP id f143ls5252496wme.3.gmail; Fri, 10
 Jul 2020 14:18:36 -0700 (PDT)
X-Received: by 2002:a1c:1b0d:: with SMTP id b13mr6630701wmb.169.1594415916405;
        Fri, 10 Jul 2020 14:18:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594415916; cv=none;
        d=google.com; s=arc-20160816;
        b=z1oowD4dIknfnBKr0xTxcu47NCrPMZCv48X54z7jUMl6BuZGToa+lsxMwgDS1llfDZ
         hkMmKp3QwJx/aCFj3SywAMPRnwq0w6UgfBRwUVG9pgvAZtYv7DTgtRXc7JiYR2vd5nHe
         8JPwKQcX3zpr2DwB56eX6TpBzWkmakA5+5ZUI1r+IAXifa/uldDjvPJiupBKkhCAhaww
         K/Z3zdJhtnZHr72VkylB93M1Z2bl28Uhmv9lhZ5vDUc+2035nvohRWbLtrjel86Q6z5l
         6/kUg697eNxK2wx2ZKCjJ2iajYV6BcligIKbMmyyvGbfKhQLwJ9XVBZ25RWiB84qROeF
         9x3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject;
        bh=RahlMEZz/z7vFsZUeb9iMC7EyE4uCLPhf9qkKkp9kOw=;
        b=id/Ng3v/mkhakQBhw8iT0NBT6kHDV5iDtG/7ij9T9hBwOVpFeQlFp7UFmt3v/ESKvN
         w0DSZK7oHXhMJBCqR5CywDG1Iv/aCPeMRZ+rEqulETUX1uDgYYruksv2aUiZnPRYKFuN
         EvaOCtGgvDGTaQVDwYrhYiJzMsE0EtSF/0g7Ft7KUpGvwoM5dNGZddtz4c+Vpjrnln6B
         nYBtPtCq+QQRils6h1LLAscIwnl1OlciUzWR7xrlt/L2fR9RaXQEqfUeXSCZoV78YoOE
         IxpaHOUiKzfbT2Ngm1b8mqPPANGd8tEYEewEm4VJgis9fnHqq899DFRiZPZnW4Tl3nyH
         +mGw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [78.46.175.9])
        by mx.google.com with ESMTPS id q17si5435505wrw.11.2020.07.10.14.18.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 14:18:36 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) client-ip=78.46.175.9;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id B093EBC070;
	Fri, 10 Jul 2020 21:18:33 +0000 (UTC)
Subject: [usb-storage] Re: [PATCH] Replace HTTP links with HTTPS ones: USB
 MASS STORAGE DRIVER
To: Stafford Horne <shorne@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, stern@rowland.harvard.edu,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 David Miller <davem@davemloft.net>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20200708095500.13694-1-grandmaster@al2klimov.de>
 <20200708103928.GC585606@kroah.com>
 <6b78a3fd-04b9-fc8e-b5c6-f03372a4cd31@al2klimov.de>
 <20200709061409.GA130260@kroah.com>
 <20200710103621.GA437393@lianli.shorne-pla.net>
 <53342e1a-8430-2557-94c7-1da979a79e68@al2klimov.de>
 <20200710205530.GC437393@lianli.shorne-pla.net>
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <893675cd-e909-6520-1201-873168e04d7d@al2klimov.de>
Date: Fri, 10 Jul 2020 23:18:32 +0200
MIME-Version: 1.0
In-Reply-To: <20200710205530.GC437393@lianli.shorne-pla.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of grandmaster@al2klimov.de designates
 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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



Am 10.07.20 um 22:55 schrieb Stafford Horne:
> On Fri, Jul 10, 2020 at 09:36:03PM +0200, Alexander A. Klimov wrote:
>>
>>
>> Am 10.07.20 um 12:36 schrieb Stafford Horne:
>>> On Thu, Jul 09, 2020 at 08:14:09AM +0200, Greg KH wrote:
>>>> On Wed, Jul 08, 2020 at 08:41:54PM +0200, Alexander A. Klimov wrote:
>>>>>
>>>>>
>>>>> Am 08.07.20 um 12:39 schrieb Greg KH:
>>>>>> On Wed, Jul 08, 2020 at 11:55:00AM +0200, Alexander A. Klimov wrote:
>>>>>>> Rationale:
>>>>>>> Reduces attack surface on kernel devs opening the links for MITM
>>>>>>> as HTTPS traffic is much harder to manipulate.
>>>>>>>
>>>>>>> Deterministic algorithm:
>>>>>>> For each file:
>>>>>>>      If not .svg:
>>>>>>>        For each line:
>>>>>>>          If doesn't contain `\bxmlns\b`:
>>>>>>>            For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>>>>>>> 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>>>>>>>                If both the HTTP and HTTPS versions
>>>>>>>                return 200 OK and serve the same content:
>>>>>>>                  Replace HTTP with HTTPS.
>>>>>>>
>>>>>>> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
>>>>>>
>>>>>> Your subject lines are very odd compared to all patches for this
>>>>>> subsystem, as well as all other kernel subsystems.  Any reason you a=
re
>>>>>> doing it this way and not the normal and standard method of:
>>>>>> 	USB: storage: replace http links with https
>>>>>>
>>>>>> That would look more uniform as well as not shout at anyone.
>>>
>>> I would agree.  The OpenRISC patch for this series says:
>>>     "OPENRISC ARCHITECTURE:..."
>>>
>>> Here it would just be "openrisc:..." I think fixing the whole series is=
 needed.
>>> Greg is not the only on complaining.
>>>
>>> Ideally, I think, it would be good to have this sent out as a series i.=
e [PATCH 3/55]
>>> rather than individual patches so this could be discussed as a whole.
>> 1) To who? As right now? As right now plus Torvalds, KH, Miller, etc.?
>>     As right now, but all-to-all?
>=20
> Make sure you have a cover letter explaining what you expect.
>=20
> You can ask maintainers to pick up individual patches by mentioning that =
in the
> cover letter.
>=20
> You can use `git send-email --cc-cmd` so each patch goes only to the
> maintainers, for example:
>=20
>    send-email --to linux-kernel@vger.kernel.org --cc-cmd scripts/get_main=
tainers.pl`
>=20
>> 2) Apropos "series" and "as whole"... I stumbled over
>=20
> I stumble over "apropos". :)
>=20
>>     `git log --oneline |grep -Fwe treewide`
>>     and am wondering:
>>     *Shouldn't all of these patches even begin with "treewide: "?*
>>     E.g.: "treewide: Replace HTTP links with HTTPS ones: GCC PLUGINS"
>=20
> As Greg said that is not what patch subjects loo like.
>=20
>    - GCC PLUGINS: is not correct, remove it.
>    - treewide: may work, but as you want individual maintainers to pick u=
p the patches put
>      a subsystem in the subject as maintainers like.
No, I don't "want" to have this or that particular recipient.
I'd just like to get my changes in master.

You say like if I send to individual maintainers, I have to take their=20
subject likes. OK...

But if I use "treewide:" =E2=80=93 who do I send to (if not to individual=
=20
maintainers per patch)?

>    - The rest of the text should be lowercase "replace http links with ht=
tps"
>=20
> Have a look at other patch subject lines based on the file you are editin=
g.  For example:
>=20
>    $ git log --oneline -- Documentation/kbuild/gcc-plugins.rst
>    2020-03-10 2b4cbd5c9505 Jonathan Corbet  docs: move gcc-plugins to the=
 kbuild manual
>=20
>    $ git log --oneline -- scripts/Makefile.gcc-plugins
>    2019-03-04 81a56f6dcd20 Kees Cook        gcc-plugins: structleak: Gene=
ralize to all variable types
>    2018-12-29 668c35f69cc7 Linus Torvalds   Merge tag 'kbuild-v4.21' of g=
it://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild
>    2018-12-12 189af4657186 Ard Biesheuvel   ARM: smp: add support for per=
-task stack canaries
>    2018-12-01 ce2fd53a10c7 Masahiro Yamada  kbuild: descend into scripts/=
gcc-plugins/ via scripts/Makefile
>    2018-09-04 10e9ae9fabaf Alexander Popov  gcc-plugins: Add STACKLEAK pl=
ugin for tracking the kernel stack
>    2018-07-24 7ccb95e8fe91 Kees Cook        gcc-plugins: Regularize Makef=
ile.gcc-plugins
>    2018-07-02 c17d6179ad5a Masahiro Yamada  gcc-plugins: remove unused GC=
C_PLUGIN_SUBDIR
>    2018-06-11 59f53855babf Masahiro Yamada  gcc-plugins: test plugin supp=
ort in Kconfig and clean up Makefile
>    2018-06-11 8034c2fb1225 Masahiro Yamada  gcc-plugins: move GCC version=
 check for PowerPC to Kconfig
>    2018-06-11 5aadfdeb8de0 Masahiro Yamada  kcov: test compiler capabilit=
y in Kconfig and correct dependency
>=20
>=20
> So you will have:
>=20
>    docs: replace http links with https
>    gcc-plugins: replace http links with https
>=20
> -Stafford
>=20
>>>
>>> -Stafford
>>>
>>>>>> thanks,
>>>>>>
>>>>>> greg k-h
>>>>>>
>>>>> Hi,
>>>>>
>>>>> I'm very sorry.
>>>>>
>>>>> As Torvalds has merged 93431e0607e5 and many of you devs (including b=
ig
>>>>> maintainers like David Miller) just applied this stuff, I assumed tha=
t's OK.
>>>>>
>>>>> And now I've rolled out tens of patches via shell loop... *sigh*
>>>>>
>>>>> As this is the third (I think) change request like this, I assume thi=
s rule
>>>>> applies to all subsystems =E2=80=93 right?
>>>>
>>>> Yes, you should try to emulate what the subsystem does, look at other
>>>> patches for the same files, but the format I suggested is almost alway=
s
>>>> the correct one.  If not, I'm sure maintainers will be glad to tell yo=
u
>>>> otherwise :)
>>>
>>>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/893675cd-e909-6520-1201-873168e04d7d=
%40al2klimov.de.
