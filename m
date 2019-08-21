Return-Path: <usb-storage+bncBCUJ7YGL3QFBBBXX6TVAKGQEKXCC42Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id C49C69799A
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 14:39:35 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id q12sf1499745pfl.14
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 05:39:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566391174; cv=pass;
        d=google.com; s=arc-20160816;
        b=MysJf/O8T+MFQHZmE7AEuw6cZ+K6LX5h1Pbtz1NI8Uh3M7yPbGM4xB6KCgFkjCZuvM
         c3NotpQutzaqzh7r+SDHC5oKrjImwl+o30R0pLfHa6quXufKn3attdQNaFIfy/F4s0ez
         vw4+Bqf/T4BmSmndJ0St3Z4iLFwTEO830sIYQCjreOMKaFuioQy6wHMgqGYgYwD+8vjb
         Pa4iykrfC4UKmPQ5aLjbH29fsBaHaMM3Uhv18+ivmIgSLbpXERd8H8kcXJ/Pst32KqXi
         FikVwLaLTZeIitk6r+dSsL01eSLhR5WkFr3NmihArB+x8pMK0MIdcLo+lvyxxtg7OKrd
         WazA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XluJ72Na9iryrb7j3c7wjv8S8IPZwDirAdC+J6Q/pBs=;
        b=qzaxpXoyCd92rpE94Ib8/f3ECU0k6IBXUy8aQlaoHBHrGbORuX60gH+wqDgZgqfooN
         pUTkIPqM5KHi0i4Ma84LFSEppgfg5VeGdD0jwUvd0jXzTAkVG/iBeCtX2LXrm4FUiuv0
         Hbv8hayTpaTISsypiPLysJ8n0d5AIy9KHere4vjiKtYgQdzamPK3F2Q4P/ge9kVEEZox
         XEZlmAnrUJRlF+Ww7iPZxqsSb+rOHkiL/lc9hEbfRpxTY2qbQikI+eNE1tvZ2ngtQ2Qc
         QL6RQTGyUfofbbIC0IRtOSxJc0BYNRZ0oQdL5A92wgAXFboghIEpyOzC7QGG7Yx9hjV6
         eCEQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TupyVj17;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XluJ72Na9iryrb7j3c7wjv8S8IPZwDirAdC+J6Q/pBs=;
        b=CHVkgLk9TgmZIunSWBP097FMSSB7llrmop86e/OGzHwh34QymtjQ/+HSvkBxXaswP9
         1db8QgzSRT0suhm4R1S+s0gPunLHUBCm51WlpdKKiFga6oCb8d+bqq+ODnhREAxI0b3J
         MGpidyvyElHw0GjLRmnfNE+EINzC7ERj4gYbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XluJ72Na9iryrb7j3c7wjv8S8IPZwDirAdC+J6Q/pBs=;
        b=UAgs/x5Od43yG9KGePmd3czmBOPP1aFf4CGQT2OIwNKjFyqTqTVqD0hID06+xt46c5
         KfzHH5o+1A09w79fUyXlmnhvQwmgltJbQnOZlidAJDxBkXJfVV8YxJGuEop0NZrZOOEU
         /hENKwW/4GE+N1lwxSBVzg9r4mqTz5EA3WoPZjrHnHESCGZGNEtEuthInowjKGsQLpnT
         t7JrIlOBA4c+Fwdw2bwh71WGwtkessTE3u/x7fENhE5LkfoZzUMyQpAKYqd6uc2Zz44J
         hXRHkr1upv3JuLZPmFAyQ6ngYPq44ZOWeKzVSXdsTbqTyngidcLm54EmIQSSpyBGwB1A
         r79g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW9Oqok7zT6z2Dt6m7TZNmhKI2fGbzKgH3dU8NbKIkl9d7EZvDs
	3dbgnZjW/1U9mZ2YBPv1OOcNcA==
X-Google-Smtp-Source: APXvYqw/0NEdLNSjAK0J6NaNqe76TB6dhic/3fT/iOTpT+A0otacVgTzoaIeOZ0zceFm+vysgRISWg==
X-Received: by 2002:a62:34c4:: with SMTP id b187mr27121039pfa.161.1566391174453;
        Wed, 21 Aug 2019 05:39:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:18c1:: with SMTP id 184ls594132pfy.10.gmail; Wed, 21 Aug
 2019 05:39:34 -0700 (PDT)
X-Received: by 2002:a65:5584:: with SMTP id j4mr28767615pgs.258.1566391174089;
        Wed, 21 Aug 2019 05:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566391174; cv=none;
        d=google.com; s=arc-20160816;
        b=BG9eeppOBZe/KVSKdW75twp5pV0phccM8NCAV9WcNS+UvgOY/aPQkBvUdNZ/iou/YQ
         +qh5I1z56pPwSz/x5qdNa6WHq0s81Z8uFU6zVQOsypDQNeNOiNBnj7kfQ2ub/FUex1ax
         k9KLINTj/iArupcXZHIrtUZyugf8/uqwgu/qzNwn/9mzG3xB26KTK1Wu5uwDamt9ujI0
         WAVsDlHovIsi0OBQ3ntyT2lVkaL5w4koyz6K7jeHvba5/HeSR68YOrQUsY45jsew4ii7
         WiY2S/zNmq+uoWhFlE3wDLP/gfeNOfBapnsKdbHvowiQ54hKYGpoIJdhroOdX/XW9GEl
         gVFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FpXjZMpydqDll143O+vloNgI35OUt1Lh4tyBFGZ4GBs=;
        b=LhZcFdkEvevtzVEnDYCJkV2Lpx3sO2tRY2+Wu3MgJfANOWHXoOCNAwmLs05MRg4Sqa
         rZWkvdMlcFYgVokVZOg7JfG27iH8YhJ2vggq2irZP2ND82uv5tvKZCZD0WghWQ8ZyQ8v
         TYtsDizUvMouIbEAOtE8uETVVP1FHRAUf7jFjlN3YRlCbpGR75M0g7a5g3ED1sQ6T+MO
         sbafi+KndL/HAjRaGCkjy8ST9x+1Ya1m+gFiNg0ijdF7FyuB84xdHfk3ToXiWRw1Ub5u
         YPssgf34Jv4RFO44wyrxjp1mf6n33fZe6w/G2iR+KaFRRQh2bKEK26R9HZwV9BjPN7JQ
         P8iQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TupyVj17;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id x20si2111411pjn.49.2019.08.21.05.39.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 05:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [12.166.174.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 81D002341E;
	Wed, 21 Aug 2019 12:39:33 +0000 (UTC)
Date: Wed, 21 Aug 2019 05:39:33 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de,
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
	yamada.masahiro@socionext.com, Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
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
Message-ID: <20190821123933.GC4059@kroah.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-12-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-12-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TupyVj17;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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
> An alternative to this patch would be a single definition line before
> any use of EXPORT_SYMBOL*:
>  #define DEFAULT_SYMBOL_NAMESPACE WATCHDOG_CORE
> 
> Signed-off-by: Matthias Maennich <maennich@google.com>

As we talked in chat, the cc: list for this patch was crazy :)

If you end up resending this (as odds are the mailing lists will trash
it for too many recipients), feel free to add:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Great work,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821123933.GC4059%40kroah.com.
