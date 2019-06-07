Return-Path: <usb-storage+bncBDR5N7WPRQGRBJXX47TQKGQECSTEHQA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 30461383E4
	for <lists+usb-storage@lfdr.de>; Fri,  7 Jun 2019 07:52:39 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id k18sf478142wrl.4
        for <lists+usb-storage@lfdr.de>; Thu, 06 Jun 2019 22:52:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559886759; cv=pass;
        d=google.com; s=arc-20160816;
        b=bJ2oS8xPRNqkLtM7KEqMYsa34/s7+P4mVtbWWi0X9VIbp694PqoVuU62RU6GyuTd+g
         PG104EEgyOmOyfjJF9J1bUExP/98BC9/tYHdnwVLLYtVNIVDgs3dQAq5nop25OGBSyrW
         xFyr20rNYADG8FEkkxOVLkdd7CwQ/KtFeinVUMV5oWJ0BtLdx6VzLRGfroRXu6m/mLYL
         7FAYhQVZ5xI3xY/ldLYpnaaBSgHIZSbRL22b+9UeUoHAkD3WU57LAyDty+LzSm/bmFem
         qZ1dJRZ8OwKwk+OPzrLXCF65XdFtFdvDcvuQSgY5KcBuWe9FYMsb78K56p8pQJcAT3Uc
         WrRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Vij9HauLWCZphbjR12jVel8bPnhsYuGhJONfJ5lD5uM=;
        b=KFOQW0jiWpmr1a6SUEWXl/a3u55muOd9DDKefH7uBKFoH4bI7tSuAv73gkfFWnET9N
         V6quFYW2xkGMzDcUpf8JJr3GJdDSvQ0WEH8uQyRkVyu3TwOsq9LWezbSpxBuktON7rhY
         BjD54avBk/9a+ULIO3W2IS8iCfFXvMO7H6OQkgb+t10dDN1O/WUAN9OUccAICxz0LFBk
         V4cOQssdwtfqKtPPPB4clclDfjKbdw9K74GHfm0jvPeLztJmAoqK4wlAiOwBKczNvTvf
         YOQxWeVexsYLgCbJ2gRTecAAtcoRJA7f1OakhC+nY72IDauaqxuhs9wAAJBZeciQFrZv
         qBhg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=pDdAAUOp;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.65 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vij9HauLWCZphbjR12jVel8bPnhsYuGhJONfJ5lD5uM=;
        b=aL/kXfpxJby77V6okHzwJAeA6c+lOyNUnMVqO2VqSh1GzVG4ceiV3pYF2ji4nKPxAN
         U8rRWSIls903HQwtUplS/lsVi//RhDUqHCoR8PN/Q/kpEHaVed5yg0mLbAl65qN/Yxja
         7l7T6n8vnUGxMli0Y2uE6YW1BV8rtKwZqFud0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vij9HauLWCZphbjR12jVel8bPnhsYuGhJONfJ5lD5uM=;
        b=oVtTC8wTYQaes6dKLYoDHCvFXAL4baHqleFgQplQAPiEIkERreDp2SyeUSxuK0Bvct
         pq0IDlolNEU3eBgm2qF8JRycsv29P038ip6xlZXxZCBPtMpo/dWPXEfb8G32jKfDUiLQ
         PXgIyhheHKWgIzHTVBdDcb/Mi8Y7YRFEGhH/172lqRswyZ12/N281NDVGnRDFN3ztQKv
         n/2TR+fC0P87tecezg7T1ICnqYsg7VGTs0mVYyC5TgKoC42+TFFEh7K3oaO+ATQANycl
         cNRs8bKnAhTHZZHstuk2ENR89I9ZnbrTFVHIJJyOe/H0pNBIybJCXlco9yPMLC7Q5viP
         /3+Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWYujiDOtZJeu91nntFCGMJEFBQgR6R5Yynh0w0W7+EIl3Booo9
	xuPg3drpzVnHlT6vaAB1+Y8zlw==
X-Google-Smtp-Source: APXvYqyOeyvMXzQOsvajJoW6fwRAt3aC5UM7pZUstMYBNQLnLCuFatu8RHy5k/6AA8i2KM+wJyLUpQ==
X-Received: by 2002:a1c:a7ca:: with SMTP id q193mr2442898wme.150.1559886758856;
        Thu, 06 Jun 2019 22:52:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:db4a:: with SMTP id f10ls1764161wrj.1.gmail; Thu, 06 Jun
 2019 22:52:38 -0700 (PDT)
X-Received: by 2002:adf:fa4c:: with SMTP id y12mr18219313wrr.282.1559886758196;
        Thu, 06 Jun 2019 22:52:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559886758; cv=none;
        d=google.com; s=arc-20160816;
        b=OWOR4LgEd/PN34T3DQUE7xWYzQHLkeAI3A2alwG3tGn8xfCsm6ceMFTgn0LNFc6vx2
         VRLGqJS43hsJ7m/Yv7ucYMo7e7Yk5AcG6eW4VahmMW33RVHYTawQBDzqxOEPHVMnmGLe
         L3WvavpvJpvtZTFMoLO6dy4cbL1dUhmoyK2QIhwPnJ6k7aCXU4z6bz8CGizE2gKvyAT/
         nbUVD/CJpd0zsN/xQpwRfQp7AJZr9yfnIvJe1fLA+UH34BUtd4LsKLYUv5UTu1IyxVcz
         IvMhPHDLojdwwDdNpkSCxKFk3UuuXnO+pvujNYMSbZx8uriZ0olSgF32ayZbpQQw1umB
         5lhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=36gEkNDx0uUeJoUQsXVk3mt2cfXOtD54F9aZsyl2w8M=;
        b=CqOE11ikcWpP3W8nctVHlOzl2puzVUYvEU/0oUke/GbBB/qSoVQ5rKpsDTs+3/fBtW
         CeLeiOvhf5SHTQMk7sl8czpI7lu+NZ4Nqh3hFbigszOdsMrakm3U1ZDyYjqQmUgp7tUj
         bb55u3MKcylpZmQKVsqfWokHFHIfbuGgNZ0SKZuITcyNXDL5FqamP9sm/Gu/ZPOd8dQ/
         PZZSeaSMKGImVFFRGEMPsFkmHJpjfi46icic84f5CQWrugCMXltgcZ32uJfkUWEDoOmk
         26z4owcAPvt464fGp82uBLsuddZyjxQywwuD0rIe8QJImzjctg5u8i4uoD9ce4kyI+52
         NLXA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=pDdAAUOp;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.65 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id j11sor499630wmh.23.2019.06.06.22.52.38
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 06 Jun 2019 22:52:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a05:600c:204c:: with SMTP id p12mr2244021wmg.121.1559886757922;
        Thu, 06 Jun 2019 22:52:37 -0700 (PDT)
Received: from [10.97.4.179] (aputeaux-682-1-82-78.w90-86.abo.wanadoo.fr. [90.86.61.78])
        by smtp.gmail.com with ESMTPSA id j15sm819336wrn.50.2019.06.06.22.52.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Jun 2019 22:52:37 -0700 (PDT)
Subject: [usb-storage] Re: properly communicate queue limits to the DMA layer
To: Christoph Hellwig <hch@lst.de>
Cc: Sebastian Ott <sebott@linux.ibm.com>, Sagi Grimberg <sagi@grimberg.me>,
 Max Gurtovoy <maxg@mellanox.com>, Bart Van Assche <bvanassche@acm.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Alan Stern
 <stern@rowland.harvard.edu>, Oliver Neukum <oneukum@suse.com>,
 linux-block@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, megaraidlinux.pdl@broadcom.com,
 MPT-FusionLinux.pdl@broadcom.com, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
References: <20190605190836.32354-1-hch@lst.de>
 <591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a@kernel.dk>
 <20190605192405.GA18243@lst.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <f07d0abf-b3eb-f530-37b9-e66454740b3f@kernel.dk>
Date: Thu, 6 Jun 2019 23:52:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605192405.GA18243@lst.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=pDdAAUOp;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 209.85.220.65 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 6/5/19 1:24 PM, Christoph Hellwig wrote:
> On Wed, Jun 05, 2019 at 01:17:15PM -0600, Jens Axboe wrote:
>> Since I'm heading out shortly and since I think this should make
>> the next -rc, I'll tentatively queue this up.
> 
> The SCSI bits will need a bit more review, and possibly tweaking
> fo megaraid and mpt3sas.  But they are really independent of the
> other patches, so maybe skip them for now and leave them for Martin
> to deal with.

I dropped the SCSI bits.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f07d0abf-b3eb-f530-37b9-e66454740b3f%40kernel.dk.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
