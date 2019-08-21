Return-Path: <usb-storage+bncBCS6NPVSS4JBBDO463VAKGQEPNSI7TI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7B5985E1
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 22:48:15 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id c79sf3499574qkg.13
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:48:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566420494; cv=pass;
        d=google.com; s=arc-20160816;
        b=th9A3VBVtyNZPE5oyEGE7KahWI+rxgS0CB3jfpyfJvoN7ixZNKChwLy6jDcGI7CSXu
         j77v9k1bT67t+fGoAOl+hVOA/Yrbd99r4+v/P2n/5xBdRnMauXO3UwNf9SFOOpUJ2Lyj
         X6iKTOcRsuaRQEKyKptbCRKA1+B1sY5xErlcd1OdLmSTSxONuaNd1LbU22rek9KWE5ql
         HPQqeTP3hzgoWS6Wi519IptQJphfrvtklKGhjsdSIIwHs7TWlwAd28QODStxbUsALrL8
         4/dAXiLTzxZ00nkBsUweS9YgYfX3cDGzWTy33YZIYWYX1RqT9+K4plTJ1iRjolY543kl
         F7kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1ST5Ph4rR/vICEmm4fbZ/507YMSPGM8UVLUDZdFMu8k=;
        b=MydWhMps4ton5hj97OpW+A7s0ryZr1A3iLcPBKfl+gqlOOgrld+DEW6Tmwik6kFs/i
         ukFjOlI/mFoJoXFt0TR0E/7FRAxAPSW0V5ku4OHfKE6imSof1gks1wV7aLLyOThcNw3M
         H65dY8nDYKNS4QJbbIbPYjrMwDiEy6hfoJiaAHKmpApYW1VManBvwUY4qR/qHKyPeCVx
         5nsrYIm6I5rQBNaHYELDfdVFsxS81mAPHe6qgcHdCnlzsDCs9r4VcEzx3jpX84P2pyh/
         ozx7BaST98JK2ZpWnmRbCY+EVujiALGP1cgpjaIrAIetpywor1NH2XNUHW98Q9O4Lm8y
         EaIQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=coNCGrqw;
       dkim=temperror (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=Bm6jH5Te;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1ST5Ph4rR/vICEmm4fbZ/507YMSPGM8UVLUDZdFMu8k=;
        b=Vc3uPzEi3HL1Y1xi3XYbT67fpV8AaU0UJOwKaYkdsFl1qAPZWWYpuEozVY9yeTO1Kl
         fmiJUp2EE/rCD4xseDOMEnTr2de41hftrpqlrldQWHnN0+ulrvXPgm9Poh/3AeR37xox
         lFkUWw4Lv4GFh6YnWqH3cHAWARqcuIo3aWDpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ST5Ph4rR/vICEmm4fbZ/507YMSPGM8UVLUDZdFMu8k=;
        b=IC+DBKHB2Pen5gaHtrILTw3GblfS9m2mGBu0kmOKbNZcmxub+oRBzI3lR+0ktuP1Ns
         Zo898+t8PZuHvGJSrLsSM4RSXH43i8IKm0nheESpvWfzm2L/I6hgEdg9pZIfcIa7i3Uj
         ewUeVCg5Bgjq+JqaCSiMF2eEu6qfp/zezr8XOA6WoIq3bcz67qqoimXgq604XAQXpPKL
         6UFbVIDFO3IEd/Fc4r+uEc3Qdz5coD2Pl+W/D1NyXAQ5CasCwkVGxYgUEekuwYKNcLgE
         bMN60YtyFJGKMLOo+uYVNf69Yh73AMmo6DGFNuNv65KeyDYPppzMEsknOLLqr/ZtRJ5D
         yNgQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWcowz/tSzmRWjotb4qkzrHKEGLkgHul4syRLRj4cg8ya05j/EM
	z2h9TJKgCRIOetFkLr+fkDQRZg==
X-Google-Smtp-Source: APXvYqzI+Cmx5/WjZ/NH1HJZQtXnitMQsDHdVUkSbjwqg/Wi8qdXdT98imNIGg1EHeMnOOUiViB/Vw==
X-Received: by 2002:a05:6214:110c:: with SMTP id e12mr18899610qvs.126.1566420494165;
        Wed, 21 Aug 2019 13:48:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:11ae:: with SMTP id u14ls517132qvv.13.gmail; Wed,
 21 Aug 2019 13:48:13 -0700 (PDT)
X-Received: by 2002:a0c:f610:: with SMTP id r16mr19522599qvm.216.1566420493547;
        Wed, 21 Aug 2019 13:48:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566420493; cv=none;
        d=google.com; s=arc-20160816;
        b=GZ6pGwvXKKG8j3QjUsQJB5kIeOJu74cub/wfeIRc/6nJ/en2KWyt/kJyUbiQR/h7qi
         Qy4CxmMmwrinsQ0OEf37oG9tWL1E1SB2lyq+wU6ZCjeyriH6C6hQkJuyaUA0TDc/0WoQ
         CL+8vVzb6Ap7e0pH5RAT3AbO9SXcj/VpBh4p3tlZ+vgC94s9u887AJGz+Nj6n9SazQih
         BDwwY6Ppx/42fbn/qpwvBwNIxUvz5FbHqNjXOeRtXKK651U5oQ1eSGer22SYWo6WLkoW
         VPlc911QqwH7ap6Z9vbnfMIfQiqKzOilrk14aylweJefd3Hxo4SUSPWxFuD6ZZBm9Y8M
         bdOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature:dkim-signature;
        bh=TG7lc4J5rTfm0OOZmUMWNzkn8aNviFW5xS1ZNbiM5/0=;
        b=avSXtvyaxdlfNuuoUaSrr8bjQ0Zy3TGHmg8VDHwhOi/kr+fUNKU89U+VvyHWcqf4xU
         reDYistXJ0fd2AvPA6UKrjffOEbvlFzAYpvSQlzoFLe+h7D0cgmOjGKhCrBXwD1XTgIF
         enk1LIQRG3dSe4zQGC61VUDVtLpJ+DaUPTusrp2Ni59Jx/aGTd9+W8CKHbWKMs/K+Hhc
         yQFtFEMcQ8KYtX11iGQ4QJZx7VrtZyP62FzMoOVlBsy6JQKsvygf53DEsCqStvkBGZoN
         jCllr+Fvj8t2zF6fkcU4MdXGpRJHzGxjWm4/Snk8nvK4FMCTMyGFRjshDSwE8znCMgSl
         6iNg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=coNCGrqw;
       dkim=temperror (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=Bm6jH5Te;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-sasl-trial2.pobox.com (pb-sasl-trial2.pobox.com. [64.147.108.86])
        by mx.google.com with ESMTPS id 3si13540738qvf.8.2019.08.21.13.48.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 13:48:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) client-ip=64.147.108.86;
Received: from pb-sasl-trial2.pobox.com (localhost.local [127.0.0.1])
	by pb-sasl-trial2.pobox.com (Postfix) with ESMTP id 9CC8E19709;
	Wed, 21 Aug 2019 16:48:12 -0400 (EDT)
Received: from pb-smtp1.nyi.icgroup.com (pb-smtp1.pobox.com [10.90.30.53])
	by pb-sasl-trial2.pobox.com (Postfix) with ESMTP id 79D5119708;
	Wed, 21 Aug 2019 16:48:12 -0400 (EDT)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id DB83015BE3C;
	Wed, 21 Aug 2019 16:48:11 -0400 (EDT)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id E8EF12DA023B;
	Wed, 21 Aug 2019 16:48:10 -0400 (EDT)
Date: Wed, 21 Aug 2019 16:48:10 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Greg KH <gregkh@linuxfoundation.org>
cc: Matthias Maennich <maennich@google.com>, linux-kernel@vger.kernel.org, 
    kernel-team@android.com, Arnd Bergmann <arnd@arndb.de>, 
    geert@linux-m68k.org, hpa@zytor.com, jeyu@kernel.org, 
    joel@joelfernandes.org, kstewart@linuxfoundation.org, 
    linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
    linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
    linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
    lucas.de.marchi@gmail.com, maco@android.com, maco@google.com, 
    michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com, 
    pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com, 
    stern@rowland.harvard.edu, tglx@linutronix.de, 
    usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
    yamada.masahiro@socionext.com, Adrian Reber <adrian@lisas.de>, 
    Alexey Gladkov <gladkov.alexey@gmail.com>, 
    Andrew Jeffery <andrew@aj.id.au>, 
    Andrew Morton <akpm@linux-foundation.org>, 
    Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
    bcm-kernel-feedback-list@broadcom.com, 
    Benjamin Fair <benjaminfair@google.com>, cocci@systeme.lip6.fr, 
    Dan Williams <dan.j.williams@intel.com>, 
    David Howells <dhowells@redhat.com>, 
    "David S. Miller" <davem@davemloft.net>, 
    Fabio Estevam <festevam@gmail.com>, 
    Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>, 
    Ingo Molnar <mingo@kernel.org>, Jani Nikula <jani.nikula@intel.com>, 
    Johannes Weiner <hannes@cmpxchg.org>, Julia Lawall <julia.lawall@lip6.fr>, 
    linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
    linux-arm-msm@vger.kernel.org, linux-aspeed@lists.ozlabs.org, 
    linux-hwmon@vger.kernel.org, linux-mediatek@lists.infradead.org, 
    linux-rpi-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
    linux-samsung-soc@vger.kernel.org, 
    linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, 
    linux-watchdog@vger.kernel.org, 
    Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
    Michael Ellerman <mpe@ellerman.id.au>, Nancy Yuen <yuenn@google.com>, 
    Nicolas Ferre <nicolas.ferre@microchip.com>, 
    NXP Linux Team <linux-imx@nxp.com>, openbmc@lists.ozlabs.org, 
    patches@opensource.cirrus.com, Patrick Bellasi <patrick.bellasi@arm.com>, 
    Patrick Venture <venture@google.com>, 
    Pengutronix Kernel Team <kernel@pengutronix.de>, 
    Richard Guy Briggs <rgb@redhat.com>, Tejun Heo <tj@kernel.org>, 
    Toru Komatsu <k0ma@utam0k.jp>, Will Deacon <will@kernel.org>
Subject: [usb-storage] Re: [PATCH v3 00/11] Symbol Namespaces
In-Reply-To: <20190821133737.GB4890@kroah.com>
Message-ID: <nycvar.YSQ.7.76.1908211642050.19480@knanqh.ubzr>
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com> <nycvar.YSQ.7.76.1908210840490.19480@knanqh.ubzr> <20190821133737.GB4890@kroah.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: FD6832B8-C454-11E9-A575-46F8B7964D18-78420484!pb-smtp1.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=coNCGrqw;       dkim=temperror (no
 key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp
 header.b=Bm6jH5Te;       spf=pass (google.com: domain of nico@fluxnic.net
 designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Wed, 21 Aug 2019, Greg KH wrote:

> On Wed, Aug 21, 2019 at 08:46:47AM -0400, Nicolas Pitre wrote:
> 
> > One solution for drastically reducing the effective export surface is to 
> > have CONFIG_TRIM_UNUSED_KSYMS=y. This is more extreme than symbol 
> > namespace, but might be worth mentioning nevertheless.
> 
> Oh that's amazing, I never noticed that feature.  That is a nice thing,
> thanks for pointing it out.

For those interested, this feature was demonstrated with numbers here:

https://lwn.net/Articles/746780/


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/nycvar.YSQ.7.76.1908211642050.19480%40knanqh.ubzr.
