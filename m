Return-Path: <usb-storage+bncBDQ7PBVA4YBBB7ENVCVQMGQEDLWC45A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x245.google.com (mail-lj1-x245.google.com [IPv6:2a00:1450:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 0464F800FDA
	for <lists+usb-storage@lfdr.de>; Fri,  1 Dec 2023 17:17:02 +0100 (CET)
Received: by mail-lj1-x245.google.com with SMTP id 38308e7fff4ca-2c9c05fe6c0sf16021911fa.0
        for <lists+usb-storage@lfdr.de>; Fri, 01 Dec 2023 08:17:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701447421; cv=pass;
        d=google.com; s=arc-20160816;
        b=yUm9iYrkjhhWL3A8Bn3VLRrbemzjnfPWdSAV5qQZsRBbaszARr1ZW4RZ/oeR9QU6P2
         TafY0jCv+lmp6iZ2cMrUPAlJxtdNmHkRriOLWXB++PCzb618b1Ke9KXHX2Sr6R9eRvD4
         bb7M+V7/SCGWm0YORLGl1TKU7gIx5z1Xv8VH0tazCip0d99niSrImGlfR2zKx/t9/gpk
         rL6muXy43DDBz+8Y5E5bUd2LCP7efk65U63ZvR535ibmt4OTJf9gNOoQC1CjviDo0uXA
         qLuYfrRMxy5U7iyCEH5eIsiuzdhmLZgesdFNoLmbMv6kVhVAOkJmdAr744NoBCfqUwZK
         9Ddg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=3ZtY9Z9SRbs9FBB3ouq0Az2LN3JxjcVxUPAQ19qW2OU=;
        fh=9UOsKgbnpP8SUwVzA7H4gzZGUEEDxAdkkxqGsRcFlEU=;
        b=JFl1JJTnPo5ynPJmPsFCoGgoul3J0pR4Qu5xrV59f1Xubhpti6SztIR2419Vl42V9+
         3wT+ZGUoxkjEA5p8juwXbCpf52FF6tz3Dov1/n8KhOvEyJH4eBTKN9TkdYGBQSus5Ci5
         U5arHC6smaf/sjPMGjTdx4Hc0jdt2HMIQmIpD5lqcb0I4/McX2zJ9MfLBBe+RO8vCQ3y
         rxziqbXkRCwMi6pTL0tci1cvUAOxl2eSNNLeiWTHQFCIknsf9AUZ8e9lOUH1qyKQPAZ6
         Fm0gGAhUlmp42qd8ONNqcrYsPGechm/khnvMrXu1nh+0zTwZ+o7mmygR7AFsP0B8ZvFB
         DBTA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ehu4Af3E;
       spf=pass (google.com: domain of sergei.shtylyov@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=sergei.shtylyov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1701447421; x=1702052221; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3ZtY9Z9SRbs9FBB3ouq0Az2LN3JxjcVxUPAQ19qW2OU=;
        b=HB+wohcLL2zy9wxLSPO/HYA6rlolH+p0SOipxENmMkUBQvPJYKbKxD87yTv1bSH9Ta
         iXg/P7z/0f2xzTqP6St37j8OeO7atklgyBqZDQNT+VLuQXaghc65RMNrFJptahyWronv
         woGsPhRzHZJTHnB7mAucF8tIum/0jhmBfXTFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701447421; x=1702052221;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3ZtY9Z9SRbs9FBB3ouq0Az2LN3JxjcVxUPAQ19qW2OU=;
        b=cjsDtJKOLDLSvZnqDaXFn9EOlNZHuF7t9yXLkFQ/+Jf564riNLDgnvaVL7axt7K4uy
         DVaEuCZV6qvGfJi7GW8BZ720+MZtRs6BRUON/JK2Z7Nv5lpsubY8M8CNXmKZ3yJmxaXq
         hQOxQs0uamxNKT23hr9P3Jzxt4I4hZoz9t0lCsUrN4CGS8GB9izFkH1vV5IaSsKX4H4z
         rZwkqM1llFMdvIfGxiFmzWenkalHsLLqw+4JlFVjQI7IIMTFq4l+MyeNZzipBeqnp1ru
         K96OAQDOblx0zGliFbDiM1l5X736ZFzkwVZPI4EHr7JKMatGBqlmy4iQImD9cHdiEySc
         GC4w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yym83sWidgSg9KtpmzxO3VS2b8o9poDVYLWc+jAeSiIeS6Fvlsa
	ZK5t97iXKHTMq0yVQ0t97z0F5A==
X-Google-Smtp-Source: AGHT+IFMyZg0tDskswVFOb5idYIG2p9Sro/hNxFrVmHrpCS0lB+2n4/VFwP0iAV0z6cdxT/TKa0Qpg==
X-Received: by 2002:a05:651c:231f:b0:2c9:bbf5:a3c2 with SMTP id bi31-20020a05651c231f00b002c9bbf5a3c2mr954798ljb.8.1701447421194;
        Fri, 01 Dec 2023 08:17:01 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:651c:221d:b0:2c1:261b:7353 with SMTP id
 y29-20020a05651c221d00b002c1261b7353ls182763ljq.0.-pod-prod-00-eu; Fri, 01
 Dec 2023 08:16:59 -0800 (PST)
X-Received: by 2002:a05:6512:1043:b0:50b:c60b:25ce with SMTP id c3-20020a056512104300b0050bc60b25cemr1025880lfb.7.1701447418992;
        Fri, 01 Dec 2023 08:16:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701447418; cv=none;
        d=google.com; s=arc-20160816;
        b=ZWgzxff4vot/cgAV0UT8eCHOPq81WNqTLRtpFUjuUgwp0tP2phImRecWFjwLEhoxQ4
         b4MxJWtR9aBbQUty73nx3N0pdGSa90tlkgUr1jJyPLejE2APPJm9R74IYnfaPNiibPdS
         I49joS9R0ISo+x82V/CBBEwWLGf4VlhwumDWsGDH0QFTLWY1YF577QhrglJcAi8oKk/O
         2r6WuHIE+2SchkoycoWwcdcxYeHNlWbvchdqaHEWq+m4qhRgybl+te1mFv72BxnvAqwS
         FFUdX/hFMrhbjUivj+3EkrT1p/kOhnv0f/Vp8lTLGAGq5tbfKJLKg6gurgfzoOJqzkD5
         dwzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rRyIK44k8WakD7ulTyl1AC/ua3tTG7/92vD0ifCxVf0=;
        fh=9UOsKgbnpP8SUwVzA7H4gzZGUEEDxAdkkxqGsRcFlEU=;
        b=yQZmcimtHZ7QS7jzIIZXe76mKG31Ro/XCEKS2ZZrAFkYDTIck9wgFYY34Noeidlg07
         NaPpXLZm1o0hrgXZpPrTODS70uKzwuZsd2Termk/FQLDoowD1bvLemiMBqmP5XDd628C
         u26tCoIK6iL17TN5BAtywzSDjvZhMoZrxiu7ddEJdLo6NeWjDUQMol2FemFPahqt3ikt
         zDnwTlUxS5WdbyblLayZPOlPQZ8AxdO/WS/LiTdd9LgADyy2A2FJ6uhHEhlycJovkZ8J
         SrXd56J+W+jK5rp735JMmmcqUTdOrL2vqWJSkPOgZ97s/muQod13b0ezccteIbnf90UI
         ljqQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ehu4Af3E;
       spf=pass (google.com: domain of sergei.shtylyov@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=sergei.shtylyov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id g12-20020a19e04c000000b0050abb505f9fsor528508lfj.12.2023.12.01.08.16.58
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 01 Dec 2023 08:16:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sergei.shtylyov@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6512:3e22:b0:50b:c7bd:2352 with SMTP id i34-20020a0565123e2200b0050bc7bd2352mr1264861lfv.14.1701447418382;
        Fri, 01 Dec 2023 08:16:58 -0800 (PST)
Received: from [192.168.1.104] ([31.173.84.39])
        by smtp.gmail.com with ESMTPSA id e7-20020a05651236c700b0050bc45777absm457838lfs.113.2023.12.01.08.16.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Dec 2023 08:16:58 -0800 (PST)
Subject: [usb-storage] Re: [PATCH v2] usb: storage: sddr55: clean up variable type
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Karina Yankevich <k.yankevich@omp.ru>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 lvc-project@linuxtesting.org
References: <53bc0584-51eb-8bb7-de48-ca07fccafc19@gmail.com>
 <20230227112541.14849-1-k.yankevich@omp.ru> <Y/yaB2A8qwgRkqVO@kroah.com>
From: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Message-ID: <a1296b9a-c27e-3b35-e256-32350fb2a83e@gmail.com>
Date: Fri, 1 Dec 2023 19:16:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <Y/yaB2A8qwgRkqVO@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: sergei.shtylyov@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Ehu4Af3E;       spf=pass
 (google.com: domain of sergei.shtylyov@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=sergei.shtylyov@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

   Sorry for the really long delay! Your reply scared off Karina
(it was her 1st kernel patch), so I'm trying to pick this patch up
where it was left back in February...

On 2/27/23 2:54 PM, Greg Kroah-Hartman wrote:
[...]
>> SVACE static analyzer complains that we're possibly
>> losing information by shifting an 'unsigned int pba'
>> variables in sddr55_{read,write}_data().
>> It is a false positive, because of the card's total capacity
>> is no larger than 128 MB. But 'unsigned int' is more
>> suitable in this case.
> 
> Please wrap at 72 columns.
> 
>> Found by OMP on behalf of Linux Verification Center
>> (linuxtesting.org) with SVACE.
> 
> What is "OMP"?

   Open Mobile Platform, LLC. The website is in Russian only:

https://www.omp.ru

> What is "SVACE"?

  The patch description said thst it's a static analyzer.
Here's the link to the Institute for System Programming web page about it:

https://www.ispras.ru/en/technologies/svace/

> And why change anything if there is not a real issue?

   We needlessly use 64-bit type on 64-bit arches.

>> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> 
> That's obviously not the correct commit id for such a "fix" as this is
> not a real issue.

   That's correct. We'll remove this tag.

> thanks,
> 
> greg k-h

MBR, Srrgey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a1296b9a-c27e-3b35-e256-32350fb2a83e%40gmail.com.
