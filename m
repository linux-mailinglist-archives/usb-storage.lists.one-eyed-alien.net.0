Return-Path: <usb-storage+bncBDQ7PBVA4YBBB4HAQWPQMGQEYYNJIOY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C57468C891
	for <lists+usb-storage@lfdr.de>; Mon,  6 Feb 2023 22:26:10 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id ly4-20020a0562145c0400b0054d2629a759sf6564010qvb.16
        for <lists+usb-storage@lfdr.de>; Mon, 06 Feb 2023 13:26:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675718769; cv=pass;
        d=google.com; s=arc-20160816;
        b=uc5Ct04CKTj2qvKjaPV1Pkh5n18zQFDbR7MJrOT5QqsTyZ39g+3CRx/eMH8KPliRIv
         F2KIUznfnSOngBUc91xdxg+pW1i0KlI6RVsmcWCXW04i+uTVNmcinOadO0y4SBChoxwA
         JFsDL9DMrr/U0H0C6Tg1+TzgDT0aTODu2UqRC5kHtvX0nNd5b2tUxFk4jLADXR7G/4oz
         8HBFzSJe0ENVDXiNgiX5K1XQ79Ts/Qk3AS64RqVUQFhDPmpmqUFsxKoDDWLnsR7YYgJd
         Cr/Q5jHzaQSvfpbOftoIdz2dckemtJ3ax4k9T3m13mcXiUzPTgggHtq/TMl2HmvITCYI
         sfog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=E2wjY8Ce2MldoIoOKjbpEpIqlkWi7+PSArAPgfpWJ9s=;
        b=WZcux6U2I6fYveaOj9jtSeJXJeHnVW6HrF77sWNl0zQzoKtLNgn/BFy5FCNuZX3G2q
         n7v8hP5wB7ui3FNLfMSX99O4P6+lmNVOD8p/P/W1K+CfpyvGhbAtKKgtLJutxphV4FNf
         +WUQBcywRM0ZKEzqTC8GNR/g0O4o1d5HJDygbRJ7fe5zWryB5OWTVJpl9EgcroUMzeJw
         vcyuO1w4OpQN9Cill/bsCs7lUoSko8THJL96asidfYeZIdKfHW14gYW7L245DDZicwbZ
         t9ZR+t8Ydkulj6+MI3lCVcHga/o2HsAK9iceq0i4BFabvAKMAGcljKcazkXhvqFKtsmK
         2snQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=BkRHgrWS;
       spf=pass (google.com: domain of sergei.shtylyov@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=sergei.shtylyov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E2wjY8Ce2MldoIoOKjbpEpIqlkWi7+PSArAPgfpWJ9s=;
        b=b3lZ10JiLAQOWz2N+G3RG1efksnj6bv2lqjBkwkewyMJbyGReIq+4uNiGUKu5EmaZ2
         L8zti4MpopWkdxKQ7xOv9GseljwWawdzALBR0gmZu0vTl1tkBqw3tAO557VX34esDuV5
         +H2zMGORrY7b/6AeXbHPeuWNv1o/PhJPV8XiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E2wjY8Ce2MldoIoOKjbpEpIqlkWi7+PSArAPgfpWJ9s=;
        b=BX7lDmaSrsk6CuE95qULNSPvzERHH7e2IanJznLQ+HLQF+PptMqeEcEzFiuKjEsAIT
         KNyIoET5I7ONApWSjgOYnTa7TGxl6ItHNGxxjDTN2CFUkprJXXpiP/s5u5zqiTgFCnux
         pKzimrHIdOb4Nnlr6ERuz7fjJjbJwwVvE8nbkchOHfhOpGmDljDadcHkXnGdT90rjIiR
         QTyC/7bhWzwbY7eMqJeODjYNxaI1wJGzyGRsbfL79UttH/AAh5LWbUKFXL30xSbt45lz
         prrwo/ZtZiVzmjwyb9YsOz6MJAjZ8iAPeqB2wF3SGreN4yfUVklz4Pw1bu7xj6Mf2yah
         4flA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKUNLAd0aofR6EWyIA38+bJ30Qffw0uN0RshvhkdI80k89N9/xel
	UP0xzsg8EPOeWIM1hwaZELlZ4A==
X-Google-Smtp-Source: AK7set+UDJ5jhnBo2V2QEb2ayEAaGTlH1BtaW3Y+hbTfp0eRVe8EcvloGxKF8p3K1irMz8FRO6/A0Q==
X-Received: by 2002:a05:622a:1390:b0:3b9:d0b0:6456 with SMTP id o16-20020a05622a139000b003b9d0b06456mr127287qtk.367.1675718768944;
        Mon, 06 Feb 2023 13:26:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:2309:b0:3a9:8ab2:1bab with SMTP id
 ck9-20020a05622a230900b003a98ab21babls14110642qtb.5.-pod-prod-gmail; Mon, 06
 Feb 2023 13:26:08 -0800 (PST)
X-Received: by 2002:a05:622a:292:b0:3b8:273f:b723 with SMTP id z18-20020a05622a029200b003b8273fb723mr139556qtw.384.1675718768475;
        Mon, 06 Feb 2023 13:26:08 -0800 (PST)
Received: by 2002:a05:620a:1a08:b0:720:d56c:6d31 with SMTP id af79cd13be357-73538bb0139ms85a;
        Mon, 6 Feb 2023 12:04:58 -0800 (PST)
X-Received: by 2002:a05:6512:11cf:b0:4d8:8273:ec with SMTP id h15-20020a05651211cf00b004d8827300ecmr56373lfr.20.1675713897270;
        Mon, 06 Feb 2023 12:04:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675713897; cv=none;
        d=google.com; s=arc-20160816;
        b=EpvEFVmgJ/2D9GXZiv7ZD+9/hLPJd4a4VEAKQARQD2mdOOYBaLlSWR2EAdON0D0EYT
         Ph9eu67GQutgtbSY3lutDjJmHjhWvRyGO+wLhpQ1pWHw/6oD2Eho+M4sH6fpRwosPvU5
         lEOStehVVCeNTr9iRWFb5BgDg6O/Y3gqfrPe1UGmWD+73SHir1kOEzITGuLrQkz6tHrr
         YjZvN1Qkk+lZp7xymUsuTq1OGdT0qi7A9NeMioovEO9ClhkgjUebFFmzkJoBpDlmXJbn
         dRJhsj4KRhbAl+6OacWjKVlB7hkEc7HYA4gLEAGxD7T6ef0XR5cXf0xuvvc6uKD0JA5m
         QMwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Zk+ewRFBhXIWi/NAH6JaxjNcUKFG2te5CNQ01jAgjCE=;
        b=JKZ0vghnqcPFX1yqiia+opJBdDiWCwUVl9K6+Oza2r1w2VmPvsf1aoi0DS7XuxtaKZ
         cL/4ZZbWDaGoncVtuj1/YxURsVKYjMCPz/hWgXQZ25YlVanwfvnNwqIohXq9zubZyYlQ
         +9lk0O30Z0D8+19xiIlgX6Ou/VTpGr6LxZNNapkJH8tBbZ/pk4vgHPHr5Hf/XXQm4rWN
         baxt/ZAY7RGVXz70nwjOYEn5YByhN3m1Rfo4PpvnUUx/nvpHWtfXQbjCW9g7II2uQTIp
         qV/bcq708hMqQ5b2kLnzRHqMVIb0cxt1+Lfx+gsxgXg3eOM5XA2UqNPQ3Bq4BWNyiS9z
         OQ3w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=BkRHgrWS;
       spf=pass (google.com: domain of sergei.shtylyov@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=sergei.shtylyov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id g35-20020a0565123ba300b004cc9b49e6b4sor2419727lfv.36.2023.02.06.12.04.57
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 06 Feb 2023 12:04:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sergei.shtylyov@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:ac2:5ddc:0:b0:4cc:586b:183b with SMTP id x28-20020ac25ddc000000b004cc586b183bmr38150lfq.60.1675713896919;
        Mon, 06 Feb 2023 12:04:56 -0800 (PST)
Received: from [192.168.1.103] ([178.176.73.245])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b004cc9f7030f3sm835065lfv.292.2023.02.06.12.04.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 12:04:56 -0800 (PST)
Subject: [usb-storage] Re: [PATCH] usb: storage: sddr55: avoid integer overflow
To: Alan Stern <stern@rowland.harvard.edu>,
 Karina Yankevich <k.yankevich@omp.ru>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org
References: <20230203201821.483477-1-k.yankevich@omp.ru>
 <Y91zL8OWTUd8iTXt@rowland.harvard.edu>
From: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Message-ID: <53bc0584-51eb-8bb7-de48-ca07fccafc19@gmail.com>
Date: Mon, 6 Feb 2023 23:04:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <Y91zL8OWTUd8iTXt@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: sergei.shtylyov@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=BkRHgrWS;       spf=pass
 (google.com: domain of sergei.shtylyov@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=sergei.shtylyov@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hello!

On 2/3/23 11:48 PM, Alan Stern wrote:
[...]
>> We're possibly losing information by shifting an int.
>> Fix it by adding the necessary cast.
> 
> Nonsense.  The card's _total_ capacity is no larger than 128 MB, so a 
> page address can't possibly overflow an int.

   Then the 'address' variables shouldn't be declared *unsigned long*, right?
That should fix the SVACE's report as well. Would you accept such a patch?

> Alan Stern

[...]

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/53bc0584-51eb-8bb7-de48-ca07fccafc19%40gmail.com.
