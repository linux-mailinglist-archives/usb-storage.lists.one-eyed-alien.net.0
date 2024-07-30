Return-Path: <usb-storage+bncBCTPRFE7TUKRBFNDUK2QMGQEFKYYDAY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x145.google.com (mail-lf1-x145.google.com [IPv6:2a00:1450:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 267BD940911
	for <lists+usb-storage@lfdr.de>; Tue, 30 Jul 2024 09:09:11 +0200 (CEST)
Received: by mail-lf1-x145.google.com with SMTP id 2adb3069b0e04-52efb74f550sf3405786e87.2
        for <lists+usb-storage@lfdr.de>; Tue, 30 Jul 2024 00:09:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722323350; cv=pass;
        d=google.com; s=arc-20160816;
        b=CSyR/xUpv7SWSnr5dWj/mW3h5xXcBchfG91OsQB+9u1YxyjW/OMSBrMkgiMsDcRZnq
         4rUggZpnCflYyK4OnHsEH629HcWCeHRqvbB7ytC3xuBpR7Z9vCYQNhHkwHvPmPbimlG/
         +7LQvblfB9g4qD6UvumiH3ueWyDt6/NqypfBhwwe4T2AXql1ccRQr5ua0X8oUAEvQqX5
         Mu1NopTEFOfdwhFs7K7896rQxVU/6Gh5kBsu6m2b8MYmkmSyevjfkzsfctLzPXfXqlWW
         qOov1XByLZJDEdRYCaXKo7TvVG5YeYdzVjay9nlbZ2A6zhSHLghyMdRxeuE8dDIis/Im
         o7Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=SD1kVNgQuX5hwImBEkE5wixCrJQBaV5zr6OnTiFRaNM=;
        fh=cTnCPMAs6npcSMUCnYYpBP7rQvvrzQcfeXYlhXeQQqM=;
        b=nYaFg7oF1iBgsyL1r4oIOWLc/R7P+eolNlaZ0/V14QgDTPq8jx2D3Vv7ahoFQ8IppG
         Hxz6JS0j7hLl2cXuquCj19H+Kf0AvFXXFgz8KlMnWcFzMWNkDvYnxftazXl6SoBmxf3M
         Zu8l9JrDTwufT5+BRQjlvvR4nGX/76Jx/FqjepubLJ3WmGNC/VkjYhXnu+bHPAcyAyHf
         YkHO74iB/3fsJjsuLYEQRjFiISzAZwsUEUXmSEsCt0B61M2q+4CBgzxfFFZZadJarYfn
         3TmyIogY0wEA4um1V41oYjHhrNRzw28Ztqz4K6E7oREQuCJz0YJuR8SlIS1+SU7Je8pf
         WzvQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=Ek+asg6p;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722323350; x=1722928150; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SD1kVNgQuX5hwImBEkE5wixCrJQBaV5zr6OnTiFRaNM=;
        b=BWFhm1OwP7AsxG79y2ztMOTwQxF40kcLRjA2YZFpalvLEKbQzUJ7zeTkX2cq7QZ+jE
         /rBu2RsGMYzyQ8ZPnzuM53Aeu8LNw1DWfy8qqYNX9QTK/wg3V5g34UPVH1duBA5ShB9L
         3WatA70BIO/P5H1qhn3Fl16pa8ienz41IiW/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722323350; x=1722928150;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SD1kVNgQuX5hwImBEkE5wixCrJQBaV5zr6OnTiFRaNM=;
        b=tJwnoyMI/w5gd/cLyQ/93CmIWFozurMhj8jVkW7N0P9ASD0ybem9ridEKIzJNf5hJi
         QyEd6UDWxt+Kqq+LUCrRSo+VAdNlvCqrhZCSZpbgAMnJ/OnjufAJ0vLVR+UTMZekIZDZ
         y8XyU87pXgnSMfNhCf5EbGAyJoxWaJITpnv1u55DIS73IdoIbVGcSvFnvCHG//STc49I
         nMAxzoTdiJR6Fhr8dCBrCQSGgRVfwdzqOWhCel/8l2Y7lfE6dTe3qGZAe+5EqZkZFF6b
         eVuh/EFxY0PsgyKJTtLhSwv9Mu2E1cZ48tt3osAxnuwZKaPTVvAqyvDDmbCHVD1CFmv2
         6SYQ==
X-Forwarded-Encrypted: i=2; AJvYcCWlcMuwxduiUNfO0JOMStE7R0SOdDzd4vrShhF+yJqBwMPWqZwGwmJcM+MDwFYSsXoIqvVXgMUQaV5tgrHxNc2KcFQxSzw7hrej
X-Gm-Message-State: AOJu0YyKg9OEz8vgEFg6d65VInM7M+Xt+7nv7KUO57TCuHAnszAgTDuW
	YffrDKz54IWFkRu+F32uRD3rzZc74pudHecz9YURHYOEPoyZcV2mPKr18udSNf8=
X-Google-Smtp-Source: AGHT+IF4/Km4Y/Q4MCE14z9p5RVM4LEE9QCTmy96651Owhhyao535pDBnMAkm2U5ExVzyGNiqlvY7g==
X-Received: by 2002:ac2:4198:0:b0:52e:9c69:b25b with SMTP id 2adb3069b0e04-5309b280789mr5946733e87.28.1722323350214;
        Tue, 30 Jul 2024 00:09:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:3051:b0:52f:c300:1e1f with SMTP id
 2adb3069b0e04-52fd420e216ls2298536e87.1.-pod-prod-02-eu; Tue, 30 Jul 2024
 00:09:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXtpXopNWnIPJQGD9pFRmQ/w2vbPO3wOxvfiU1YH7kynZNkt3Q+KfDgoenZ11mc4D/b2/6SGXrSbmCCBE3LVj4qO9HzVxCSU9RVcdCVSD1Ou9SPv4E=
X-Received: by 2002:ac2:58d3:0:b0:52c:e180:4eac with SMTP id 2adb3069b0e04-5309b2698a0mr5273103e87.9.1722323347830;
        Tue, 30 Jul 2024 00:09:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722323347; cv=none;
        d=google.com; s=arc-20160816;
        b=Re8sAjVME/1guoa+p9A/mWNEAxSq9JvOcB5WUyMOslMP6fEgEJ/9YHecZGrIGeed8D
         5xn6IdrWAsuM7KRbqJdEWKgeedDGyblwqQMeALwC2+53q5J/o0OSGBhlH4WmisCH7NDb
         Vi00OoOomrlVz20hEIQ7IEsTmydzDsq6EZLsKgNVyAbCxU+uYiGSB1l9Xb+Qp5TTF1e/
         XXSvc16hCXgDWNgHxnzz9w8gqeMBsjHlQ0Gjrw53AK03NHU6fzTbgCb03d321CfoSyhj
         u297UVs2TbwMMs53e9LoYBTNkOmS18ARV6c5QvebDLBHphSiuuuZJLwzgIV5fpI8ZZPT
         js/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=lVMhYxj4qNnzwO4iqD+18Ai3QfZ1Axvw0kbd5FN9fVs=;
        fh=2M5jbROIQrtqet++RvKQNseXLRbXENr0T0KMrwvUrI8=;
        b=RvE0iSKs7zwivS5K6i7lv2EXFIroa3lT+kwsdph7hrSqNg1zn46Ogkqwx/ZfDQDNkk
         ZHuZ9cfkpMq2+QvWWtjDMK85K/dgCApEOK4Sqli0TlGYgR8+YsxXNAfntbnnqwjkwgO1
         q9lUxBlMPCWJvVUxQ45tTqZ5BINlte1nXt0Uhw1hs4rBhqleVZlYgbaSTfD/fkl1Mxr0
         D924SPwmVL2rJ853lWfl1NCGMHdHELbQ2U7XfHJD/LWxSjOXo9WAUvP4YfJqLJspckC3
         PUeVycv08kGCeonv5ygNIKTcxO/p6OMcO0gNg3jifeSfrTd+OibXEK+UK45f/NV09A3E
         INtQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=Ek+asg6p;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 2adb3069b0e04-52fd5b8b20bsor3721557e87.2.2024.07.30.00.09.07
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 30 Jul 2024 00:09:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUnL/UmyK/HfCz97a1ACdd2j0aemOH+BJ1ahE6cD8uKIpT8I9osN2Z04Pj504FmKTVTZuCvaDAQOWL+X0jT8Ah5653w3KWJokfxKsVGx8RswEXTr5Y=
X-Received: by 2002:a2e:7c02:0:b0:2ef:2e8f:73e9 with SMTP id 38308e7fff4ca-2f12ee1bd2dmr64461041fa.37.1722323346904;
        Tue, 30 Jul 2024 00:09:06 -0700 (PDT)
Received: from ?IPV6:2001:a61:137b:5001:be5a:c750:b487:ff1b? ([2001:a61:137b:5001:be5a:c750:b487:ff1b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5afb9422c41sm5153828a12.82.2024.07.30.00.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jul 2024 00:09:06 -0700 (PDT)
Message-ID: <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
Date: Tue, 30 Jul 2024 09:09:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
To: Abhishek Tamboli <abhishektamboli9@gmail.com>, stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org, usb-storage@lists.one-eyed-alien.net,
 linux-usb@vger.kernel.org, skhan@linuxfoundation.org,
 dan.carpenter@linaro.org, rbmarliere@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20240729182348.451436-1-abhishektamboli9@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=Ek+asg6p;       spf=pass
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



On 29.07.24 20:23, Abhishek Tamboli wrote:
> Change bl_len from u16 to u32 to accommodate the necessary bit shifts.

Hi,

while this patch is technically correct, it papers over the issue.
Could you please

1. use a constant, where a constant is used
2. use the macros for converting endianness

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e72cc56a-3066-4cb8-848d-bfe27a48c095%40suse.com.
