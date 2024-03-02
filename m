Return-Path: <usb-storage+bncBCVNPMX3XYOBB5OLRWXQMGQEDBSN6XI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 885B486F1C2
	for <lists+usb-storage@lfdr.de>; Sat,  2 Mar 2024 18:46:30 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5a061ace71fsf2905032eaf.1
        for <lists+usb-storage@lfdr.de>; Sat, 02 Mar 2024 09:46:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709401589; cv=pass;
        d=google.com; s=arc-20160816;
        b=XO6hUud2Z6Nv5ltXP4mo+hej5kof5VqNwRmkHyw2I9PFM+Pw7h6BjELsRodfdhp3PA
         1EsjK+xS1neS8Pykz639PR4UOVyIw2LoTB3VVWYKJNWz1h6mqh+fvN8Y+srEHY8yZd2h
         uJMDwGF6m9Qo29kRXAplWJGVaH+qX0ozQ8lC6KHkKB1OlRnr7u/ax6wyK1eLaHcL3IQy
         yw0mVR52GzqGtaSkeRpmU6BHQpjGD57iEgBRyWUN1q8CD72I+izRGtfKcupvRhcQNCw2
         HX/Uun8eIxDdVS4VQZ16z1eT1LFbv9vC0w+/bTSv0zzIXes0DMfxXyXZtFhXLOc3BWCq
         pJGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=85NTDb4uGP1MYckC0hcbY7qUWL8G7+AUhoEXVEkm6rk=;
        fh=QFVSVvGITLdJsgsAifmzobvn8jhaswgD4PxlR42EcBY=;
        b=Ye5qw1uICh3HphF49FXztIBb1NZ28zcIX2lQvnwOj2lAUOxKoMTqCJSIbmvnSvZ6RE
         suU3VFe4wpuxvy1nUaAYSD/rRYfs2oGufJIzZZrSbsiqL03dkCpD90wkLVt8eX7ohQdw
         /+A2XmQedbnbAe8/gu4IbCI0oXda2gl5QJhosppimLDktj6R1hafnOsIqo3iUuEiyRbh
         oW7jwHhJmFD/ztEd+IVI6i+3OQjjhH5YJkU31HAoOLEMDtPO9zN9bMDMw1TtriLunW4+
         P3xJzWnqf5j/QLp1rGJNTYLKINcRwBMvCSUtUMQitfYzErUx5GpJtekI64Qwlue/f14l
         g2Kw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=CeIjxMxV;
       spf=pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=larsm17@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709401589; x=1710006389; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=85NTDb4uGP1MYckC0hcbY7qUWL8G7+AUhoEXVEkm6rk=;
        b=UvNZEJNpd5LU0f2wts/8O5osP7Exd7iuhQccooJ8sHd1dMU7InLa9ETkFOqPLImRK1
         KAdsF/9jmwWcuWZLQTqco8Wzkkk7lC9v7Ee/pwnUK8MLM6mi80IVttQZZAnPWskd2EIS
         JIxS75/M7w2PMgMEVADaUN8zdlNLO6oEr+Qlo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709401589; x=1710006389;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=85NTDb4uGP1MYckC0hcbY7qUWL8G7+AUhoEXVEkm6rk=;
        b=ENSIpUfNccXh1ZtoLP2YOnYJs75iRkH6aaZOo7fjfl/Q/poJnjVoWIT193uLOIQWA4
         AXBMveGP3gJ7AMeFuN60FaZdhnSfxlcyuK6tmEf5AiNe5GCrlnEnOuC8lS+fX+hApfnO
         2IIOGQ9tTvCjytZFryIiw78huzParIgykaeUDOjfk5/74N6exonL5HogqrkRRMc8BEii
         ccTC6gArQmIVH5TXe7U+kDdY2mrml1Dxhg1Xkb9WardqL+54YY37sNCeHpQmhMDAcawF
         zhrFI2D1tSjWrnzBW7B/vUl//7Jjb0VXFCCV0KB6r32wKv0/UPnA3qOvvEe2nw448JOk
         S3dw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUwnAUiAdxtUwHRU23tLbIungoYQRz650S88VdYTSRDv9eei7RoaOMDWOMnmLUKStCgxGu1URxmQQd3xwCP/3rsfDPZCI92dYoD
X-Gm-Message-State: AOJu0YyAY23tiizMwOg5KgyMb/9T2LbN5DzMUEdHcKlW3ywICzYmKHs0
	QmXXF2RKlLVhZHfTRkAd06PRFU0EV2B5JJKK/jwl4Ohn3lazTIyTFabVUPyD+OE=
X-Google-Smtp-Source: AGHT+IH9GdqV2rhq2WRQ9AWuFkBiC+ZbIycPgjw1vqp3z3rRy1+B4fGqpcuJ7rssgEpu5Ltl0Sjv1A==
X-Received: by 2002:a4a:6558:0:b0:5a0:5fe8:e455 with SMTP id z24-20020a4a6558000000b005a05fe8e455mr4317092oog.4.1709401589249;
        Sat, 02 Mar 2024 09:46:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:1ac6:0:b0:5a0:3b61:9df7 with SMTP id 189-20020a4a1ac6000000b005a03b619df7ls431630oof.2.-pod-prod-08-us;
 Sat, 02 Mar 2024 09:46:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUlnsBjDnlfziHNqyWgfH7Of/pHVFnVk5uM5sberF+83+ftRakSco2lxPng3HSWjuxW2tofIM7B8iatgHvOaywaHgY9VzrIhugKuIK4YXM0vCurjHs=
X-Received: by 2002:a05:6830:25d3:b0:6e4:c688:daa1 with SMTP id d19-20020a05683025d300b006e4c688daa1mr226831otu.7.1709401588854;
        Sat, 02 Mar 2024 09:46:28 -0800 (PST)
Received: by 2002:a05:6808:1b0b:b0:3c1:dd51:3acd with SMTP id 5614622812f47-3c1dd513dedmsb6e;
        Sat, 2 Mar 2024 04:06:27 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXxYz89DUMaJietRYZCi0kBtrvegzDbYUqDtbiQuDW7Ma/a0dm/qZUBlWMY4D5mHGoqxKGTr0q8dyFVWIIAHOINqaKracYKpVq8biieEwxVFJYYBp8=
X-Received: by 2002:a17:902:da87:b0:1dc:8ba1:edc3 with SMTP id j7-20020a170902da8700b001dc8ba1edc3mr5841609plx.9.1709381186564;
        Sat, 02 Mar 2024 04:06:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709381186; cv=none;
        d=google.com; s=arc-20160816;
        b=at2nIxOzK0/eVPNixJ6k6/OUhczzPgkfHjPRd01nDMhb8JBfa/W0nitIkzDQra0qYy
         P9BybqJe7dBQTf9tGysDo9OQouXFeWBs+rnA9Fo5OfQ6iBZQPxGkId5W8tiRRdx3nfe8
         abypIlNrVVi1ZUbwCsEbKEzvUuWGjNm0frUmuivsF+VyuvmetLAH9KKQGTC0Mmnr3WsI
         6k1qsUzKR9XHj3UzzGjw+5YAAtg4bWbJA45wgt9FYpAZuVSAXMwe18YrkKBpwdV0HWEf
         5CDIMCCEwGPJfBa/PYfag08Q7QMOSLljweSC03LlDrJMewVNfV99Bt1t9LMNNE6sOAgZ
         MiEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=8HT9/Vy2V44ilIXrSvJD5YsCNGho8hRscI9pYyv6DRg=;
        fh=mVo+xQ5PMvNCd1FTR0WzScr9hS8wDID2KChkBv1Px2I=;
        b=UwOAdbGETU3vqT8lbqb7sZn12xbdhkBJKrKKQNgHk3I3CIUgeD1BV11YaBnTYrKqzS
         LtyF2+F5LE0nxR/KY7UT2h8wx6mm/VpQAnAifr9ZQ+Mk+8ijtdLlii8J5sUzy8jXfK4Q
         LOnewGAV6vPhHBa1oI7zGIj+3P8U26bfmfVG5Ig7TGfeP/vAzk2MiduOycSF+ss/aHDC
         MLdI4rRbASnu3KMrtKhjsLExDECJkuWxLUCewfPoZzZP6r8C3i0t3UsxM26RcwVK7d3G
         MSAoDe+0pL1upcZxL10V7vUq5IOkZP1Bz052z6dFBNX8S9deb7M4dF7lR8xNdTFV6ttQ
         wOHA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=CeIjxMxV;
       spf=pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=larsm17@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p17-20020a1709028a9100b001d74a67462fsor3869705plo.5.2024.03.02.04.06.26
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 02 Mar 2024 04:06:26 -0800 (PST)
Received-SPF: pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWhU/3WPJNV0ViHOMux1bySgwj7tHVpEW24sL0+x8Xtro0X69x6yWzA3GR6J5hwmnr2HhUg3VeV6VooJaF6ofxNxHwyRteBf3t/pCXq2CrwQUwskU8=
X-Received: by 2002:a17:90b:1094:b0:299:906b:488e with SMTP id gj20-20020a17090b109400b00299906b488emr4033682pjb.18.1709381186041;
        Sat, 02 Mar 2024 04:06:26 -0800 (PST)
Received: from [192.168.1.7] ([159.192.166.184])
        by smtp.googlemail.com with ESMTPSA id 1-20020a17090a0f0100b0029981c0d5c5sm5264227pjy.19.2024.03.02.04.06.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Mar 2024 04:06:25 -0800 (PST)
Message-ID: <960d9120-47b3-4961-9ce7-cd9e8b760220@gmail.com>
Date: Sat, 2 Mar 2024 19:06:20 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] usb-storage: Add Brain USB3-FW to IGNORE_UAS
To: Alan Stern <stern@rowland.harvard.edu>, Tom Hu <huxiaoying@kylinos.cn>
Cc: linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240226075936.1744353-1-huxiaoying@kylinos.cn>
 <a960f1c2-a858-498e-a0cf-4c15d74487d5@rowland.harvard.edu>
Content-Language: en-US
From: Lars Melin <larsm17@gmail.com>
In-Reply-To: <a960f1c2-a858-498e-a0cf-4c15d74487d5@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: larsm17@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=CeIjxMxV;       spf=pass
 (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=larsm17@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 2024-03-01 23:53, Alan Stern wrote:
>>   drivers/usb/storage/unusual_uas.h | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
>> index 1f8c9b16a0fb..98b7ff2c76ba 100644
>> --- a/drivers/usb/storage/unusual_uas.h
>> +++ b/drivers/usb/storage/unusual_uas.h
>> @@ -83,6 +83,13 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>>   		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>>   		US_FL_NO_REPORT_LUNS),
>>   
>> +/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
>> +UNUSUAL_DEV(0x1234, 0x1234, 0x0000, 0x9999,
> 
> The vendor and product ID values have a suspicious look, but they appear
> to be genuine.

Hi Alan,
it is of course a bogus Id, here is another one:

"SmartWi - Multi Room Solution is a Smart Card Reader hardware device. 
This driver was developed by SmartWi International A/S. The hardware id 
of this driver is USB/VID_1234&PID_1234."

found by googling vid_1234&pid_1234.

There are others like 1234:5678 which also looks suspicious.

thanks
Lars

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/960d9120-47b3-4961-9ce7-cd9e8b760220%40gmail.com.
