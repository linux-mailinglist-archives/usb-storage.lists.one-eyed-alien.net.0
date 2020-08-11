Return-Path: <usb-storage+bncBC27X66SWQMBB75KZP4QKGQEJX7BZBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 5580C241F38
	for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 19:29:37 +0200 (CEST)
Received: by mail-yb1-xb45.google.com with SMTP id b127sf17495559ybh.21
        for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 10:29:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597166976; cv=pass;
        d=google.com; s=arc-20160816;
        b=sbsKIevhk4QsjIA40C1jFckpdH5ANMVLecR0gpOwrsB+1HABx5VQaBhClll94PqPRU
         unh/W6yVubx0qcwiBh5fMa3HTRTSRZ3/gos0M1D8deOx7dDZhO5wdu6j7RI0sKxnLo+F
         NTy4T9AIeQwoLAAYSJpM//Zgdozsv8ntAyZ4K2W3mYJh196IsBj2NsAckYa6mqq9pP2T
         hKMZz7Alc5yGbHA/rJRMxnuYQiff5gjD9UU2AghqKW05Uk5JhDuUdkRRh85thrXxcwTf
         O29G576wrbJw7bMUQk6jeaRGvKU1FOElmv0bQaweshfS7fZ+cJfbR0jh1rIpffsrPxFw
         wF2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=63dtwVbbz3/ecawENmUx22UWCA62rSe75thq6mFggRA=;
        b=aFDxzKss6yGv8NEui5HEO3+bU1ouAUGs+TE6jBqhv5Utj6AcGc7rAQ+TGn3FpagW6r
         3QZ4FLEWwlqsu/gaD5DoR+e3pDiK6KWXpHFMTGw09mKFZbUTuV7JGwLV2g0D+QlmuwlV
         E9vwJHCIoVB28N5OiHdiIcAbOEUkCOOeBSyXo5xO+E4AhObwm3cHMAVFKjvOrwVKbNnL
         IppKKLLncGQE6C8LRy4nbi9BEv2o7XXeuxR5F3qzk+y1SZFwNiXyj5Fwa6iOb7m2IwpC
         2lngMW0cbGtmB/tISR1JC0bqfx8D0n79vjlTswEgQvSKKoBWNovSizXFro3726sJVxnk
         Fk+Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EexQotk6;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=63dtwVbbz3/ecawENmUx22UWCA62rSe75thq6mFggRA=;
        b=gUlrqxtsx+t9EQBrc9Jhlt79WN1JO1IR7aH8OoOiPqNJmOpPhhD5AhZAfYL3D4BHuG
         xFRCvd1Ik4AfJaYX4Yzw1AdDuBMaaiP17FRRFkyFvUTAgLorMyU7fxR2YfdtlRFtJZm/
         zQbb+I15bn0isZVHXPkQdJn9dRyFi7awFI6x0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=63dtwVbbz3/ecawENmUx22UWCA62rSe75thq6mFggRA=;
        b=M8KPXt0Z+yBpjErgje4dbPJDLKKDofBaa1r5FhFYqNn2Dq28kRaZnNoifCQDYkBpr/
         HCSfidV7Z8wX8pOeAh1Cs+ct3QM0aVc/YuWzmOO835wQO+0YaSvCkJjX6pL2qxlUFH1v
         z71Kh6DF93X3ayz10eej32me5Cwo0x4X2bJicnF/kS1oOo3CEjNKv3dcl8WdlyEo7YI+
         Y/pcrOpxqnqq9mBiHPMeMY96PkmyGEvCok6trt/5A0qmSpMtVjeDwLuDVe+SMBip+XhS
         dmJFoZ4ks3StffkxMRcNOaY+VYwyxiO37MQkbdeVYeU87bJovFUAvBGdZHIOa7sC8+Jy
         /DmQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531JOTh8lAqMPNCdDsx3i3PCpZogilLbsZlEgExRZoOiqWI+nHay
	Ta8nAgaOQLfn2frIkf4F/DUH/Q==
X-Google-Smtp-Source: ABdhPJxNWsSj72WFgyuAnB808znByz/MGpWstEJwLGBDgidXBpfHKPLv7ZCTZJIeg8xHT/osXpM7Tw==
X-Received: by 2002:a25:5f0c:: with SMTP id t12mr49721277ybb.54.1597166976080;
        Tue, 11 Aug 2020 10:29:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:d451:: with SMTP id m78ls8274713ybf.1.gmail; Tue, 11 Aug
 2020 10:29:35 -0700 (PDT)
X-Received: by 2002:a25:8890:: with SMTP id d16mr50593296ybl.349.1597166975547;
        Tue, 11 Aug 2020 10:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597166975; cv=none;
        d=google.com; s=arc-20160816;
        b=CcB18q/lPiSSembyhbtDAU+Y3SeO0bb64Jjd2uMzMivyur2vJ9IY4XnQfgPbBmCub0
         Q1pULsdZ/Ll6kub6r/qhghOLrpVb0oBe2iUJLIFGEG2IIeaacS02CXFvj/WW0PLyo930
         91ZjIhjFoFpnzOi//71oXgU2QzGtY9Gu475haYQfIJcLRMNM+6CoJmSkoB2vy3aA1mur
         1/FgH7lVioxyCairpBz6yKV7rcIu6YeKCHElGFAstv5teZJTEOdU+aYaksWXMCw7AVp5
         41DSh3X9nK5FYAg4byxjRsoQmeA3RJ1BvuSQAVn6ECuM3NZvYn6h+UNktfYTw6t3LbeF
         J7ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=/kCCiP1A994GEPhfTMliHq1uK+Sv/vNDYIXMua8VMzw=;
        b=UaYp90SAieIsa8jCD4Kw2CsCpkq+/pUMEN0tB6tdQl3c4VzYR+2KeOuik7TmZ3o7aQ
         j8Gyzsu8TuCm/5xwD3Mm2q7327SfKHfUqp93wmcN4U5GRg27sRXVTr20mydFkcUcJSin
         H/uSyj57bxoLfSzG2yaveJBmmV2qsu6nvspeJdmWz0RMf6nLcNsjzQVtQmcDek8rIidP
         2hSPZer1LryAEqR51sIs5u1xgJynUg2kl0S5UjfRuWjRZh1Zs2jBG7zAssyPCGCTg//1
         DTeVwPiWTZ9PmxSIq+iIy4NqqDt7xxE6OXymAwzBThOwZXoqTa+X+QtNm3kyxoizINmP
         EPOw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EexQotk6;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id t3si20246618ybt.290.2020.08.11.10.29.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Aug 2020 10:29:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-SQioAJJjMgiwIcW5Zr3jIA-1; Tue, 11 Aug 2020 13:29:33 -0400
X-MC-Unique: SQioAJJjMgiwIcW5Zr3jIA-1
Received: by mail-qt1-f198.google.com with SMTP id g10so10309091qtr.19
        for <usb-storage@lists.one-eyed-alien.net>; Tue, 11 Aug 2020 10:29:33 -0700 (PDT)
X-Received: by 2002:ac8:6e87:: with SMTP id c7mr2347411qtv.62.1597166972853;
        Tue, 11 Aug 2020 10:29:32 -0700 (PDT)
X-Received: by 2002:ac8:6e87:: with SMTP id c7mr2347311qtv.62.1597166971642;
        Tue, 11 Aug 2020 10:29:31 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id g55sm20376876qta.94.2020.08.11.10.29.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 10:29:31 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] USB: realtek_cr: fix return check for dma functions
To: Alan Stern <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, acozzette@cs.hmc.edu,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
References: <20200811151505.12222-1-trix@redhat.com>
 <20200811160348.GD335280@rowland.harvard.edu>
From: Tom Rix <trix@redhat.com>
Message-ID: <1f7d5a64-f264-4fed-bf90-b64e2693652d@redhat.com>
Date: Tue, 11 Aug 2020 10:29:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200811160348.GD335280@rowland.harvard.edu>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EexQotk6;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 8/11/20 9:03 AM, Alan Stern wrote:
> On Tue, Aug 11, 2020 at 08:15:05AM -0700, trix@redhat.com wrote:
>> From: Tom Rix <trix@redhat.com>
>>
>> clang static analysis reports this representative problem
>>
>> realtek_cr.c:639:3: warning: The left expression of the compound
>>   assignment is an uninitialized value. The computed value will
>>   also be garbage
>>     SET_BIT(value, 2);
>>     ^~~~~~~~~~~~~~~~~
>>
>> value is set by a successful call to rts51x_read_mem()
>>
>> 	retval = rts51x_read_mem(us, 0xFE77, &value, 1);
>> 	if (retval < 0)
>> 		return -EIO;
>>
>> A successful call to rts51x_read_mem returns 0, failure can
>> return positive and negative values.  This check is wrong
>> for a number of functions.  Fix the retval check.
>>
>> Fixes: 065e60964e29 ("ums_realtek: do not use stack memory for DMA")
>> Signed-off-by: Tom Rix <trix@redhat.com>
>> ---
>>  drivers/usb/storage/realtek_cr.c | 36 ++++++++++++++++----------------
>>  1 file changed, 18 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
>> index 3789698d9d3c..b983753e2368 100644
>> --- a/drivers/usb/storage/realtek_cr.c
>> +++ b/drivers/usb/storage/realtek_cr.c
>> @@ -481,16 +481,16 @@ static int enable_oscillator(struct us_data *us)
>>  	u8 value;
>>  
>>  	retval = rts51x_read_mem(us, 0xFE77, &value, 1);
>> -	if (retval < 0)
>> +	if (retval != STATUS_SUCCESS)
>>  		return -EIO;
> Instead of changing all these call sites, wouldn't it be a lot easier 
> just to change rts51x_read_mem() to make it always return a negative 
> value (such as -EIO) when there's an error?
>
> Alan Stern

I thought about that but there was already existing (retval != STATUS_SUCCESS) checks for these calls.

Tom

>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1f7d5a64-f264-4fed-bf90-b64e2693652d%40redhat.com.
