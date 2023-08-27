Return-Path: <usb-storage+bncBDTNDO5RRYJRBF6LV2TQMGQELAT37GI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B8D78A130
	for <lists+usb-storage@lfdr.de>; Sun, 27 Aug 2023 21:35:52 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id af79cd13be357-76ef50e2513sf327665185a.3
        for <lists+usb-storage@lfdr.de>; Sun, 27 Aug 2023 12:35:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1693164951; cv=pass;
        d=google.com; s=arc-20160816;
        b=yAcxhoPSVtenZvR4iT/jG2clWg/GoZNRofFtX/rF1btLcGxYx2C/Xkhl8iXwTiylJy
         QHZ7jY2EQdPXQUDkZ4azqNWlKn9Ea9xQpYpcNWifnRgJSjnchDZmEWqmW9z/wx4rcANF
         TxbCidM+ipsD2OrtXekkmUzGQPZvflsFASy3TqMEIP18VQywBZB1rOqcq3J2GEZLcDeE
         iyy6oHZZzHx81bhC5NXNMphWz9u76CzwiqQcN7+wLQ9lI/gaMhq7IX5yPIGjhWvPuL8h
         Nc+EXSdeVRubOxcIVhoPqJX5Ktcc984llB0xqXgI+DRYIcWAe3Sd3EcCNGhJEnX+Hnrc
         bNyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:autocrypt:subject:from:cc:to
         :content-language:user-agent:mime-version:date:message-id:sender
         :dkim-signature;
        bh=bgq96zyYW1zd77WRwpHK7YP8lg150UfpTNSt0qEFRaI=;
        fh=kvgbfXYFTEIfOOHqnLubro0W268MDOJWWr1920sDq9o=;
        b=Vl88r2c9g7cCJYjL3tLfXayhK/pAf0rbxgwIUbv9vj3oKNLvyg1tPdjrCVRrXBKY9z
         SyFf/fXrcnl/gTnxcaG56dUkGYuVnUNS/MD6RFYHE43mgWbIs5n8OikLFPl+NgLf65lV
         KSEj0wrjLRHQtQM8den5eeMvmap9Ol4C/1AWl7cjtCE6Q6Ei9TPfQ29EeMv4+rZw0VQx
         iI2QteAaTArUwnmL7H2qyPvX/SohOHyh9soDXIoMD3Ar2+fdo/mNWnUxjI4Shd8CdCZA
         pIRDid1ZDc/4XTaK8olmZcuI6fS2Pjv81p/Tz93TWP4z3uq9J+HJq+NaR0jTbtOck7hP
         FjFQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20221208 header.b=WcNTZtKg;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1693164951; x=1693769751;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:autocrypt:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bgq96zyYW1zd77WRwpHK7YP8lg150UfpTNSt0qEFRaI=;
        b=a/6dqWOUheo3b+ENV3J9F46YHg0qaRGRJbqUq4AdLxswZfbJMZq0SMbU5DE256q4Se
         QB0KcN/tjTNtWIOT69c0XNhdgqILERB2/cZOV7I+u5rIGWIgkYkJM7buXdXeX24hQu+B
         6bmFtVFY2klJSxtXvLvLMyYCor33iQujUQkfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693164951; x=1693769751;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:autocrypt:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bgq96zyYW1zd77WRwpHK7YP8lg150UfpTNSt0qEFRaI=;
        b=JBh7g/E+SUbyVIX1OuzyFTdrgvIHEoV0QELVT1WJxgD/qowi+zohuNiuGh7NQdTeMN
         byoSk8p33vq9iSlZSyFP07x4WHmgf/NIVn6EhoSioZq995slC40OO2iV5TPerHLOuHZQ
         W5Bz5E9ror4q/3s1vyeU70QZRsxbdBeZg6ZxyVGfoHqnSckRx4h5kZ5N5RScBybOhqm4
         XtCwOzxe5FvLB0O+4gugQS3VG/14CCmPrvuMFv73fDMI9nEfVoDVQzFEuyz9zv+GYtrC
         OZU/Yj3TBol6FNRPhn+UnFkoB61tVpqf7/nj7Atrq2Q5E0aqUEhNHIsOpZ+O7tzxx/19
         E6Bg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwBols6+17AvKp2BDbX3VgM6vFzM8agPEhEckAWm0h7E7WWNLgI
	1Mwt7+nCij1BVS9i6DDynfhL4g==
X-Google-Smtp-Source: AGHT+IGO83fcg3x3e3XGdRNsouJ1zVR2R+pHQlaxlfo4P45XwJiIBUgbvrpCnyZfKg/ABrEC879Onw==
X-Received: by 2002:a05:620a:b87:b0:76e:f320:9b4e with SMTP id k7-20020a05620a0b8700b0076ef3209b4emr9045216qkh.70.1693164951679;
        Sun, 27 Aug 2023 12:35:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:e205:0:b0:649:8ee:a563 with SMTP id q5-20020a0ce205000000b0064908eea563ls3014728qvl.2.-pod-prod-02-us;
 Sun, 27 Aug 2023 12:35:51 -0700 (PDT)
X-Received: by 2002:a05:620a:6401:b0:76d:8643:58b5 with SMTP id pz1-20020a05620a640100b0076d864358b5mr694017qkn.13.1693164951369;
        Sun, 27 Aug 2023 12:35:51 -0700 (PDT)
Received: by 2002:a05:620a:470b:b0:762:30a9:f2a9 with SMTP id af79cd13be357-76f036b336dms85a;
        Sun, 27 Aug 2023 02:32:09 -0700 (PDT)
X-Received: by 2002:a19:3845:0:b0:500:9de4:5966 with SMTP id d5-20020a193845000000b005009de45966mr6222484lfj.62.1693128728335;
        Sun, 27 Aug 2023 02:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1693128728; cv=none;
        d=google.com; s=arc-20160816;
        b=uuJhrA6n1w7gZkkQLy5wKXHiVMMcHGxUzmLcs70nlBDLeaMk1r77dRmxXvUidxHwYj
         wmFtpNzKtnRyCOEAXxnSRklROlXgEWA9aSfKd2KLcrDEbaTPOaOoyZzeLdSf2jhXfufQ
         I8M/1GQs51DQSpr+aj9qLOBFefBogr1Vd+yqhsO0AOC094yxY8XqLiIs8eRSpjO8HcZ+
         1Zge1oyxfKmdrbreY03lxJngASrOqOH/uvDq+1bsD/ND9Fc0QpF0yyQoCYgDK46tlOUQ
         Nm0oCrretigRJVlYimE7/C83aKxAVtM3A4Xv01lZ9KSVsENwMvoCUn5u77yBVPasyVKe
         gw1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:autocrypt:subject:from:cc:to
         :content-language:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=YNtvcuqWlxM2Wg/jajEsjrspQ1R104RBZ7zqJZcrS8Y=;
        fh=x3tv+r3DFHnsswO3dbD3EPnetSesSxbxkvfzf2LksPM=;
        b=yGEL5vjJE9MeNG3SJQl1KAD2EnW9wJqifLpH7Pr5lrTl1NMOzSXiiVnkXJg6FgpfHA
         rNGEmToPbYCSUEy+19iMeBeyLXIYltJrAqJmOYBq8RS//duxFSTtojzSurHvywbPAGZ4
         pVKk7uNcLR7Sqvp/NIiu4J+8rYh+1XTQ/oi5iyasMk04VRgbM716ZXK5Eg8u2UagCx4X
         PAIwzKaawcKaduLy1lQwilIppyy5tC2ZNr3ahIb1RxA3AjpQrKIm7gmQDnr+jacUpE70
         Jc+E0ljq+AjulPb129ie/5dJATbRgO5UVJOu5Saw6OtkN3nVJfNP79eYKUrr50eOZxOT
         w2qQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20221208 header.b=WcNTZtKg;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p9-20020a056512328900b00500863efc40sor1901461lfe.9.2023.08.27.02.32.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 27 Aug 2023 02:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:ac2:4f08:0:b0:4ff:78c2:6d8b with SMTP id k8-20020ac24f08000000b004ff78c26d8bmr18814476lfr.67.1693128727579;
        Sun, 27 Aug 2023 02:32:07 -0700 (PDT)
Received: from [192.168.8.100] (78-80-26-27.customers.tmcz.cz. [78.80.26.27])
        by smtp.gmail.com with ESMTPSA id bc23-20020a056402205700b005223e54d1edsm3092605edb.20.2023.08.27.02.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Aug 2023 02:32:07 -0700 (PDT)
Message-ID: <f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com>
Date: Sun, 27 Aug 2023 11:32:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
From: Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] usb-storage: how to extend quirks flags to 64bit?
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20221208 header.b=WcNTZtKg;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
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

Hello,

I tried to extend USB storage for the passthrough of Opal
security commands, and some adapters are clearly "not perfect".
I would need to introduce a new quirks flag to turn it off.

Seems that we are already out of quirks flags on 32bit
for usb storage - in usb_usual.h the last entry in mainline is
   US_FLAG(SENSE_AFTER_SYNC, 0x80000000)

Adding a new flag will work for 64-bit systems but not
for platforms with 32-bit unsigned long like i686.

How do we allow new flag definitions?

Struct us_data fflags can be made 64bit (defined in
drivers/usb/storage/usb.h), but the major problem is that these
are transferred through the generic driver_info field
defined in linux/mod_devicetable.h as unsigned long).
Making this 64bit is IMO an extensive API change (if even possible).
I guess this is not the way to go.

Could USB maintainers please help to advise what is the correct
solution? I am not familiar with the USB driver model here
and I see no easy way how it can be solved by a trivial static
allocation inside the USB storage driver.

Someone will need a new quirks flag in the future anyway... :)

Thanks,
Milan

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f9e8acb5-32d5-4a30-859f-d4336a86b31a%40gmail.com.
