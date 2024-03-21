Return-Path: <usb-storage+bncBCY2ZJEUWQHBBUNY6KXQMGQENJKCLMA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x147.google.com (mail-lf1-x147.google.com [IPv6:2a00:1450:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BB68861EB
	for <lists+usb-storage@lfdr.de>; Thu, 21 Mar 2024 21:45:06 +0100 (CET)
Received: by mail-lf1-x147.google.com with SMTP id 2adb3069b0e04-513eee2dd2fsf1312406e87.1
        for <lists+usb-storage@lfdr.de>; Thu, 21 Mar 2024 13:45:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711053905; cv=pass;
        d=google.com; s=arc-20160816;
        b=sTehni6SD1ep3nDTAwENGcYyn45+k7PWKzVqbKn7P3XHymAa2uCgWgA4inohXzNXep
         Lm/BycQJe99xINaXeM5gZpgFzX28dvuJvrq8kMOpkdPYo8manSq20srMq9ea+UYfW4Uc
         mNibA0c7fQWy+4ioGcXwsmj8dHqc9Jao6ljSg8atoCb+3UuDRuwbYYl5I6iTZJw8oIUY
         ZT5/Kvu2K2nvHXbnWDMDK6WfGDEo3qz3Bhr24Fu3jwn57WYxANV+bO9VUVW+GxkzXdHM
         hdQOvm4o09vk8Oj2FtWphsm8SqVLZbewtLrzwbZkvcnlityOYXnRfwtbew6qB5zCNAqo
         VBAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:references:cc
         :to:from:subject:sender:dkim-signature;
        bh=qSlpcuhnRKFFgnFo/57y+yar7KkTjvL5OYgbuL01Ehg=;
        fh=sgOFzgfuoggGjNO+Gx9eUjAA00Mg4kKCfN6cxK1jn8A=;
        b=Ifpu9fD1gCur59hZ5E0kyB/bEoc3iEDBj9TZ1HHMSbiHqESpadpKM6XSbkyhwwLjeS
         TBXGv+JzxwRSJ20BwKW809J3nLD9ynSloUb5RqnUOJuHVbvO+D8yGhpv/0A2Od6CuCQg
         wkvojNU1+HfmtX20oL2t6A1Kt/JXlv6BqthXb2jlFS1qHw/XXQzVbk34qxdTNjEJ0bL8
         ZRDrG26tJDL0buJnUytfi1iuRESSErZSsr7uJ1X+VXWuUTRG+c7qI1Atz1d1+9Ypn8Iq
         0VNXssf2LkYnsMVZ1TWR5SY5Wg8OFkdLAQH/et3Vox7g6+RQPLYv+9Mqhz8X1HDOxZ19
         pJPw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711053905; x=1711658705; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:references:cc:to:from
         :subject:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=qSlpcuhnRKFFgnFo/57y+yar7KkTjvL5OYgbuL01Ehg=;
        b=d/7sSsshVKrs4MI5f/lwKROHJKFlcSK68jC/NFl/+ndLad2CoxpZoMVbBYSk4rYXQV
         ZOcynCVrF2mkbp0+HmESE6QSS2835gl7jL5qAkWF3EuxM2WuMAux4w9drmpoDhHhVpNO
         WGqnAdPn+UkziMeQznYdMQWon6WSZYyMRw/PA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711053905; x=1711658705;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:references:cc:to:from:subject:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qSlpcuhnRKFFgnFo/57y+yar7KkTjvL5OYgbuL01Ehg=;
        b=o5me02YI9+aELsDLPVFX/J2D+9DJm8QaBhn8ewgK8vxwHJekgnSSY4qT38zsIbjB2h
         q/hmtUH0eRsECww9/IopE62K+jWwMoIi/paggWJm0ffn1UYSYgjJ8DJm7f/A05mxGFqF
         p3xmWFMQDeTPOBFoT78CSgqYyOmd+xdk95tl/vYybUjeRRXgsTmnqsScKOBpV6+V4sKV
         1K/m5CuXuQJkR4/LJvuCa+4CQ+RubK5J15e9bak9ygMo7o4eVDzjhV1/2SL1J/WD0akp
         XT6NT1/h0kB3vULPlQXIuN6T10RZjelnGPZeKHpwg2CW8Mywce9d06K6oMQoaF8jc0T5
         VeUg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWgfR3I8XPWc/NZURxbTg5nBc/1wsjb0vGsOhvxV1DIGETD7F+QKib0upJKXL/uvjDGKJIob/I+5sBjkrMvGpZpW2FNX2UjIRoN
X-Gm-Message-State: AOJu0YwNgvkwLbo54phW8W3nn0P1IGtZHs4Ujiq23cyHJo/+yGIQCLpU
	/0Ru0ELRGujn5Ghl6+fqc4UIBjcDzvPVysFbDx3pW6nq7SmbvNML97O7HKLPMbg=
X-Google-Smtp-Source: AGHT+IGbSamv3wAYH83qV2dCLadhCxtRX1EtFLoXQ3AaMAWUD4iHk45W8yin8V11BmC1KPXR1fPAfw==
X-Received: by 2002:ac2:4daa:0:b0:513:3604:cae3 with SMTP id h10-20020ac24daa000000b005133604cae3mr371493lfe.1.1711053905493;
        Thu, 21 Mar 2024 13:45:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:2308:b0:515:8d23:eae9 with SMTP id
 o8-20020a056512230800b005158d23eae9ls536428lfu.1.-pod-prod-01-eu; Thu, 21 Mar
 2024 13:45:04 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXkkJg2nic2MkON06i2nT4GyaeBcBznaZO2c+JxbY1xldOT2ORRpChcBHZpe9nrw1hR1Ik3+oho8bRELUNXxAL0sutDEobKBhrDK6+FneEKLcphD7s=
X-Received: by 2002:ac2:4d8a:0:b0:513:cc4f:52b8 with SMTP id g10-20020ac24d8a000000b00513cc4f52b8mr377717lfe.12.1711053903489;
        Thu, 21 Mar 2024 13:45:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711053903; cv=none;
        d=google.com; s=arc-20160816;
        b=a+kRTpSsL7j/DzIDWzOOaQbyUl9apT2aJ7uZmtkbnRNYKTX0kZoWHHY419mUdwQkT6
         TgzferBdD2vQas6Lb89P+d2J/LcUXOOS4+GB0TJB9d7l6UXQV2GmWSdp4OXIHwD7Df1f
         R2l8jUO0GMKfkuC2EyvmiGKOwM2qwvO2RDuBM1n+b1AVIbuuaq527kqLjoySBU0nXURQ
         45StIoIHPUhvSt7hXuOC84OEdQ/qdGjacf9qVayA8mTau328esPp//ZuWdb3+DvxFXVw
         XbzLbqOMv71eLacpxdnPtiUoZL/JI1t26h048RLp0lIjIX8D87Ci9/ZMWAXEMULGld9d
         hzHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:references:cc:to:from
         :subject;
        bh=ZIeBPbZbsXFDKa+W2pzIbsr5wSjhFY+8ZE50pDI9MSY=;
        fh=tJBp+sa7RqGtuWBE9tj8cgWbKEwODdPX1frZkS9o8PM=;
        b=W3YOJWLGenLP+9iTFpAgQf/8wELl+y739NOIV/b1i09tc3cktEtIXcb11EAKPlPE0I
         r6L0+uWxwZx+rM2K1qZ6dmhV2zbXoP24dIM9H4gBBHBXFGtKW4lLwTeRPwbWkfzvTfD1
         eXsH9+Nwy4iIe/q7H9LH9/VqWmyqHgx18Pis4ef1+Q/zcOT712KwedbKfvUOZD2K6ZBU
         QHxbxO5jbotIFMM5re3qBVib4cSCLeolmmt2xrN1pBvNOtxQ3vaz7QFWC+ebARGC9cZH
         mymSXk93VB5l0f93rUePyIHcJCcW7ze1Yle+FjrscKtu/IdyvS2C0QYawV8sxEJgZs1G
         Vr/g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id u15-20020a05651220cf00b00513e2b7e50fsi108299lfr.511.2024.03.21.13.45.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2024 13:45:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (31.173.84.168) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Thu, 21 Mar
 2024 23:45:02 +0300
Subject: [usb-storage] Re: [PATCH v4] usb: storage: sddr55: fix sloppy typing
 in sddr55_{read|write}_data()
From: Sergey Shtylyov <s.shtylyov@omp.ru>
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <lvc-project@linuxtesting.org>
References: <a98c7ef0-ffb4-369a-ddee-dc5a1f8d6b89@omp.ru>
Organization: Open Mobile Platform
Message-ID: <155aa9a5-9b3b-bfe5-8786-a89c267f6349@omp.ru>
Date: Thu, 21 Mar 2024 23:45:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <a98c7ef0-ffb4-369a-ddee-dc5a1f8d6b89@omp.ru>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [31.173.84.168]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 03/21/2024 20:27:00
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 184337 [Mar 21 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 11 0.3.11
 5ecf9895443a5066245fcb91e8430edf92b1b594
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2;omp.ru:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.84.168
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 03/21/2024 20:32:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 3/21/2024 6:05:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-Original-Sender: s.shtylyov@omp.ru
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
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

Hello!

   Ignore this one, it was sent out with a wrong subject... :/

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/155aa9a5-9b3b-bfe5-8786-a89c267f6349%40omp.ru.
