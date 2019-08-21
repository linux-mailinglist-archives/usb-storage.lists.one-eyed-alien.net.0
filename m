Return-Path: <usb-storage+bncBC7M5BFO7YCRBQWD6XVAKGQE5V344MQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 7351797E8F
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 17:22:44 +0200 (CEST)
Received: by mail-oi1-f200.google.com with SMTP id k22sf971156oic.6
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 08:22:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566400963; cv=pass;
        d=google.com; s=arc-20160816;
        b=smx5Qoo27smTPUprfs8H4AZ/rOacLgncgA1/Qus1eMrP1SPJ4NWEs6SyBXJXlyBCD/
         YVIa5Y+SALTeZnHYsHgKQ08tiDrj0YEGWzzvRSIk/3YdD9yAY2Nn6UEJLlcMOKSCvNws
         8m2cWS1Tb7e9sN4XJmnpridGBC313cDYzi/SbtSoY941u5CLN2OtnKYSF2z6UkmbiRRG
         7aber/6FOkAJ5VN+LUTRZbVDpTPcMCNwA0OPB+OSePtBVp2M9qy+zKJ4wUhqTHDcn1Kn
         +h3QHxzzquHWK+VGlvhmxL+B7OISlMh0B78wnZM6egQ2UbRlzDRqBZpfj2alIEGvek5V
         cpIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender;
        bh=wlX7apVTl8Vv+mP2Cpv8PGQXOMukz+vT6xsInEfphFA=;
        b=UvvCAmSZkXQBQCtt3ga1RgOXeIPDu+1+qI7jcDwmhmxZ+Lj96b6eHEDyUG0O9VGO1S
         CRytGR5t6BYAWJvkz7f7dnO8OIy2fVJJBclkKEGNvGRrhHsxw6EwouvYQuSw0HHvD7rx
         8c+5TVa3/Miz//EhsJOyjpLGmwDletDINY7FgES6exVVnKB6/YBHJI9XrZehk6r3M4HU
         0acVQ2RY0eyIV9TJbGAE3rM+5eRRuxoea5Di1YmViZ0eeNKhnLC+vyTCIuPKMFazdEyA
         5P65MVAQ+Z49NsTo3wegU/AO2GdR26nnxpSuB3fG8J3fyPb1WwNCj4y8u5hha76+IQfX
         mDag==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WLYmJXxA;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=groeck7@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wlX7apVTl8Vv+mP2Cpv8PGQXOMukz+vT6xsInEfphFA=;
        b=hyQTbA+GCl3Pv6I4X+oWBLZgoO5MqaRkW7ONOWsjihnbooq2aH5uzLrlChEz/cQ0q7
         V1q9wzt4TXNWiZoxrqtpILqocysSKNClF6lsRcxh3y48Cq4/4ZR+tHMyY/8dr6eG+i1m
         RKJ5xYtkIW0ihdoVM1JWF22t4sp4TFHmzMzOXdwoYE6HEjkTirrDh6QaCyeRAK9X8uaE
         C7WNM+0bQVgKq6EcozgvyrCnpL8pZH6eTHLZJtiQk8+pqNcd21wwrF1UOCW0VEq/DdbH
         +cJRyt/eD4VQvcJSO3pqBdmsJNZr0Vtjy8qWx9fkWfjXz0FeUtvoPJtlDpOJ86+aRqUt
         ImiA==
X-Gm-Message-State: APjAAAUDajzCo1oxOAvnGeHm6Bv8+/3dUjXE/2dUEI7bUrcE5cOdUwMe
	k8K0sWZbluWdkbZlr78Nv407FQ==
X-Google-Smtp-Source: APXvYqwcEhm9cr1rZiuwNYlxN+5BfeuiwB5yMw/WhQZTcp1Ta5dwch7Ukta0rSjqHF0UMkt2o49mWQ==
X-Received: by 2002:a05:6808:4d0:: with SMTP id a16mr405131oie.47.1566400963069;
        Wed, 21 Aug 2019 08:22:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:961:: with SMTP id 88ls546184otp.8.gmail; Wed, 21 Aug
 2019 08:22:42 -0700 (PDT)
X-Received: by 2002:a9d:5f13:: with SMTP id f19mr7623723oti.207.1566400962871;
        Wed, 21 Aug 2019 08:22:42 -0700 (PDT)
Received: by 2002:aca:c745:0:0:0:0:0 with SMTP id x66msoif;
        Wed, 21 Aug 2019 07:59:13 -0700 (PDT)
X-Received: by 2002:a17:90a:2ecb:: with SMTP id h11mr416711pjs.108.1566399553179;
        Wed, 21 Aug 2019 07:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566399553; cv=none;
        d=google.com; s=arc-20160816;
        b=CheG1SRSkS+Jx1BbJvEckG6YR7hyeeLWWy3PMVcc3f5spS3P5EYPXJ2LCzsC0Kaet2
         +lUWwaABritWMk50V3mVJmyAXbNSTc7bPbUIS7t9qEQuRrhStwK1pz4loo5qvHofndIc
         O9Ta8ZQVMBIfF+4jYRZrxg712ryA1T3WaTs+YPclouWRtVu3gqY+o9H5PxK13A172a0R
         JLmaE3cOStjPOeEODbd5E4otIlNCEYcRNm3r8ncvN8VPKpyLGLJW3e23/JFn8ZPouHKg
         21h0BbLbGdktqC7iG5sNO2+DLk32jRzdV4aDdOI7lzxdQedjg+aY9td2ToVlLyhjFMhP
         RibA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=MGu3Yx6P1oW2dkVZJ8rQOp/8pAXcm/B2IMgoDlOEKl4=;
        b=zpsE019Dc3BKacUVdocB47TDhIkNY8ZhuhNDtn05bAm7WD46xATzST+Ak1ALEE0LVW
         S+6HltLJ4i4GxbrMu49AUZ/PjyEbIC+xYEy+oFSFZYV5vqCPPCXovSR/me5X8QZbl0uU
         2oyvHAnEwqdRijtCXx/SBWtBqw0qejNGDOQ1kUgKOSqAz811Vaeuieg9RAYFyZL8wS2Y
         +y0F6YO8AzbiUFxrhNe2XkdSs11igLsj31dW1nkOQM8b83DHQuRPiLugTviE4RuIi1xV
         NkBtd6pJDBtkfT6befqyNbR+RRYVWBYRPrgJ8SZLq8W54W+M69MYRm/dgRREY6qrh6ob
         eUMw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WLYmJXxA;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id o11sor9614486plk.18.2019.08.21.07.59.13
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 07:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:44f:: with SMTP id 73mr34838894ple.192.1566399552898;
        Wed, 21 Aug 2019 07:59:12 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id m145sm27713891pfd.68.2019.08.21.07.59.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 07:59:12 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 21 Aug 2019 07:59:11 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Matthias Maennich <maennich@google.com>
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
Message-ID: <20190821145911.GA6521@roeck-us.net>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-12-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-12-maennich@google.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WLYmJXxA;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Wed, Aug 21, 2019 at 12:49:26PM +0100, Matthias Maennich wrote:
> Modules using these symbols are required to explicitly import the
> namespace. This patch was generated with the following steps and serves
> as a reference to use the symbol namespace feature:
> 
>  1) Use EXPORT_SYMBOL_NS* macros instead of EXPORT_SYMBOL* for symbols
>     in watchdog_core.c
>  2) make  (see warnings during modpost about missing imports)
>  3) make nsdeps
> 
> I used 'allmodconfig' for the above steps to ensure all occurrences are
> patched.
> 
> Defining DEFAULT_SYMBOL_NAMESPACE in the Makefile is not trivial in this
> case as not only watchdog_core is defined in drivers/watchdog/Makefile.
> Hence this patch uses the variant of using the EXPORT_SYMBOL_NS* macros
> to export into a different namespace.
> 
I don't have the context, and thus I am missing the point of this patch
set. Whatever it is supposed to accomplish, it seems extreme to me
to require extra code in each driver for it.

Anyway, WATCHDOG_CORE would be the default namespace (if it is what
I think it is) for watchdog drivers, even though not all watchdog drivers
use it. As such, I am missing an explanation why defining it in Makefile
is not trivial. "... as not only watchdog_core is defined in
drivers/watchdog/Makefile" does not mean anything to me and is not a real
explanation. Also, it is not immediately obvious to me why "select
WATCHDOG_CORE" in Kconfig would not automatically imply that WATCHDOG_CORE
is used by a given driver, and why it is impossible to use that
information to avoid the per-driver changes.

I am also missing an explanation why WATCHDOG_CORE is going to be a
separate namespace to start with. Maybe that discussion has happened,
but I don't recall being advised or asked or told about it. Are we also
going to have a new HWMON_CORE namespace ? And the same for each other
subsystem in the kernel ?

Since this is being added to the watchdog API, it will have to be
documented accordingly. Watchdog driver writers, both inside and outside
the watchdog subsystem, will need to know that they now have to add an
additional boilerplate declaration into their drivers.

Last but not least, combining patches affecting multiple subsystems in a
single patch will make it difficult to apply and will likely result in
conflicts. Personally I would prefer a split into one patch per affected
subsystem. Also, please keep in mind that new pending watchdog drivers
won't have the new boilerplate.

Thanks,
Guenter

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821145911.GA6521%40roeck-us.net.
