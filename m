Return-Path: <usb-storage+bncBCS6NPVSS4JBBQWD6XVAKGQENZO2OCA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 055D797E8C
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 17:22:44 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id m198sf2435190qke.22
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 08:22:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566400963; cv=pass;
        d=google.com; s=arc-20160816;
        b=fRuHQvBpprdvrieg4WG4OXuXD1G1EXGI2i2LLRtYOH/ZaMYZvCBGizRo1+u+GEDeET
         fRsQ9fZVUuIRNY4IXKlMJ0mjARQ/8hJQvVc2upvtabSgzWcn16Hu9YOSgUq2zVOWTSky
         vHQJ6bZN9QPD6UU/+4fa867F2RHdxN1245Sp2G92RpjEUNyvC85UdX130ZLAeoZCeUTi
         t7gac7dC7tOOmuzSittRHEVAqV4WV22iC/XJJ10nVY2snX+kDHell/3XIlhPInXDKINN
         /qOkCv44J0eCeOCI3MBMxrLEcK9OgsuYJugzwfIMtZr5UGu4u8sWyYoi6Ya3RiwmlGdU
         nObA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=J2wy7g6oCnWG11PQ7tq8FffzLn5y0+xzMPyDOI49Eiw=;
        b=NSPFHTzoTPkUqrOmuKvd6bLaUWTiAE8HV1L9A3lOpZacQmY0NVWXUc6JjxlQTVi5lD
         q9a9AeQxlfUnWBAHqZVQHaEB/++iOnIWkdDZZBvK/bI5LFqL1nEj7JME6Ctb0RQ9Mzb7
         5AWN9ppeyN4VxPx/+R3LWe15ejNfnumTgtoK6jpox6J1YNrAOGERVTS0huWI8FqSfapa
         YNd8LPaorgWNtu7kF3zyc/KGaqclwtnYPlcWH4FzstsQn2nbQm6enYIQbpibfNlYvpnv
         NTjvg9sZgqUbYV+NfeXmTqCbF+NjBYqZzIG2AbsBEOGhOukQHv3x+EZTNExr4sKDUYxZ
         T3Fw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b="c1PME/SJ";
       dkim=temperror (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=u8QzXJ4j;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J2wy7g6oCnWG11PQ7tq8FffzLn5y0+xzMPyDOI49Eiw=;
        b=GaH4Z9DQEBP5gUtf8ZVHLrxArMgEs08Gjm/NnGJQGGsyqcPfcN45uLf+QWsvaQnshV
         y6Eqi0bgpmW5k+yuMY2tc+D/Le+Vnx+8lm+a8GotwWfWpzmzMcsQcRJEA0P+WL4K4BAA
         wgh0ekx7IspxmHAGS3A/zc0Mo+sijMTSSqXY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J2wy7g6oCnWG11PQ7tq8FffzLn5y0+xzMPyDOI49Eiw=;
        b=kp/n3cKQoFV3r6+uHaMVn00aJZF6hfhER4OXMSS97P5EkGwG/AmlX6vbXJyA4M3gJ6
         e7CkKuD6QHIMaxS1+KG8eU4bgwlO4d24UDq4RzbPEiPLVktbmGdwty3c9FbjX8wAI9BY
         uKl5ymxf9SA46jOoqNYCpCGaamOX8hRGemO89BqltC985Xe3NP64xlzdKlRrpO8d0xlS
         KMSaeCfazL3pJr1pq512pAb8S8UMxfkD9gOeF3AC6Wm4b+3QHhksXydyfpAZtaWMB/82
         +q9bOzj+UzRBAQaAaxgHxq+ICUWbAZx+IBX7unxcVb53p+CZ12GCB+nQEOSjTXRUKFN8
         uzaA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWXqN9s5LMyqUDnPww+Efj7gzEYwgqb9LBRcAf092R97x7lzE4o
	NGOzvSZMyUcnQygqlfQ+Q8tPGw==
X-Google-Smtp-Source: APXvYqwpTK3H/4Rne52Amf3bj/QD+XRPhQlkzSTB4Z+AfY/2h/F9gVVi/TGuefqxBjvYv317jpS2Pg==
X-Received: by 2002:ac8:450e:: with SMTP id q14mr31833595qtn.132.1566400963038;
        Wed, 21 Aug 2019 08:22:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ae9:ee15:: with SMTP id i21ls662272qkg.14.gmail; Wed, 21 Aug
 2019 08:22:42 -0700 (PDT)
X-Received: by 2002:ae9:ef06:: with SMTP id d6mr31414271qkg.157.1566400962858;
        Wed, 21 Aug 2019 08:22:42 -0700 (PDT)
Received: by 2002:a37:c08:0:0:0:0:0 with SMTP id 8msqkm;
        Wed, 21 Aug 2019 06:05:23 -0700 (PDT)
X-Received: by 2002:a05:620a:110f:: with SMTP id o15mr32802168qkk.202.1566392723439;
        Wed, 21 Aug 2019 06:05:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566392723; cv=none;
        d=google.com; s=arc-20160816;
        b=e3SDiJLP3rQPEa+69sdpZg4J6uImbMqQK2zZo2NxfD8Z5NPd6f1qTUdB3lgO8rzM16
         PaHSThqWeRwSQzrHUPxj/ZD/CnH7LGJMr7svHNwQTv0TkuDeBeZwunG/0WLHFUaov/uS
         Qd14t9i7OarqnRmJfKLsG29ys0FvyZn3h/SMgzXpmI7Bg+gDAnR65jWHVCvzE7d/wyZn
         7NAMx4BwGt02g0nPodj6jY+urtKsnQ1QY3gg/IZQhG2vm34LlSwdXYLkL4IwjyBKCyPx
         8UaajLLT/sDb83A26Nri0V2d0BMorsGWmrkuR98emXaPKhPniphX7lr8YU6Y56IPcQK5
         DBCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature:dkim-signature;
        bh=dXojAtTgxpESBA3ErFCCoxw4KAvRVqaUgPSGJjjIcY0=;
        b=Ph2LRqGKT704JB+kv7Ho6XAkjtujhc9/MRM70p9zftE4fQ/QcYq8NeIUBrVi8Ic/A6
         xnSTk6L9HX1PDnNl56jiP/j76hh+QMQ757GJVuHV4l+wRY7UTqt34wJRqBFNMTRhDTAI
         gmSdajQ5bHxlsKvswRJQN7CqKKzcAZNhXVWBkQzL9194ePxMo2jVShvcZVy4e3Mww4jF
         C70sobaqyD/cX0UBY9kaB4xJCZmr8xDdyvH6j69RyWOG+GrKKtMTfUb85AUfj1UbuQVJ
         JeqJIlBr/hem2eKyNjrxrm4ZVX+XHByP2i0pCqfOHqUvF8k10kw91YyF/YxIrA5frhnc
         EA4A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b="c1PME/SJ";
       dkim=temperror (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=u8QzXJ4j;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-sasl-trial2.pobox.com (pb-sasl-trial2.pobox.com. [64.147.108.86])
        by mx.google.com with ESMTPS id b28si13985551qvb.85.2019.08.21.06.05.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 06:05:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) client-ip=64.147.108.86;
Received: from pb-sasl-trial2.pobox.com (localhost.local [127.0.0.1])
	by pb-sasl-trial2.pobox.com (Postfix) with ESMTP id 61EBA1840C;
	Wed, 21 Aug 2019 09:05:22 -0400 (EDT)
Received: from pb-smtp1.nyi.icgroup.com (pb-smtp1.pobox.com [10.90.30.53])
	by pb-sasl-trial2.pobox.com (Postfix) with ESMTP id 3E97C1840B;
	Wed, 21 Aug 2019 09:05:22 -0400 (EDT)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 0BFFA157B47;
	Wed, 21 Aug 2019 08:46:49 -0400 (EDT)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 0CE5A2DA023B;
	Wed, 21 Aug 2019 08:46:48 -0400 (EDT)
Date: Wed, 21 Aug 2019 08:46:47 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Matthias Maennich <maennich@google.com>
cc: linux-kernel@vger.kernel.org, kernel-team@android.com, 
    Arnd Bergmann <arnd@arndb.de>, geert@linux-m68k.org, 
    gregkh@linuxfoundation.org, hpa@zytor.com, jeyu@kernel.org, 
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
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
Message-ID: <nycvar.YSQ.7.76.1908210840490.19480@knanqh.ubzr>
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: BDE512AC-C411-11E9-A63C-46F8B7964D18-78420484!pb-smtp1.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b="c1PME/SJ";       dkim=temperror
 (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp
 header.b=u8QzXJ4j;       spf=pass (google.com: domain of nico@fluxnic.net
 designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Wed, 21 Aug 2019, Matthias Maennich wrote:

> As of Linux 5.3-rc5, there are 31205 [1] exported symbols in the kernel.
> That is a growth of roughly 1000 symbols since 4.17 (30206 [2]).  There
> seems to be some consensus amongst kernel devs that the export surface
> is too large, and hard to reason about.

This is good work.

One solution for drastically reducing the effective export surface is to 
have CONFIG_TRIM_UNUSED_KSYMS=y. This is more extreme than symbol 
namespace, but might be worth mentioning nevertheless.


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/nycvar.YSQ.7.76.1908210840490.19480%40knanqh.ubzr.
