Return-Path: <usb-storage+bncBCTPRFE7TUKRBHXCVS2QMGQERZSXO2Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x647.google.com (mail-ej1-x647.google.com [IPv6:2a00:1450:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFC69444DE
	for <lists+usb-storage@lfdr.de>; Thu,  1 Aug 2024 08:54:24 +0200 (CEST)
Received: by mail-ej1-x647.google.com with SMTP id a640c23a62f3a-a7aa5885be3sf589121066b.0
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 23:54:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722495264; cv=pass;
        d=google.com; s=arc-20160816;
        b=HToPMWihWKz0CEi0JIcFp0QyGtXbArKrqRrjFpctZgztSZnVZyB66YD4iJXakO22ze
         fApknmFnZgX/L01CFRUjucGBDgw84YzWanjfpNloCVlF7mfLUE7zV8pWA89W5Avr3iLd
         EvzC2f6CEo72rIxEQ95JurTADbRXa/EjwvJ8uQXcKF4ZSPja/qhKy4U7txR0U688tLiq
         iVPjXSbU9WuUF+Vb4mG3WYDyLG2Zf32AbkZkRLGl0mgOpA1/jHVLQFlQZcreCbOLbLDY
         4ZeD2+wq/XSyxx1f0u77RNVki0KpkQslp46yTW4kfSt2lRyTcNGMGu2H/Tp9Enuz0rUh
         WOiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=m42R0YCAwt45xrs9tYGX+S/4mPyxKETFFCICtdjvFBw=;
        fh=eOJi/svU/NqVrwFwr3yhK4S0ss3O60qWpbdOcgzdHfs=;
        b=alQQSe9N4G6FWYhBHtFIQbBGXnga2mIHQWNu/a+qf8Y4w3sI1RvDOySQC0Se95IJCM
         jnp9FDsbQqgmhMLUb5adTNuhHfJ0Vs+B+pfc/8vVekfgsiBxTjGWCdb6yb1qDzxHzabX
         BdhLyDY1557d9tybCmhcpapq91rIq09cW8EpYzgcJdv3Dp7Unr7K1a8KCJvk3QIFl+sO
         qmssXV5VW6TNbNTrWyeVjbuwFpcnsHq5uEgQUfHEMnDzRlaQfS16dyAyF5W8Sj+i82cC
         xybakyIqGtC1LkXHK0w9IQiIUDxLOMsG9IaPPXDlls2tfyujCvk7bJjeaWHkLi0puC7v
         y0Ug==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b="bitfKS/j";
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722495264; x=1723100064; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m42R0YCAwt45xrs9tYGX+S/4mPyxKETFFCICtdjvFBw=;
        b=Ql7UNBmMLMV/pz84lRrmKHo2rCU4p0wAxbXLUeNGWuycq6tL8nnaJ6bSfIVSN8NRso
         KG4/xaB3yKHWooaPGFV+Rk7hPgZ61Y0jaJi9W42Axlhft19TmlcOAAcKLaycCpLprUVG
         s7By4PvJ98flkzt9P0cE1OWEIwQ8ozrJosc7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722495264; x=1723100064;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m42R0YCAwt45xrs9tYGX+S/4mPyxKETFFCICtdjvFBw=;
        b=k9JDWm4MqjjDQ1ylgN+DGDeV87kJfY3RR2SxRz/8yoHdoyhxtguWZ1Ap7xt4GO4OBc
         kOmVCvTLCvjh5nH93/d9BueFUje6cOxsdkrd0gCR0Kp54mzEjLg3s+rGe/7EZbnz1U6r
         V0Ml6vP0Cf4qOqR5tFvq8LPDV/3qydpiSEYUtZi+hOlgsaMxZGy8sUSUd8XzhnSxvhQN
         ARYMgahqg2ebdUUyuMzkI89IFKTc+b9omLgWvtQMiAljaoDyD6AS+1h3NVuIyJgTEry8
         aY4qV+APwZDCC4Qc5eCL3ISrdYfa7KG8IaYB5Oejaeea5+kMjevgbEj40EyrWvz1SdPB
         BCuA==
X-Forwarded-Encrypted: i=2; AJvYcCXQckB0Yd8tOYusucYqZlRCElPUNi0crBSagOdRvtvc+UT7gQgivmYB30mN1tqnFApy0tSRsY3n3e4tzg5cLIzvNs73Yjtr0wNM
X-Gm-Message-State: AOJu0Yzdu4dGpiNiBci7A7VadMDCyhgH0oZXK07udsmLqXi1s6/NBaYs
	WhDrHvSrbYjlBp8smLlwqD8CfXeynvfl2pbvQ2nyM2Wc++1mRQI/hv+2yLPlBoY=
X-Google-Smtp-Source: AGHT+IHLXwSU3lO+ehdNxSe3lYn72GbyV2UljYcfWSqvOtA5dTQLBkRjQZm6mYkPiigSAQbe08jr6w==
X-Received: by 2002:a17:907:a03:b0:a7a:af5d:f30b with SMTP id a640c23a62f3a-a7daf61daccmr109310866b.66.1722495263357;
        Wed, 31 Jul 2024 23:54:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4010:b0:57d:555d:8ddd with SMTP id
 4fb4d7f45d1cf-5ac08e38548ls69969a12.0.-pod-prod-02-eu; Wed, 31 Jul 2024
 23:54:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVQIhmF0dLt80XbxfnDFjzyV24D7sYhHPqnC2p65Fcc0BR8WqlH1PT/QVsL4k0xzwcfU6CckJgKVIdjO2GEK1cy/CRkuS7dmdXgx8h8QPkGqv2Hbr0=
X-Received: by 2002:a17:907:9493:b0:a7a:ab1a:2d67 with SMTP id a640c23a62f3a-a7daf28f549mr99537566b.1.1722495261036;
        Wed, 31 Jul 2024 23:54:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722495261; cv=none;
        d=google.com; s=arc-20160816;
        b=Zfjv7ZQui/BVtugwC9yBYUl0+rNNWSo2cAWQu3P0C+Wta2TDKf/OiyeG46lQLCI96B
         7gGFAR2wxMzMWrNIKFoiB4QCCknNmiRqvJD7vKRawATn35qwkmXbqoipXysB8ioL4dVb
         mIm4erQztyf6me2dONnQJyg1EKBraig0nA2JgkqQlFUrwuxARNMjXu18GlJySccXJ+0J
         u4rnR9qKY34YNnEk4zo3Axdyi7uJ+8BEr5Xov88AwaVSD7zDF2CrKJIpbJpTf7Cz4wEq
         LRzI4ljftwto6WyFhXueLomH98pM4XQGRioo5ab5K4ilj5CyhmkBpY2bw56BVQjsJAhi
         Io4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=REx9tnLqztn/PqERh1PtnQ3iEqlwlxeIi55PMWMtu0k=;
        fh=4tTp7PPUIPV1nS3SSNgNzgJQzOuTpFSj/MvcaWhQQvM=;
        b=dttqzF3Tz/YVP6Q81e7uXRhM9MLhUlErjTaDMAB7zRXmClmrEUFMHT7Pv5USDHbhsK
         Y0ZcvtO6JU5Yh6gRwxNYh8mGSAdRN/LR6wUiGh00vIbvB4gp8BSrscH95bl9yTCQRJS3
         o25oQ4x3qX8Ir9z4M0FfbomgB55VJpXpF6qAeiraIyp+XPzQ04iqa5DRkwr1V1qPA4Ck
         uTiRiGF8Uqs0dBj5qoAccqFeA6fF8fsDmvH14s4OkSbZlY810zTj9WXhpza6gc7HjmiY
         RxQMSbA+7JlnXND2F+anI+IlmaR9Q1YOA2HSUxYYmG80ZcnacbBNTHf5HfLIGUT3ugWb
         /3dQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b="bitfKS/j";
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a640c23a62f3a-a7acac601ccsor426227266b.16.2024.07.31.23.54.21
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 31 Jul 2024 23:54:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWL5MO3f20LPtampnYoyoGXBfpyg+pxJ7FvcdpNYNtzl33zMZGEfmDr7RKvC/LqUyRLU4MHpw9YIhiPDO9OptwI7xZZnZt/REPJvcg7NES/xv+huIo=
X-Received: by 2002:a17:907:724e:b0:a7a:a2e3:3734 with SMTP id a640c23a62f3a-a7daf2d5ca8mr93384466b.28.1722495260167;
        Wed, 31 Jul 2024 23:54:20 -0700 (PDT)
Received: from ?IPV6:2001:a61:137b:5001:be5a:c750:b487:ff1b? ([2001:a61:137b:5001:be5a:c750:b487:ff1b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acab53704sm856031766b.86.2024.07.31.23.54.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 23:54:19 -0700 (PDT)
Message-ID: <f5d4711f-9b4a-457c-b68c-c2e9aefbe4a8@suse.com>
Date: Thu, 1 Aug 2024 08:54:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
To: Alan Stern <stern@rowland.harvard.edu>,
 Abhishek Tamboli <abhishektamboli9@gmail.com>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com,
 usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
 skhan@linuxfoundation.org, dan.carpenter@linaro.org, rbmarliere@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
 <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
 <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
 <Zqp8vbbIC8E/XrQY@embed-PC.myguest.virtualbox.org>
 <b35a344a-018b-44ae-975a-7767a3d5b6ec@rowland.harvard.edu>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <b35a344a-018b-44ae-975a-7767a3d5b6ec@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b="bitfKS/j";       spf=pass
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



On 31.07.24 20:19, Alan Stern wrote:
> On Wed, Jul 31, 2024 at 11:34:45PM +0530, Abhishek Tamboli wrote:
>> On Wed, Jul 31, 2024 at 10:04:33AM -0400, Alan Stern wrote:

Hi,

I should make my reasoning clearer.

>>> Replacing the variable with a constant won't make much difference.  The
>>> compiler will realize that bl_len has a constant value and will generate
>>> appropriate code anyway.  I think just changing the type is a fine fix.

While that is absolutely true, it kind of removes the reason for the patch
in the first place. The code gcc generates is unlikely to be changed.

We are reacting to a warning an automatic tool generates. That is a good thing.
We should have clean code. The question is how we react to such a report.
It just seems to me that if we fix such a warning, the code should really be clean
after that. Just doing the minimum that will make the checker shut up is
no good.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f5d4711f-9b4a-457c-b68c-c2e9aefbe4a8%40suse.com.
