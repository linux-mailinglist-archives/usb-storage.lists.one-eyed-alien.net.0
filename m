Return-Path: <usb-storage+bncBC4OTGUTS4FRBO7ZQC6QMGQEMBBW3GA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 83537A251C7
	for <lists+usb-storage@lfdr.de>; Mon,  3 Feb 2025 04:49:17 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5f32578bf1dsf2448990eaf.1
        for <lists+usb-storage@lfdr.de>; Sun, 02 Feb 2025 19:49:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738554556; cv=pass;
        d=google.com; s=arc-20240605;
        b=WNufxX9Upp3qiyXzkMMRW9eK1e9HV7uM1qdBeQWI5CutsrdK35cjPmehu8L+ucaCsJ
         hF7EjWDQhj/tmAeiQJRRLAOYIhhorHohOwXX6rwuYIrb6/tcZ83rZuVjVsX3B5oJCJFv
         MQJWwEW4mmbG8in23zwgCEPdRqxhpKBVJT2Ovs3QLWf/KKlan3o1SUe+ngfbN4ZAr/Yf
         1BV89gVEMCy/PidacOkJ1M+9OEOyrkCR0o2vZXWaG2t7840V2W1U3mfsW5wMy07+/gJa
         Ql1pZlTq2zMZapODPiRLp3foSOjYH21tCTLvRmHU2t9jiNJcfx41PEk/QkFrsn79TmP7
         VL7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent
         :content-transfer-encoding:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=gAxtow6LX1DYhNpiDZ/i0pPjQGZEtOF6Q+FUR5uZPQc=;
        fh=McNglk06GEAHg28rYfbdjjVg+3a3i0X1QhOc3r0kVsI=;
        b=A2EGWgR6DVStvyyy/SUJTFIznFgqGQUuWxgtThdGcB9hRmY1C6wtfhI7GPG6eoG/DO
         3NsFY02usH9u4GRbjgLedeObu8fG+XvftXkSJ4q6iXZQ9djY8ZMv7OFn6L31BzuqVzSy
         hPHD77pvno53Y6UMLUQjuUj71Webgf9khpAcoUSZ4Hv8XU8oGXBhUd9HQ7EK1CiaD0f8
         1ovNlJP+QpqIfYHi9rWreQKRzV5mLCZixq8twIMBPw7u4gsCloPX6lsTdUopz1uJnwDR
         z1qsIvCsGr1K6ycM12eJSzGwIq3NQXNAckCrqSCkG84jZg+JvlaCV7sE8p+duV4aJwNL
         eWgw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@codeconstruct.com.au header.s=2022a header.b=DWaLK4Wa;
       spf=pass (google.com: domain of andrew@codeconstruct.com.au designates 203.29.241.158 as permitted sender) smtp.mailfrom=andrew@codeconstruct.com.au;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1738554556; x=1739159356; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:user-agent:content-transfer-encoding
         :references:in-reply-to:date:cc:to:from:subject:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gAxtow6LX1DYhNpiDZ/i0pPjQGZEtOF6Q+FUR5uZPQc=;
        b=Xcb1VeqNAdaTJZLt4WYFu3SB7Y09clWM6c3NPRlS0o6YaJ6YjRi/CIEgJW1QJoyEtl
         v00t67Xuw1g8bFgX/snNWgqMRYJQu9QqP7FgSNAg3Casc+GEMS+z+iy/Kb6uOGdwu3P2
         hFo6BmaFxugmjaR84vfBkmY0xj5Sz/3V2+C3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738554556; x=1739159356;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:user-agent:content-transfer-encoding
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gAxtow6LX1DYhNpiDZ/i0pPjQGZEtOF6Q+FUR5uZPQc=;
        b=nMe9wW7jtvOZ+ZQyi/HtVHmbowtj/dUkl0TTed923fD77B4kaFvE4OdLhYAMCwBvK/
         TBEHPldZfhpCFX4SEuAo9hMM+KfAKAYBc9RYDq1lRaxA7GM46fHC10XHvIZF/X0Bqv51
         HF5r5xHz1lMWCXx/A6doTFws1yoT/darBG7EAWji41EO0dqFZJ3DSnjaXB+gitdmh7IF
         39Ns8MxE1pBaJLmOG3nccYf0FE6moogv0DXTjdPkVJQMds/qvLZ3+qf/zfrLUnda6vBs
         DK8clhZm9/N1xetvPu825UY7QdtZPUBWXJWHzrWT6IEsg0p1o0hckg0aAugX2GYKIRvA
         vrpw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU8Wj6JjkchG9kcieXH4Y/jWLfwpPYW/4eUqqsFWhRTVatf43rE7wJ/yLEzYdOu2m+vcFV50g==@lfdr.de
X-Gm-Message-State: AOJu0YxPXU/gkGT4VSngDpAcScKrYpWRUddzz+S9TgN/gLi6PChE36Ma
	E+l1Ii+tkk2aNRZj3eC9M4dF90y4psGLTU5aBQpeT/FbAl9kttIjdXYSaL/dLXw=
X-Google-Smtp-Source: AGHT+IFvtp8CE+C1c1Jqxcu5hglt07SLNd/wmu2PSkcG6RVcyjbzw2MgPGV9vaCK1hm1YfCeaQVWig==
X-Received: by 2002:a05:6820:22a6:b0:5f9:9b2a:8c49 with SMTP id 006d021491bc7-5fc00456004mr12127635eaf.3.1738554556038;
        Sun, 02 Feb 2025 19:49:16 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:e9a6:0:b0:5f6:644a:2d43 with SMTP id 006d021491bc7-5fc0ddfd46als2022731eaf.1.-pod-prod-08-us;
 Sun, 02 Feb 2025 19:49:15 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVAOv0ZAX6nTaBttrsiMPUhwzn76SQa0HxjfNUkU1gQc8de/dE17YUcd+P0R5mL7JqbHJvgAJHgqzzpAQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:320e:b0:3eb:549b:2c14 with SMTP id 5614622812f47-3f3239fda8amr16968623b6e.2.1738554555217;
        Sun, 02 Feb 2025 19:49:15 -0800 (PST)
Received: by 2002:a05:6808:19a3:b0:3eb:6ba8:8c6b with SMTP id 5614622812f47-3f33def8000msb6e;
        Sun, 2 Feb 2025 19:44:17 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVnsazVKJkh2oLwLpnFvHllhDf+kts8ZlHn+tQiebPYBbvm7hC98PwJz3b0eC00ep3nQ40/DLsZoSct4A==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:228d:b0:215:6e01:ad07 with SMTP id d9443c01a7336-21dd7c4e402mr280981735ad.6.1738554256469;
        Sun, 02 Feb 2025 19:44:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738554256; cv=none;
        d=google.com; s=arc-20240605;
        b=Q/j7/hWSdTbUvGh5TS79ARdgI10PiFO6SwaSJHmRU5aS6qRUOCeKYN+mAvqpmQLVvD
         DubpgjxfNCqNDrCVjQtR7GXvA5kcIkURWkTSGVb8wllrt81dAJPu6M4JrdM6gZfiBUI6
         U4n5PUsYWmCm1y+CcedS9Nnk4p6tmxusTF5DhgWzuSvVF9k6+rvw4/iWr8L41aVNDt/h
         E0czJVh0VIPh/e/Q5U67yzdSa3EAhthWAI6zgU9GjUGubW1WPwRdVDPgdNzv3ftVnjwY
         J2p/xU8bakiRLuljTN1+TTQjZbkJ2R2c6zsY7iex6wPwm1B2ssX0ut4GawKeI+p/8Zn4
         g7EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=Wp99182AkTFqDJl4wZTchFzd2M+OFA1zhhQoeHWdJCY=;
        fh=FPjdlp3uUn87w0X1g03f12TAidto2kF/MK6ypHlcd7I=;
        b=G1QzeXoarvqb2b5dqV7ht5zpjH90N1xpjowAvFe4IZ72LLoRpZwuFumMWC50Blj5eg
         Nf96j0covQTh+6qYJayhmohXLAm6qtu1oHMMcTJK5SJ3VbnpzixRMkCGEjyCE9rm10Ia
         2Y96OnjI/x2djxSintQLudBYSP4eY74UOm6YeytHRtak3LOOlU6zcZbwB+4NV8893qJR
         J3cmtmzxjrGCxgyn0/9cWDPyg9FocDiu4VyGC8waXhlk3wJoY55Y4nI3aSlyVvH537Yb
         ynUY+FginOgS8nldj4u1UAYVr0CE7VlmLJtapYUUYzoGdu6QEaECTfIdizOW0La6vqMj
         7Ptw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@codeconstruct.com.au header.s=2022a header.b=DWaLK4Wa;
       spf=pass (google.com: domain of andrew@codeconstruct.com.au designates 203.29.241.158 as permitted sender) smtp.mailfrom=andrew@codeconstruct.com.au;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeconstruct.com.au
Received: from codeconstruct.com.au (pi.codeconstruct.com.au. [203.29.241.158])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2f84b43e27esi10686175a91.2.2025.02.02.19.44.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 19:44:16 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@codeconstruct.com.au designates 203.29.241.158 as permitted sender) client-ip=203.29.241.158;
Received: from [192.168.68.112] (58-7-156-140.dyn.iinet.net.au [58.7.156.140])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E54D973C54;
	Mon,  3 Feb 2025 11:44:09 +0800 (AWST)
Message-ID: <ee2f8d2315e27e800643195bdacba9f88ce2d2c6.camel@codeconstruct.com.au>
Subject: [usb-storage] Re: [PATCH 5/6] USB: gadget: Use str_enable_disable-like
 helpers
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mathias Nyman <mathias.nyman@intel.com>, 
 Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter
 <jonathanh@nvidia.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,  Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Peter Chen
 <peter.chen@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Alan
 Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Date: Mon, 03 Feb 2025 14:14:09 +1030
In-Reply-To: <20250114-str-enable-disable-usb-v1-5-c8405df47c19@linaro.org>
References: <20250114-str-enable-disable-usb-v1-0-c8405df47c19@linaro.org>
	 <20250114-str-enable-disable-usb-v1-5-c8405df47c19@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2
MIME-Version: 1.0
X-Original-Sender: andrew@codeconstruct.com.au
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@codeconstruct.com.au header.s=2022a header.b=DWaLK4Wa;
       spf=pass (google.com: domain of andrew@codeconstruct.com.au designates
 203.29.241.158 as permitted sender) smtp.mailfrom=andrew@codeconstruct.com.au;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeconstruct.com.au
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

On Tue, 2025-01-14 at 21:05 +0100, Krzysztof Kozlowski wrote:
> Replace ternary (condition ? "enable" : "disable") syntax with
> helpers
> from string_choices.h because:
> 1. Simple function call with one argument is easier to read.=C2=A0 Ternar=
y
> =C2=A0=C2=A0 operator has three arguments and with wrapping might lead to=
 quite
> =C2=A0=C2=A0 long code.
> 2. Is slightly shorter thus also easier to read.
> 3. It brings uniformity in the text - same string.
> 4. Allows deduping by the linker, which results in a smaller binary
> =C2=A0=C2=A0 file.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> =C2=A0drivers/usb/gadget/function/f_ecm.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 4 ++--
> =C2=A0drivers/usb/gadget/function/f_ncm.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 3 ++-
> =C2=A0drivers/usb/gadget/function/u_serial.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 3 ++-
> =C2=A0drivers/usb/gadget/legacy/inode.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 3 ++-
> =C2=A0drivers/usb/gadget/udc/aspeed-vhub/hub.c=C2=A0=C2=A0=C2=A0 |=C2=A0 =
3 ++-

Reviewed-by: Andrew Jeffery <andrew@codeconstruct.com.au> #aspeed

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/ee2f8d2315e27e800643195bdacba9f88ce2d2c6.camel%=
40codeconstruct.com.au.
