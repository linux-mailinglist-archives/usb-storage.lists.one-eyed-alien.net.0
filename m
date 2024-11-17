Return-Path: <usb-storage+bncBCT4VV5O2QKBBTUT6O4QMGQEGYAGVGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 4178E9D2C7A
	for <lists+usb-storage@lfdr.de>; Tue, 19 Nov 2024 18:24:32 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6d407522108sf16568126d6.0
        for <lists+usb-storage@lfdr.de>; Tue, 19 Nov 2024 09:24:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732037071; cv=pass;
        d=google.com; s=arc-20240605;
        b=LUWda5SxW4DZ7H8xcRpvhk1yFRDYeygbRplBNTtbADsJNZT+5Gf9En4aYhBRutDnbN
         zCIV9tTLY7sZeTfZjP3fsv7pM03npPAlp22VgzZuVgBGdakk2S28Xx4x1+kCbiek6KAX
         /hWkXYI+3+5HzjdM9CVbPUITjaW+sBWFmATFlD/vPC5gxlgAI24ErhF/qYl5ywkry90Y
         ntOQwBVLIZ6mwjBI0UYlJrI9TgVy/plNaulhSCSkHPWhFqk5m0in4aUVPP+pLmfKvNIo
         ypECl9Aize2QLH2aoha+RMOsmgPtP4tnyRmNgYYj4P+YGYlFqeHj9+vWMgvfr76rZ0qb
         67Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=j71ZpNUQcq20qx73zSv22yPYmPjnRx7layvgVjN35Bg=;
        fh=4Qw6+m8rLm4i/anWEY0n0Ht96aDEeKWBg5E96SNO2DU=;
        b=MQTvKFJgivkzP99zYYx/Dwi0jYeN/jiB8K8wkEyLcI3dMYZurJtauiFKeMecJZHBLZ
         p0XvTAqh5g2cQGZYpZEOesy1TC+CdC3V7yE9LdVSSjDz0LRnUDLoavuGfaeu8Wk6mvGk
         M+Ykabf9ZuEgn1xMxhBY5P3r8vW6RZK0CCi6DFIhorkT797ebC2dsPmgBLwcSkpnrxS6
         sm0MbewuEQu4oT5d7Lf8bnOA1Sh8wEAioX339CgvpjnubZBkjIcNstgwlqZZKuqAdEtD
         C8T3wilYvBWytxUtUPdcppWjPZpnVFFP4HjKVd0OtIGcIHGKrl0/BRgm4JYWAZJYpXoC
         buSw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=softfail (google.com: domain of transitioning andy.shevchenko@gmail.com does not designate 62.142.5.83 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1732037071; x=1732641871; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:date:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j71ZpNUQcq20qx73zSv22yPYmPjnRx7layvgVjN35Bg=;
        b=JqnwdymCIivZtYfpc9Xu12p+iTZ4y7et61tAG69jXwRPis5IUTcOhHo70auL80dSFA
         SpsuiA/TEC4uJKx78x1Or+c9K7pXEifXemsLgsEe2BbxvaKKa0s1N3pGQ3WioBFuA3RP
         XpahDBov82UBmU59OFLhPA0GtZ+MCuwRmM0ME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732037071; x=1732641871;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:date:from:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j71ZpNUQcq20qx73zSv22yPYmPjnRx7layvgVjN35Bg=;
        b=dmaqbZInSFu/osrVjG4coISlYDZOXyT9euRSyjHpB43kePQKRBNEaJ8LILeGbZZNpx
         318ENyot81/iXR19rGREijTc5ip3Gt0/aANQrFfD3P/wZyTAwHuUZi7RLF8/Ibhbr2rQ
         vcvVx3mbNjdqFyQI6R36FwiDfO6mEJBCygRkNpC03jsn69M38dxtx1IrkU5lPu0VHysW
         vh6jqXNm6W+4PnUJMOCNmTpGed1pFZps/ReL1JiEZ+gTGpE3QRgEp2ZgSclr0HX3LnE4
         qfgzLYYeC3s6/bw7yxvkhbQXz5AyOzv14Zi2RntEDqSdgtE4xXSlhZQsxdYcumJ2LLfh
         jVpQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXQD/xxyf4+6HfZnKM129UlcYH0ByaWhoch2f1u5z8D2Pfro6cVyCRUnxg0xY6ch50RiD8jvQ==@lfdr.de
X-Gm-Message-State: AOJu0Yy0yI9MAiai23bPVwVDTd0B0ngFMgmxCXy97aqW3RpBMsvGYFtx
	wCAf26nnXQvXqqakDQArHBiCklXuYzYtagUSiYPyPIyvf4LAwVKEvQ/YYTFaI0A=
X-Google-Smtp-Source: AGHT+IGeKzGdEf7xWeGwlMJ5GnuNyYuR8lfSFSO2+r4BPfoYWchOHls16VLaofKBduPMW7E4HBQ0AA==
X-Received: by 2002:a05:6214:5404:b0:6d3:71ab:adb9 with SMTP id 6a1803df08f44-6d3fb88bff7mr265081186d6.45.1732037070799;
        Tue, 19 Nov 2024 09:24:30 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:20c4:b0:6cd:8884:cb30 with SMTP id
 6a1803df08f44-6d42b5ddba9ls8502166d6.1.-pod-prod-09-us; Tue, 19 Nov 2024
 09:24:30 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUwQRAW0KRWYwL4e7t0Jh6mj/hp7K4CvMs8XkuHjv2LRB/MgtJgsVHvs7S7bfd9zHjdUiP6tzrQELwMVg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:171f:b0:7ac:e869:b084 with SMTP id af79cd13be357-7b3623138b6mr2372902785a.47.1732037069889;
        Tue, 19 Nov 2024 09:24:29 -0800 (PST)
Received: by 2002:ae9:e710:0:b0:7a1:c409:aa2c with SMTP id af79cd13be357-7b361831f3fms85a;
        Sun, 17 Nov 2024 11:55:44 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXgqwa4nxCk2CwjgSe2J7GaWSUBxpswlKSUh9hqwO6WYoYbGgLP5vc9ak5tYzfsHDLI8ZXkHsQVj41l4A==@lists.one-eyed-alien.net
X-Received: by 2002:a2e:9a0f:0:b0:2f7:a759:72a7 with SMTP id 38308e7fff4ca-2ff606a8b08mr43973221fa.22.1731873342001;
        Sun, 17 Nov 2024 11:55:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731873341; cv=none;
        d=google.com; s=arc-20240605;
        b=P9DEx1F+MegbU3PZ+v6HTGHZFYfS2iCzUXDfqYTXKzIpO2Kzj61Uomp33bE4zeHM3z
         JX8+mx4Q038nh+MeOzsMiEz3YXa80w7Nl/gGrCcvFGHEaYBU1uG5sqiOXG57/lSI5lmk
         Ko0xRYvYd9XG3n4RtoNIw28ea76eeCN+A3Wkbvns3F/TJuZS4+aHzHmMS2rfFDFD8Y9/
         J0ZnfcGsuIq0HVTDnWr+3YM9reyTxeFsvLXVXdqxtfT3HBVYfeQPQd75kKg6mJO9kfyJ
         2Cezhmd4VAdD/fu/T7Gt8A3U0UVxrFsMBLSrObdhhKuTtBYrE3JCBkHrtW2K95ijqcKR
         qXEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from;
        bh=Hu+cHEb3sMvWIHnN6qpT5Dz9+3yfZXGZuGz6sIzh+8Q=;
        fh=3MMd2UZjPMYPFT3hTMOd7gA7tkCU8dp+Wg8wJtGjrFU=;
        b=BwdOvwvYGXbdjzNHE0+JcoURpeiTteRi53wF9uNy5vIZqt97D7GKtRpPvuOSQmfItn
         f0zyAeH2c9XLpr+Mn+86NkYPEq6gzPyJEv8Nazt0GKrUzMcy7RgMvI8MLhXJWyAh49Bh
         rr56P2R/PsH4B4oU8MZ95d+chHlnSbRxD7sDzOzQLHBxGBtLvaiELnd0eDdgs/1aAY1C
         VkrGnCnM0qcle2UjjlrX8krhOjDao/pt9FFeRzD9LmHQmZudv9PXW+ySxGVnEIKxIyJE
         vLENusUUP3UeJr92HCFC5ygd6jgLgOlZtNnPdxyD8RoaLKT/C3jnh/rl9BuLJ8uOYLXZ
         3J6w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=softfail (google.com: domain of transitioning andy.shevchenko@gmail.com does not designate 62.142.5.83 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from fgw22-7.mail.saunalahti.fi (fgw22-7.mail.saunalahti.fi. [62.142.5.83])
        by mx.google.com with ESMTPS id 38308e7fff4ca-2ff69b570f3si13494811fa.552.2024.11.17.11.55.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Nov 2024 11:55:41 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning andy.shevchenko@gmail.com does not designate 62.142.5.83 as permitted sender) client-ip=62.142.5.83;
Received: from localhost (88-113-25-143.elisa-laajakaista.fi [88.113.25.143])
	by fgw23.mail.saunalahti.fi (Halon) with ESMTP
	id eb150528-a51d-11ef-a0de-005056bdfda7;
	Sun, 17 Nov 2024 21:55:40 +0200 (EET)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 17 Nov 2024 21:55:38 +0200
To: Sabyrzhan Tasbolatov <snovitoll@gmail.com>,
	David Laight <David.Laight@aculab.com>
Cc: gregkh@linuxfoundation.org, andreyknvl@gmail.com, b-liu@ti.com,
	johan@kernel.org, oneukum@suse.com, stern@rowland.harvard.edu,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2 0/8] drivers/usb: refactor min/max with min_t/max_t
Message-ID: <ZzpKOuZeWidsyGis@surfacebook.localdomain>
References: <2024111251-spill-hatchback-72da@gregkh>
 <20241112155817.3512577-1-snovitoll@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20241112155817.3512577-1-snovitoll@gmail.com>
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=softfail
 (google.com: domain of transitioning andy.shevchenko@gmail.com does not
 designate 62.142.5.83 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Tue, Nov 12, 2024 at 08:58:09PM +0500, Sabyrzhan Tasbolatov kirjoitti:
> This patch series improves type safety in the drivers/usb/*
> by using `min_t()` and `max_t()` instead of min(), max()
> with the casting inside. It should address potential type promotion issues.
> 
> Scanned the current drivers/usb code with `max\(.*\(` and `min\(.*\(`
> regexp queries to find casting inside of min() and max() which
> may lead to subtle bugs or even security vulnerabilities,
> especially if negative values are involved.
> 
> Let's refactor to min_t() and max_t() specifying the data type
> to ensure it's applicable for the both compareable arguments.

max_t() is okay to use, but min_t() is quite a beast. Please, reconsider the
entire series and tell how had this been tested? I can't imagine how many
subtle bugs it might have introduced.

min_t() explicitly casts to the given type and this is a huge problem for
the cases when one of the parameter is of signed type. Besisdes that it
diminishes the type checking done in the min().

As Linus told, the many cases when you want to have min_t() is actually 
clamp(). In some cases you wanted umin().

+Cc: David.


-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZzpKOuZeWidsyGis%40surfacebook.localdomain.
