Return-Path: <usb-storage+bncBCTPRFE7TUKRBNEBVC2QMGQEPXJOUPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x246.google.com (mail-lj1-x246.google.com [IPv6:2a00:1450:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 793D8942A03
	for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 11:15:34 +0200 (CEST)
Received: by mail-lj1-x246.google.com with SMTP id 38308e7fff4ca-2ef3157ae4csf58157281fa.2
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 02:15:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722417334; cv=pass;
        d=google.com; s=arc-20160816;
        b=T1g2haxfEWycsJ5Q/UbcEdTXfYSxe5y1zyy+iaBz/YxbOZT/F32OxnT1d643gWHNiw
         hrNrrRoblDHOPe+XWYO0waF4fvdZi4qSxysTOG4fZFPaajU++v3XdpsoeiycGmKGB8Ow
         r0htopeDU5YmxyFAE3hUeZ+KL1NI6Tcjd9efbszC0xRAjZ6FHgVoxpQajY+cVj6ydMh4
         s/sS2lyUZluA+z2Fl3m/o6GzhlACPEQWFs2eFK6oXAyAcqOLkDgiQb7Y+2h7enD1IGDH
         QmJ+6bCug4sFvw6PIWNPafWtTAS7J5xnGPbyZpbZOgD/ixH7emWIpM7+CKOTOD5eRe9e
         xMxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=mclpLr0ZJydpeOiYt5bhxqHOQKUCp5DplvBho8D3vY8=;
        fh=AjQhYk43RhnxVnLP1XxKCuRaWJphsqSc16rIOROt9hQ=;
        b=vWOS6RnTERaiD1KHVVeEp6P4aLjEvmAMHQNKUdrs9D/ti4RCO0EBRhzKLdn8dmaCjt
         4anVEAAQX0jc868mUWvvYv/LuLsOJySHRNpUbxrun5yfypeWwZ+wqcfH9ZUdYb/baYKc
         8v+IjEkFjesP7HgAs+kKT6K85zf8tWnRb9zL0kzeuOq5kvU12iGnfSEnWzTz3N3vZwzH
         p6/H+Va+MQrNoZlALRQpI0T7DBdY3hL3CD/j3NITNwBSbPML9xiebUBu04UakBLogJYG
         ez8GEt3h84B+0Ozy/hpI14liUCEVud9Ct3W1agWFRV+pAOVKuDC6qzi19UEg/ChwhqWk
         tD+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b="K8JZcjD/";
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722417334; x=1723022134; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mclpLr0ZJydpeOiYt5bhxqHOQKUCp5DplvBho8D3vY8=;
        b=KkjLXJTDmFWFBbGBMmIyPF4CoYH2qP06jLw1cUITpTJcGPmowztTBORVZkXP1FXiyj
         rbQoRa0ohdKr7iwcr50R6noZzEvTBnyMdP/Oqdq81px3GDNtQSmYIkM7FcqcyHNxCHs2
         X4iPmZNKG866vcpGAuLAayGHJqS/CmXA1nVTE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722417334; x=1723022134;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mclpLr0ZJydpeOiYt5bhxqHOQKUCp5DplvBho8D3vY8=;
        b=kRy0XeNlscYbcBHh/2GSwHPb+GuMlyAxySaFOnPuPzpXuGPkbSiWdO4jIZ3ZWy/ude
         ZX2ldK0DdxJ9osYeYRO4qYl3uZofICdAldSueHYx2HQiYSupzG13BNFaymszy07sn7YB
         VplcoFswsMblVqjJfl8NLOtdr/p5qGcgzNXEVPw7zdR0rnI4QVgYZPWris4Sv90IGv1+
         UN7axvJQSmzaoyNCnGvESJgbhz1UXdYahWBYh5UcPSMMk9yPdvycn2AOIk1WeYgQY+EY
         4n5IH/qSDiH3OX5jkR2aNLcxmkbUsCvPF/6KU3Xpp9aD3+PIH8dtwxSDTpAzTk2Q/k9m
         +GCA==
X-Forwarded-Encrypted: i=2; AJvYcCUGnrcNsm6nBF+adpP2ukzchGqGvLaXpd5SO70T5ZDfmGEIrt/tQ6RmfhZGwTb2SjInynat6QrGwQvZB6h8K9k/vOZIQCZle9PN
X-Gm-Message-State: AOJu0Yy9cLcN+u61YfYMg+i0uziaHIkip849Hk8CVkbe6+9OFVtZrAml
	rLdfuSaxWDUcloa7ZHydkRDgQlT/jqEeZMN8h2Tc9+yFZOF00MPZIBJftkbhlnU=
X-Google-Smtp-Source: AGHT+IEmL8KDlW2hG/rUWI1jnbE59Vqj5msLh9js0Kvk9r5DsjMCIToDHKkCaaUvmngl0PRnzIFolg==
X-Received: by 2002:a05:6512:3f06:b0:52c:cd77:fe03 with SMTP id 2adb3069b0e04-5309b270367mr11756399e87.14.1722417333225;
        Wed, 31 Jul 2024 02:15:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:3d05:b0:52f:d1b7:329a with SMTP id
 2adb3069b0e04-52fd4202aa2ls3141476e87.1.-pod-prod-05-eu; Wed, 31 Jul 2024
 02:15:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW3qjXwjR/E0CH8c5P5tPXF77xRwI6Li8eELiqCkK+qXK7xSJfCtMoZ2xA3A4l/0O0JDts0dZ9pBgvFFnXxTIHaJz4S1e8jOwJDKAUSKE0tDV2JF4A=
X-Received: by 2002:ac2:5506:0:b0:52e:710e:e4d2 with SMTP id 2adb3069b0e04-5309b2a5cdemr10076202e87.33.1722417330788;
        Wed, 31 Jul 2024 02:15:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722417330; cv=none;
        d=google.com; s=arc-20160816;
        b=xVKWmd113IhqBKvwyNz7EZldpZskNT9RGg3gZlp1wPaxPYOMJ0lVd+dhuzqfxD4NLu
         HAx8E1tnpMWVYaWHNXSgPO6vJFBDRpEsZr8kNQ8rbja8jRo5s58YVvvH5ZqEhddq5GUf
         XC3WnycAaoi3DvpxkG0CGQJNeIpLV2S9UGPkeJuZaU14A77OElvNeWw9iHVT2Mv5iHrj
         tnQq5WkmIJ2hr0Uc3ChpCZBJiKfI/XBr/6vaZplnxvYbRa0wSuGsDaygd2YtUHEvVzIz
         Ze13rMtNx+si9lpZ5yRfxeAZo/e8+61bZjxwvL1ZFC8ppK0pMJy+JGxYO7amsY49f9mk
         oCEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=GSGg8nbzE43rNqdiDkmvX9VXw5/3C+7aRCNi7MLm7Wg=;
        fh=S1SASAQdm3qUQK/qgQgmk0CW/l3flr+VDbkBMAOLgZM=;
        b=mldiYkHiWRB8EttxGBFPZji25bxFuR50M+pN9+A6q+WDWIIElNYk/YIw5ZbFO4Lsox
         PGNYNM/B2Iq5JxTyva9+Z9ioMGuTJ/ourSo3fZNwdV5/LMgw+oPweHjHREzXOoPA+iV8
         P58dbtyER57jFx4QPg3/80bC2IqTe64VmsgT5awG0elNElnGr6NFQdihauqig/2zlmeB
         VCXSjiG2eTsfbkjbbz72pNsr7DKk7xkdCQb1t2EsFijsTK+7LLFc4QvuyIOSwuVZWi5/
         KTiuv77iR9TnaH9gF4/wydi90Pj2+IEGalifdB5IABnd+mX6aEPglvHNo8/MMA85y7Um
         w5Cw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b="K8JZcjD/";
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 2adb3069b0e04-52fd5bd0b56sor5120122e87.7.2024.07.31.02.15.30
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 31 Jul 2024 02:15:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCU33Xly7OUT1jP4aDICVkTW0kZfKASO9+CSOkhNcbG6V/A+XCmZKcOMZ3NbliKhnihdy8jso5SgDdabJpWf8HSljg2h/faBMCSnfejJSMPX1lcIAsM=
X-Received: by 2002:a2e:880c:0:b0:2ef:c8a1:ff4 with SMTP id 38308e7fff4ca-2f12edfef3amr117885781fa.7.1722417329932;
        Wed, 31 Jul 2024 02:15:29 -0700 (PDT)
Received: from ?IPV6:2001:a61:137b:5001:be5a:c750:b487:ff1b? ([2001:a61:137b:5001:be5a:c750:b487:ff1b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acad4aaa3sm748177766b.138.2024.07.31.02.15.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 02:15:29 -0700 (PDT)
Message-ID: <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
Date: Wed, 31 Jul 2024 11:15:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
To: Abhishek Tamboli <abhishektamboli9@gmail.com>,
 Oliver Neukum <oneukum@suse.com>
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
 usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
 skhan@linuxfoundation.org, dan.carpenter@linaro.org, rbmarliere@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b="K8JZcjD/";       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com;       dara=pass header.i=@lists.one-eyed-alien.net
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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

Hi,

On 30.07.24 19:56, Abhishek Tamboli wrote:
> On Tue, Jul 30, 2024 at 09:09:05AM +0200, Oliver Neukum wrote:

>> 1. use a constant, where a constant is used
> I think you are suggesting that I should replace hard-coded values like the
> buffer size with named constants. For example:
> 
> #define BUF_SIZE 8
> unsigned char buf[BUF_SIZE];

Yes, but the constant we need to look at here is bl_len.
This is a variable needlessly.

>> 2. use the macros for converting endianness
> Can I use macros like cpu_to_le32 for converting the bl_num and bl_len values.
> Should I replace all instances of manual bitwise shifts with these macros?

Yes.

> For example:
> 
>      u32 bl_len = 0x200;
>      buf[0] = cpu_to_le32(bl_num) >> 24;
>      buf[4] = cpu_to_le32(bl_len) >> 24;
> 
> Is using cpu_to_le32 appropriate for the data format required by this
> device?

Well, the format is big endian. So, cpu_to_be32() will be required.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/5d7870b0-6b63-430b-8885-2509b33dc78a%40suse.com.
