Return-Path: <usb-storage+bncBCTPRFE7TUKRBR4F5TUAKGQEN3QSPBA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A1C5C9C2
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 09:07:51 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id b12sf18822343ede.23
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 00:07:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562051271; cv=pass;
        d=google.com; s=arc-20160816;
        b=kw/esABXUNL8FmHXgKzZzGDb+iwHEhQRfRRL4tKr/TNqNh0dLp81oiLvh64QL6F0pc
         TMtjKLNLvcUoLF6L1ZkmWMDt+nWFFr3n5GSxzXlhlrC6VP01jLRkuNOSYl0Wg6FHQ1qF
         QR3rFiR5h1UbaDEj40ajYbnUEAg/6fDJ4VfCqZlQzP5mqM7puxW8aDmZs2I6YYhkioNI
         mHDY8w28vPPvUamEOryq4M/4AfhpKJ1tEsgSMWIrQukY0h+px9NZKKVcOYUTtzplJhj/
         vsnTZrDmTxisILBMd5VHthscbsTo18ZekXKfSqZJkn4zwNBfvTXaZCEtMRZxXpTjcrih
         LhGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:dkim-signature;
        bh=4ICGS0Rw9eJFxRAGonqS1WldNY6cITbcWkf2JhpnkeE=;
        b=Em0iAIR2sbFR+sA2iXuwGp9eW0t3Hy0JnRCoI28GRf+bWUgUSCYC2C/113Nl/9sjWZ
         Z2ucpBWfJYC+0G5wj/iMgQEXq5VBO5TEh5XcQAE1/xKmvIJJx0IiEGos4wpsxCZZLpV2
         H2Rx5PbhFC8mpMTT2saWmL4bWe+l3Uz01vaXXP4HFKwO5FBNqZAuq8sFvqlGOMzEM2Bg
         y/0oE4itY6RgnNIqlp+2ZzpcX/hCouqsILKxjQCh5t4UQv4JSnK5yV1OsEUaJZxi8K+i
         Y9NkIWfUe7ZrBbsbOOlCwn3xfaFLYH0WSJOtKiGv/CG2Mm35F+ajbulZOO7cBXEb5vaX
         N0/g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ICGS0Rw9eJFxRAGonqS1WldNY6cITbcWkf2JhpnkeE=;
        b=P0UGJWQd1Mevc16KGQyQsGoqIIr1hT0dQmV30DyXNyrHV5X/BZDyTw1DKOIoqMwW5Y
         6dPW1txtaUs4YwrMMQjQpvOda34tQBJzDFeh3A2uP+WbYqf+16jcPkd1BctT8MaTouuh
         f1iQc0smDu4UvhCX3X85rhqXdUKBLlw4GidWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4ICGS0Rw9eJFxRAGonqS1WldNY6cITbcWkf2JhpnkeE=;
        b=E4qNBFc0BikXzt/iKC2nVwXLO+/XgZLAZu0UtPwaAhd/XQPk+nQUzYIf+OHRBzz5Al
         PI8ZxdUNUXrZEp41fDIlK44+Knz0cken1wdbcAzc5IrxYnXbgt1jeYEYVgIAoCBHAFAD
         V17CxxfR/WZX1/tJJN8XOz/9GCMNHzo7FFMTXKhhVt1+xrGmAgM2OEZgZQEm+Ovv1fJJ
         RUBS7SovPu459UO9pm7TfXJyVkpC4piVvMej5QdspEEoqF+llmHbUxBMMWS5B9vdxwRw
         lf5LQ4jze41MUqeCYIVShDZughZfmuLGt2QaUvgA4nZfzfXTEt/U5nwFbuvlgNvDCoXj
         Cppw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWtKauMlMAXq1//KW4/gxNSdBv28h0993qqRCDuIZMqDdfEUhpV
	+9p3FmxBuhSDU9dBCIQH4ncRKg==
X-Google-Smtp-Source: APXvYqxR2+Hpky+iM42Tp/Ha+3bVLGZLQo2SRsfIPZ3xoxD4elh20sH8pUvix1oI52jPGcwq/21r+A==
X-Received: by 2002:a17:906:6986:: with SMTP id i6mr12122157ejr.89.1562051271166;
        Tue, 02 Jul 2019 00:07:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:2cf:: with SMTP id b15ls3858198edx.3.gmail; Tue, 02
 Jul 2019 00:07:50 -0700 (PDT)
X-Received: by 2002:a05:6402:397:: with SMTP id o23mr34528779edv.68.1562051270684;
        Tue, 02 Jul 2019 00:07:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562051270; cv=none;
        d=google.com; s=arc-20160816;
        b=W8VQm/rRaBjlzHQ9alfdc4mYYdFTG4DThy5N4B1TKej0Lqz5n+eU/phavggkkNA3WP
         Zfkc2xgMueh+T7DrhQlMoW/4hV/L6hsfWmTR9ZNj9czrqcEateg7xpxsc+/oR3NynIDL
         4W76hXmppW5iyAaqUfbbNFrXcJVUASm8xThuJiTzNr+9KddL+NkRRWn5BUktlHXD8JXh
         dsDyeTGsbeAQyfSZrSYMb6JR/4f/zgy+hs1+pm2+KMBf+ourBKlg6h+euw2IvFu8c6Ix
         0PD7dySLLYHAxPLnHS/UuND/hWmK+kYW/LCOE2ZPW8/0q77aSEhHxWvl4L0gYvQT7MuR
         BELw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=DwMQctunmEqHk8Hhx7ild5wbVoiFQ+1AsgQpd9zUKPI=;
        b=MhJSguEBwEjkYA1D5cwJ0uoih5FxzKQ2ST6Q3BhlCcBwamDrqoOGuxtUkhYp8pkAtB
         h3MGZfIUYa329Ewd9okBIT5dNxG2p9FVetHWmft115xp+EdZPUSMsKeCzhYdQlUa05hS
         WMhLg8/jqL8MHjhcrWiWoGS8heerx5Lmh7f4Y9btMvdAwbjCY+3tEGFeNkjqyDMeJsM8
         3gGhY47J7pkTptvbbrjbekN0HtauiUhFoxD5PEJr2RHo3+JgnXhiHXQfB1gSRHwMiLO3
         A6wypG1gOlJaAY2KmYq9vxaf6PNviJ6t0PyqWu1PYvV2GrEFBhxMWqmhFgwZD+ve+eY6
         j74A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id z43si11389401edb.102.2019.07.02.00.07.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 00:07:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id B8490AFB1;
	Tue,  2 Jul 2019 07:07:49 +0000 (UTC)
Message-ID: <1562050423.5819.1.camel@suse.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
From: Oliver Neukum <oneukum@suse.com>
To: JC Kuo <jckuo@nvidia.com>, Greg KH <gregkh@linuxfoundation.org>
Cc: usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu, 
	linux-usb@vger.kernel.org
Date: Tue, 02 Jul 2019 08:53:43 +0200
In-Reply-To: <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
	 <20190701085248.GA28681@kroah.com>
	 <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
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

Am Dienstag, den 02.07.2019, 10:36 +0800 schrieb JC Kuo:

> An user might want to completely disable uas for some reason so he/she ad=
ds "blacklist uas" to modprobe conf file. I think in case of this, usb-stor=
age driver has to enable this device with the legacy Bulk-only protocol ins=
tead of ignoring the device.
>=20
> As an alternative to this patch, I thought I could get uas driver loaded =
before usb-storage driver so I tried moving the functions in drivers/usb/st=
orage/uas-detect.h into uas.c and letting usb-storage links uas_use_uas_dri=
ver() of uas.ko. However, that didn't work because uas driver actually depe=
nds on usb-storage driver for usb_stor_adjust_quirks(). There will be a rec=
ursive dependency.
>=20
> Please let me know if there is better approach to avoid the issue.

Use US_FL_IGNORE_UAS. You can trigger this with a module parameter.
We cannot just use another driver because the user block a module
load.

	Regards
		Oliver

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/1562050423.5819.1.camel%40suse.com.
