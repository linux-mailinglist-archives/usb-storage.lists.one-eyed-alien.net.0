Return-Path: <usb-storage+bncBDMYPB44VAFRBIXC6XVAKGQES34XA2A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7F19800C
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 18:28:18 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id o5sf1451667wrg.15
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 09:28:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566404898; cv=pass;
        d=google.com; s=arc-20160816;
        b=zoNIqEBB8KAf9iWWyBlbCE/FwVE6zCNBX5c0JD2A/cGbN4WA+7wbnKUcuEUVTWSHx0
         1hnCzo9mFwtjAj7JtA7X1zqi0g+8P+eIKtO9tZZuSVy0+9xAjn/QWozwqW921gTha0m1
         ErH/jJI5wIcSgtumLgvAIgNVLIoq2/UCqN8A7WwKpgaqlsUiUFXjv46zX47lnr8vMw/f
         yA4dw0roBZtqsMZOBDq1AgMXTKbgGVbzvFWNC4Rb8u2iG3cGdTlxdVWCY48uQmNe+yst
         QZNADXvSjWVqiomYpr4vv6YGW3bFWLg+ExDYy3T8DgF+UxKfUTSSSUqTWrE8qYgs3KMR
         mzsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FU1K4TCfkqQVoE65wnQVuSCs2uwyiVbpiJMreRg1hK4=;
        b=VaWzgiG9HwQa8Kj3v8kCaT/GZcFX4fMKylf7RTdiUbL3i03pcpm5epsnJ4anX1D6vw
         D85akG6JiZtZEGEts02Fvx1e1Ly+stPRnNR0K4eCM/EaC3TNY1BpXkWwTYsyV6acBCFk
         ESXirCZBEj2b0IgOXr5MbDQI6UmvEUafH2cTFWBUG+7fAyHl4/syuZDQOMnfQw9bmVGd
         GyTMrlAOx1M/pSwhlda1IMtO8Y1e1U1zLNSu3dAR7V+ul6lRp3RtBS6lieBKmip0FmbK
         NAthlS+dpeyK1cTMgCbRpvjWKPyst5GMGF9mLe//hd8ATtcOKwHPnBVegdDSMn6g9XeR
         IPVQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uFvB4ztT;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FU1K4TCfkqQVoE65wnQVuSCs2uwyiVbpiJMreRg1hK4=;
        b=Zcluai4oQtE1xFqqG7osrNYfGg3Skeb0a2YW12uUMtlq02kNFfHKrIRoEomVI8Li9i
         nQ5sKKIaKXt89yASbDiqHpG+xytgqGPRyj+A1T3ghqNFMj/djf07JrpO7aFveDwkrsR8
         yK9u32ttBAuDU3c/2bFWWeCaeLXoSGcVeQE+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FU1K4TCfkqQVoE65wnQVuSCs2uwyiVbpiJMreRg1hK4=;
        b=L3K/SIe93CsQ59V5AhM38aMDxT4GQX9c84ckKIWoWF8xPnUocmn66NJJvc/S6BpoAJ
         Sy4LprwL7tbElWe9Ev49gisDzitpYIC1gpT0UBNNcLqhRdrxV3pSqjTAmXbAXz3xW2Kd
         7r5p3vBUEGm4hsglXYCzBOovXTT6oJmmJNMkzcZXeOBOD79xYfbSXY6EnxoOo2tLLB3D
         Y9Pd3e48VaZp4ysdTpSIGKwiL4NPq49rePMZNxx22ZHqSeV1tGBg5potc8dN9hvqOQRd
         73k8NKDmxJe850BlOd2Bzs2iXSVzQdWX4mqWJ/Vr0VWSXcpgaboSv5BMNZ+h0Y2Hf/7F
         8oSg==
X-Gm-Message-State: APjAAAW5IO8xoe783nNXOTKq0HsPOyRxiR5afjt2b7sph5pYBDj4/6tK
	pl42W9yKKlVpXWFngdRQ0LxbJg==
X-Google-Smtp-Source: APXvYqzVAsvwT9gWqMH9xKfqFVTI2QEWG0rqty1boEbud2qhSJw0MgqZ+0WSGABhHOw/1tSSjrAdVA==
X-Received: by 2002:adf:fc8d:: with SMTP id g13mr23068552wrr.234.1566404898590;
        Wed, 21 Aug 2019 09:28:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:ec43:: with SMTP id w3ls791146wrn.14.gmail; Wed, 21 Aug
 2019 09:28:17 -0700 (PDT)
X-Received: by 2002:a5d:4946:: with SMTP id r6mr44003160wrs.266.1566404897853;
        Wed, 21 Aug 2019 09:28:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566404897; cv=none;
        d=google.com; s=arc-20160816;
        b=kUCX/J/XvDR0SI/6y5qBToZ2s++pCvSVzbQb2Z7b1frOb0hXqjFtyLJQEXtof9yWrH
         +ih4KDIcD2PqExkE+6myyyd2I80zBq4cS1mCh1UQRVBvEiqsF8eihH2wNNKdTnhocNCs
         We2BhWerFu0uu2Gkt3/wewAWL2sylFgM7zDd4zyAjvzbWTCIdJka2RDaGzg8pFpzZJlo
         5qBHStDS9AjftthsiX/+M8ggU7h3nZkc80Y5bhbe0oEPBuGReE6KNS1SKkRp+ldSCFiL
         ZWiO6PtKKYaAThEfommIqmFGdvQBZsvz4MkSKZDsg8eug6ORcDl8T8/NagcK1u/kmRbb
         nAjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ywUCIB+cRj4cRKcIpwpQFY+NrjfdLRDV76eNoo3hv/0=;
        b=XldEzTisWMG4BrR2918XIfHEIiZl7dx0IQDXbmH+FAz11E01+1x/KOirtdW0Q/Dxg2
         6gzAYhUtwWRulDDHOmuzgTK7kxiousWXchTHq+3o5RSCAGJPVaa35Clyoz9eXUN3Zu6U
         olMUXGnWqt5EylQTrjI97a9C2abKdOSw7lOWRrT/WXRYng8M/brekSGIdKuNvtjAF8uK
         iyTBes+S8pwtkwC1tkKGnRAZQ+Ge8962JIZCiuXNobS/HQNPkWM8CPZWV0ILvOwpjiI0
         E3jHcvth19Gw5bsvufMrZUpTw7TsLZOE7ShE+EXWKKcIbLbtX79XINds70HylIBW7/E1
         naUg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uFvB4ztT;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id f3sor6547861wrq.29.2019.08.21.09.28.17
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 09:28:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:adf:e750:: with SMTP id c16mr2099535wrn.199.1566404897059;
        Wed, 21 Aug 2019 09:28:17 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id u130sm1026138wmg.28.2019.08.21.09.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 09:28:16 -0700 (PDT)
Date: Wed, 21 Aug 2019 17:28:12 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de,
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com,
	jeyu@kernel.org, joel@joelfernandes.org,
	kstewart@linuxfoundation.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
	linux-modules@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, lucas.de.marchi@gmail.com,
	maco@android.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sspatil@google.com, stern@rowland.harvard.edu,
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net,
	x86@kernel.org, yamada.masahiro@socionext.com,
	Jean Delvare <jdelvare@suse.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Ludovic Desroches <ludovic.desroches@microchip.com>,
	Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Support Opensource <support.opensource@diasemi.com>,
	Baruch Siach <baruch@tkos.co.il>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	Jerry Hoemann <jerry.hoemann@hpe.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Tomas Winkler <tomas.winkler@intel.com>,
	Johannes Thumshirn <morbidrsa@gmail.com>,
	Andreas Werner <andreas.werner@men.de>,
	Kevin Hilman <khilman@baylibre.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>,
	Benjamin Fair <benjaminfair@google.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Andy Gross <agross@kernel.org>, Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Barry Song <baohua@kernel.org>, Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linaro.org>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Patrice Chotard <patrice.chotard@st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@st.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Marc Gonzalez <marc.w.gonzalez@free.fr>,
	Mans Rullgard <mans@mansr.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>, linux-hwmon@vger.kernel.org,
	linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org,
	linux-arm-msm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org, patches@opensource.cirrus.com
Subject: [usb-storage] Re: [PATCH v3 11/11] RFC: watchdog: export core symbols
 in WATCHDOG_CORE namespace
Message-ID: <20190821162812.GB77665@google.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-12-maennich@google.com>
 <20190821145911.GA6521@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190821145911.GA6521@roeck-us.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uFvB4ztT;       spf=pass
 (google.com: domain of maennich@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=maennich@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

Hi Guenter!

On Wed, 21 Aug, 07:59, Guenter Roeck wrote:
>On Wed, Aug 21, 2019 at 12:49:26PM +0100, Matthias Maennich wrote:
>> Modules using these symbols are required to explicitly import the
>> namespace. This patch was generated with the following steps and serves
>> as a reference to use the symbol namespace feature:
>>
>>  1) Use EXPORT_SYMBOL_NS* macros instead of EXPORT_SYMBOL* for symbols
>>     in watchdog_core.c
>>  2) make  (see warnings during modpost about missing imports)
>>  3) make nsdeps
>>
>> I used 'allmodconfig' for the above steps to ensure all occurrences are
>> patched.
>>
>> Defining DEFAULT_SYMBOL_NAMESPACE in the Makefile is not trivial in this
>> case as not only watchdog_core is defined in drivers/watchdog/Makefile.
>> Hence this patch uses the variant of using the EXPORT_SYMBOL_NS* macros
>> to export into a different namespace.
>>
>I don't have the context, and thus I am missing the point of this patch
>set. Whatever it is supposed to accomplish, it seems extreme to me
>to require extra code in each driver for it.
>

Unfortunately, get_maintainer.pl has helped me too much and this series
got blocked by some mailing lists due to the large amount of recipients.
Following versions will be sent to the previous audience + the
linux-watchdog list.
For context, the full series (including previous versions) can be found
on lore at
https://lore.kernel.org/lkml/20180716122125.175792-1-maco@android.com/
and the cover letter for v3 has made it to linux-amlogic
https://lore.kernel.org/linux-amlogic/20190821114955.12788-1-maennich@google.com/

>Anyway, WATCHDOG_CORE would be the default namespace (if it is what
>I think it is) for watchdog drivers, even though not all watchdog drivers
>use it. As such, I am missing an explanation why defining it in Makefile
>is not trivial. "... as not only watchdog_core is defined in
>drivers/watchdog/Makefile" does not mean anything to me and is not a real

True, that is a bit out of context. Especially considering you did not
receive any other messages of that series.
Defining a namespace a symbol should be exported to can be done in
different ways. All of them effectively change the EXPORT_SYMBOL*
macro's behaviour. The method I am referring to is using

  ccflags-y += -DDEFAULT_SYMBOL_NAMESPACE=WATCHDOG_CORE

directly in drivers/watchdog/Makefile. Since this would also apply the
namespace to exports in non-core modules it would be incorrect. Thus I
used the method of applying the namespace directly by changing the
EXPORT_SYMBOL macro expansion.

>explanation. Also, it is not immediately obvious to me why "select
>WATCHDOG_CORE" in Kconfig would not automatically imply that WATCHDOG_CORE
>is used by a given driver, and why it is impossible to use that
>information to avoid the per-driver changes.
>

One intention of this patch series is to make exporting and using of
namespaces explicit. As such, the subsystem exporting symbols is
defining the namespace it exports to and the module using a namespace is
supposed to explicitly declare its usage via import. In case of watchdog
(and probably other cases) it might make sense to find a way to
implicitly import the namespace for in-tree drivers in the same area.

>I am also missing an explanation why WATCHDOG_CORE is going to be a
>separate namespace to start with. Maybe that discussion has happened,
>but I don't recall being advised or asked or told about it. Are we also
>going to have a new HWMON_CORE namespace ? And the same for each other
>subsystem in the kernel ?
>

This very patch is an RFC to demonstrate how Symbol Namespaces would be
used based on the current implementation (the other RFC as part of this
series is for the introduction of the namespace USB_STORAGE).
WATCHDOG_CORE serves as one of two examples. I do not think the two RFC
patches should be merged along with this series.

>Since this is being added to the watchdog API, it will have to be
>documented accordingly. Watchdog driver writers, both inside and outside
>the watchdog subsystem, will need to know that they now have to add an
>additional boilerplate declaration into their drivers.
>

Completely agree. This is just an RFC that omits these details as it
purely focuses on the introduction and consequences of such a namespace
to demonstrate how the feature works.

>Last but not least, combining patches affecting multiple subsystems in a
>single patch will make it difficult to apply and will likely result in
>conflicts. Personally I would prefer a split into one patch per affected
>subsystem. Also, please keep in mind that new pending watchdog drivers
>won't have the new boilerplate.

I understand the point. Especially as I am already now affected by the
long list of recipients when sending this patch. The problem with single
patches here is, that once a symbol is exported into a namespace, all
modules using it have to declare that import to avoid a warning at
compile time and module load time. Hence the all-in-one approach.
Luckily, the patch series also provides a way to address such a warning
(via `make nsdeps`) that creates the necessary source code fix as a
single line per module and namespace right after MODULE_LICENSE(). That
is how this patch was created in the first place.

Cheers,
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821162812.GB77665%40google.com.
