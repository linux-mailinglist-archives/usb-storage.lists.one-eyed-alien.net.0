Return-Path: <usb-storage+bncBCVNPMX3XYOBBKFF5OZQMGQEGVAMEZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 9848F916A27
	for <lists+usb-storage@lfdr.de>; Tue, 25 Jun 2024 16:22:34 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-7066cba4d9esf3636459b3a.2
        for <lists+usb-storage@lfdr.de>; Tue, 25 Jun 2024 07:22:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719325353; cv=pass;
        d=google.com; s=arc-20160816;
        b=AahanSDswiAw5/5WmjND4kJVVXwKuUnxy/iM0rKfk6x5s0OwSRkUZrgUDOXwoTaNbB
         cMyZliZsWOpWxhS/mmN9Lf3mGmqXj84RMnYC1kM5WYfNac2dXbi7qFQe0/w4GQACtabJ
         oHPf6e/ioNhVqup/7399lmb9ZznMfL4wNTF5ASu4VaqYsANk8n54M/shIWxrWa9XsXJk
         XYLN5YmxLsc1tf3lzauXWRMnsEYPFO/pI6tNeB9a2W3CAMoJr95k/wksTcU2ravoEWF/
         YwgYO8Nr4aPELuXfY4eYc0yp+ObJg55ItVFiIMc9GR77Os3ZGMH27LLd74ygshRXmeKY
         GYkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=morePjXqIoX8f7C5TS5g94VR3E9m/jBh5L+XAXMCkxo=;
        fh=ZQGJcjwIc9Tx4o3uEQCFaXrkGorLx6mNhAmfblg2m1U=;
        b=Kxb07tYFqHQphgDyPPnPVxP61WKWhzJK6k1gNKodkBtVCf9SFiYRs8jNqfTlQST1GB
         KFLYoC+Tz1N6L9E/u8wM44QOQ8TmJqCWEffbeu3/aET+ihAvnyQIVpKO/kEs4zp2iy2r
         K6wovbP+n0Z2aQSYEk5dSNXdCBr3U3YvYVxxf1HjugNn1PXhM5CrACIQ++It6ryMSSD/
         SXgmoncGNjHgRWsvJnj6U7SlWUEqIQ2LJ8eWuEIrqvGPrR5bwceq5TjIXlHkVVJGXC59
         ni6sMSH9wBZrXCiUfmqPsGaXM65ZBlJHhyDcWfEXsfKS2HRsViJHbAU3DqOtbE5hbJw+
         cg+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=hyhUIdFa;
       spf=pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=larsm17@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1719325353; x=1719930153; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=morePjXqIoX8f7C5TS5g94VR3E9m/jBh5L+XAXMCkxo=;
        b=dTsHJRRzXTs+9EtMxbRRBAakE/QdGsamPZs9Qtm67qoGDjQSFmzVlZHtqesoBO51ne
         p9giwCvRDrpHbbZ67n1/KILCy0ZJua49BV8AbRvMdVpoTf5hE9iJ4FeZsdf7fhE4OI/B
         hUOi28WEMeynOG+SDki23yLLDHuZhtNHtPrzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719325353; x=1719930153;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=morePjXqIoX8f7C5TS5g94VR3E9m/jBh5L+XAXMCkxo=;
        b=Uy/xC+L0xXrMk7Tai10CbmJqTGUuX2z3C2yrTL8xkTOx8LWTChdqFPdcU6y9uuEzy9
         +Pg4qQgYCEUvfWktdwxQ7OEGvpNJMhDB+XSKjk3WKuR384cSAOjeBzZxZ8SlMQFTQR+l
         Z/yniHmG3c4XsywrQA+0sYgUw5PVBVQAGxpRHGkheGeJxg4ZTlpQIOVFWrDI29bBy3km
         2sh7JBAjCWB2SldkdoJZjtjQnyRAgGhh1GqKDIHEKpIqaeNPTM8DQh4pRKHXOySAGYgk
         gn8npkmArJ+rdjoRCXoHfE1tY6u3ysZm/gXdk0o7U42T6gGGUYxmFjAHWJ3WofQS8Rg9
         6P0Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUtb8q2P4hNlcx7DOmQIUhxAJbFDhOgUlWi1q1r9zoyg9bdnvUtiNdArI9gVd4sIkKF+87l293xrvgykLYjYPTcMUJGoK4ZpqQy
X-Gm-Message-State: AOJu0YxL5drixDnqNWK1d0CyJ3wc99bZ6wxfm7xTAEmBEkDwlIlxFPDS
	aml/iL/SwupjVqug5Ig+dFc1GCjD9rIu+kvuWN+kDXxXkGNlil3LX4nRLg98NkU=
X-Google-Smtp-Source: AGHT+IHfcEQTjzpUNi9lekvBGAflpZSMSzWQB0p9fSfQxawWJYqfd6Yv/lF3KimIXFOx9Z4UrsijxA==
X-Received: by 2002:a05:6a00:bd6:b0:706:742a:1c3b with SMTP id d2e1a72fcca58-706745bbed5mr5518335b3a.8.1719325352909;
        Tue, 25 Jun 2024 07:22:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:4205:b0:702:6c74:677 with SMTP id
 d2e1a72fcca58-7065ca9c4e8ls2055673b3a.0.-pod-prod-04-us; Tue, 25 Jun 2024
 07:22:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVmooxeaYYo2a/krY8pNk8AKvivRCEzAsbT2LWFfSYGAGwnsL4SY7WfC3fmQOQm992lBFnH4zEtYYo1hTaTvjzJcnPvJSoFsZ5QX+7Vd4b043c6mks=
X-Received: by 2002:a05:6a21:19b:b0:1b4:e956:ae64 with SMTP id adf61e73a8af0-1bcf8002a94mr8149186637.54.1719325351901;
        Tue, 25 Jun 2024 07:22:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719325351; cv=none;
        d=google.com; s=arc-20160816;
        b=GbazokLTmf35TEHHP2WCnT9A2p1IedZwTl0z99y1BXbKyhP2sSKrrW3ZJLCyiJSNPO
         saV4FJFY+Gx5hs09Cvs8ISB7RuPFqkIs6WRBsz0phrc/f35BwczRNluAFJziZthXRFUU
         1r/OAMDRYrsMNODgwyeRykOWwLpKS3mUN8QOr+9E12FqjqEgDkzzSe9DbF2vFdPOp9tR
         haW5JEds8otLbucWl7T0ryI5eLWiWxEOJwwrn1ADFdzFwT1N068EvoJU7/bwYDBOqH9h
         UP7WkxQ0kbZkUiErIkvb8jtOIjf6W7IRijo2jmr+kfxRybg2HKVu8Krqq881vP8qAtVV
         hRoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=yDGsqPcbEpd2LyCxfncGiISuzeJxwCMrz9xRntGBtZ8=;
        fh=5j0NODtzsTYUOBjZH2X4clV8waAlqfHTvElL9w/O67A=;
        b=IXupkNtFq90OHfrjxLzDZEHT9EI0D4UxOL5MHOnCBUB9y7oR/Ob50PHgpGHL9rjtx4
         gbK18hVsJBEMB+9D8PEuAMKWELTgEciwhNqs1zVEYRbd3l+NbahixWw3uXpgIkFTHt5e
         5YV35QZR+EdK+b/GS7o/Pq8c8OJV4Osj+PnknGAxZ9S4I3OgbIuYx4PM9BC+fHpaim4O
         RE2O2UEvnxrpV9KHdMRS8C5ZtarsZh5BGhvq86Kl6pGJ5QO02oQVoHyFWTyRksiZ3ZSL
         S0PVT3B5Ti6CFheDdfpMxaTIxkGAZ1mncpKnsRYYoSqJgM9pMnUWdJFkcLcJ8xCj3Qrs
         91hQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=hyhUIdFa;
       spf=pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=larsm17@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 41be03b00d2f7-7180e5f792csor3712300a12.6.2024.06.25.07.22.31
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 25 Jun 2024 07:22:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXhwZ+Sh81QDE5+/sR8YY86nicwPg05V8OYt7geoDLGXCYKtbS1UsckawvxPo57eDI/1bZvo+RYxGyBdT1nPJg61nn3CtwvsplSOZ1/vWW7QHsUgFw=
X-Received: by 2002:a17:90a:d490:b0:2c6:fabe:b2e0 with SMTP id 98e67ed59e1d1-2c8613db148mr6292425a91.26.1719325346698;
        Tue, 25 Jun 2024 07:22:26 -0700 (PDT)
Received: from [192.168.1.7] ([159.192.83.206])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-2c819dd0cf7sm8740279a91.48.2024.06.25.07.22.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jun 2024 07:22:26 -0700 (PDT)
Message-ID: <bb98f8f0-0326-4fc1-8b24-dd35ed0b80fb@gmail.com>
Date: Tue, 25 Jun 2024 21:22:20 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] drv/usb: Fix the issue with Realtek USB
 wireless adapter AC650
To: tuhaowen <tuhaowen@uniontech.com>, stern@rowland.harvard.edu,
 gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org, wangyuli@uniontech.com
References: <20240625070724.22044-1-tuhaowen@uniontech.com>
Content-Language: en-US
From: Lars Melin <larsm17@gmail.com>
In-Reply-To: <20240625070724.22044-1-tuhaowen@uniontech.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: larsm17@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=hyhUIdFa;       spf=pass
 (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=larsm17@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 2024-06-25 14:07, tuhaowen wrote:
> Due to the dual-mode functionality of the Realtek USB wireless
> adapter AC650, it initially presents itself as a flash drive
> before the driver is installed.
> 
> In Linux, multi-state devices are recognized as storage devices
> on startup because the driver has not yet been loaded.
> 
> As a result, the AC650 is identified as a DISK device at boot,
> preventing the use of its WLAN mode. The issue can only be
> resolved by unplugging and replugging the adapter.
> 

It can be resolved by manually ejecting the created cdrom drive or by 
using usb_modeswitch which will eject the drive as soon as it is 
detected. No need for unplugging/replugging.

thanks
Lars

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bb98f8f0-0326-4fc1-8b24-dd35ed0b80fb%40gmail.com.
