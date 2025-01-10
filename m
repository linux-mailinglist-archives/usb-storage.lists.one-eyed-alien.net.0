Return-Path: <usb-storage+bncBDUNBGN3R4KRBCOMQO6AMGQEPRAB5NQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF04A08B3B
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 10:19:06 +0100 (CET)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-5d43ec75bc4sf1791503a12.2
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 01:19:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736500746; cv=pass;
        d=google.com; s=arc-20240605;
        b=iSHlnwjwpNwSLTd5AFETE8F0XSFT9wPrkqVSGoS/TUsa3UyFrPadyKnAn5WRzUQdfk
         KyzosY2S15FdaXepykogqvnKVKD2sJJmftzgdr6sCBbr2TFw0JbaKpVjmyFh0NM5U2GF
         jG98xTdH5JqZXpI8d7VTUJ7Hy7MyVYZw48hR7jbh8lvHZEelzkcCR7LQH+o9nBU2lH1O
         mIR1p/nmbDqNJyGKZmKfxXzLD+VlgJ2cDDcqUhkqWQcPAHfxvG90ihBwBQ6RpdWkiZ+s
         F3z1mqPOvXtLdhhtrH9duV6npkecWbpPjMNZ5adia/9fv+wCHtVSzLqQqWSVlu/R7AmY
         /j5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GmW/C9IBLDW66Mvpze2Qt8PtniyyRmm2lmp/numOmvg=;
        fh=McBgZQbLq5pInbLNrarBTFKGrAUX/hkNOvJwfww7zIs=;
        b=YzHb335mUuBkHOKHgghD0t8eeDo+/bggQPAAJftDXAVxMC5r7o6UZnTA2bxGZx/qEw
         L4djjeBYz5MHWRwgpRqwxjXt0EndDL4Cf01ysgLLNIK7J0ypwBBEAPfDnZwJRxoNffrz
         vRC7kNg9ng/hrgo+jNPiBsLCcZQOe9fD7tl7KgZs/f42RoBB7iDVqDTuqxfn8VbXZwb6
         p8AP74QrcaS7r3suJ4n0KmDvS/63CDGPUhnNa0+qxoieFkySlE08i7nWCnlQqas+1p7K
         Ct7tUYfe3uj7JZzr/8Wvg29HACanTFoXcviYfE1sk/WhogBcG39+2ah1Br5ql87Wy+4W
         G0/w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736500746; x=1737105546; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GmW/C9IBLDW66Mvpze2Qt8PtniyyRmm2lmp/numOmvg=;
        b=ar4iMOoe95tm7pdFtuwTnks1/fvs/YkYW7KEhHw4kBAnvbrLfR5v+pa3m1HKmbGcCY
         3zQ5p9JwkMbF8NEfCCWn8xZZOjB5pisYjq9c2aBVZlfsCLHTyJdzrqRSZYLHsn6/kAiT
         1Su9Pk83Hx6z7hnXN4MSwQmZ/q0m5wo0vo/PI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736500746; x=1737105546;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GmW/C9IBLDW66Mvpze2Qt8PtniyyRmm2lmp/numOmvg=;
        b=O1p6gqy1w3h2grs1CmiaenM3S8kjqNhlyP7WSZAA74QImudVxVjYcSU5jLgerr+RKF
         YqvmyvlhDr7GOZ+o+Y3jMTPchSy+7a7Zz5ErBE4Yg4z9AIumF/DTrnGbiG3kN9RnmtWE
         ao2HLflj5IRVHwshRveI0xW1Q5BVW1py+m1w9oJdHyLvRb0pswoXgm/FpiFJIc0lXr+s
         v8H1+fTf1jerZIX6zxTtFUYFH+1xcrtCLGHhbjv7Eun9hZh5RQXA+Eq+4UoKJx46MXPQ
         j0qzxU9ECKd1WNy0yhSh6nF7tfmuQTcWgP0WRSW/c/xlF6T5sn5nFXhOJGc2egg13Q5c
         44Qg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUgJ3L7Fug/RyE6lNxEBVq0zu2Kd+2wRP6UEtpvVkXL7qheVoDrzH05s4MDFpJZMGzXVXfXgw==@lfdr.de
X-Gm-Message-State: AOJu0Yy/5ASqmlk3S99xknP2t31W2QfWO4og/xHf46jhJvymwSS7hWyq
	OfEs/odHBrwHPh48zGOg5+On1vB/s2qeZgPEzevcw7jPN9S3n9lhhVhzc9q20G8=
X-Google-Smtp-Source: AGHT+IH7QH6DZpAtc5yxy7mPpINOBzz0O5YkiZfsBlIBF7qBK0DpyTQ8e7t60i+Q3D4koBYShFG7/g==
X-Received: by 2002:a05:6402:388a:b0:5d1:2631:b897 with SMTP id 4fb4d7f45d1cf-5d972e08403mr9411078a12.14.1736500746025;
        Fri, 10 Jan 2025 01:19:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:cd14:0:b0:5d3:ce70:f22f with SMTP id 4fb4d7f45d1cf-5d9856bd5d7ls88977a12.2.-pod-prod-07-eu;
 Fri, 10 Jan 2025 01:19:04 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW7+K+7KPIfLXdHrNp0BrOM9ChKLe3EaJRkzB/C5KQdjFQycEqBuF+dRszgkPTFDNpBKa4YJJI+byZb4g==@lists.one-eyed-alien.net
X-Received: by 2002:a17:906:c102:b0:aa6:7f99:81aa with SMTP id a640c23a62f3a-ab2ab676541mr816461466b.6.1736500743484;
        Fri, 10 Jan 2025 01:19:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736500743; cv=none;
        d=google.com; s=arc-20240605;
        b=I1DGkX9IC7piF8xdy6/xQejokoo4WqgLPEjLECcUvN8+l30iO3+0zIokADdPABg2tw
         4QGKdQDxLjTE9TlHSj8QEl2Wogss4A+z4OXKOEa3+Dj4BZAEtb1WfhJGdx1OQToT5OEA
         pkotoB3yaQzIE/O3aKULOf3wez8Kdd/0T/F8ZxcSzQHujN1Snno7HOxw4XiD/s9DjB1V
         qUUvktM7QdvYkmXz6eXsDatpY00KYOgSQMhnQv9dxAsxF94e1WYk1GUTNgG0PPThgIET
         3qx/psSfbQLKf+HpNFXzmQDa/PX/ihc+4bfZ4iGsqv+StME0MSadeY78pvcZBGCrAO6Y
         ttXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=HM59L0LqLr8BY+Ah3bEi1w8vlkuX/M02gI8v5b6K9Xc=;
        fh=quH26clXjLpZXscCcKwr+AEN/ExB8C7cY90QRhK1I3I=;
        b=BCM+3ZrGKt+lFxSGtYhSkbFLi+7GidA7Ho4gAynm3IR84KxBNCDAiEPLzUAJXLnx1O
         NWHC0mIvYLcUaafLjM4EYpOdoLDRVZtTHQN9JS+ay7Aw/2hbGA1dhNM5ApRY1YPhBjDw
         tu5zLfJ14ldL1tPA2Gg1c6lPT2txvSp69QokwKlMfnUvP2IiA5W2gcsuhzjlAZ/ONFZL
         406FVf/oyKN7EJgazfAEBeLabZFSTTuEoxhU6HK7lr8WJKqYSWM2yneXOyMGd7OZLFEK
         t4eL7Hf+PpD30hFY7YtYMIfczqV0ygtxiYx01LIAy04RUAaJzXFJ2DvCSaraA4y137lG
         E6+g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id a640c23a62f3a-ab2c9570c7esi198110966b.501.2025.01.10.01.19.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2025 01:19:03 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 2C6A268BFE; Fri, 10 Jan 2025 10:19:00 +0100 (CET)
Date: Fri, 10 Jan 2025 10:18:59 +0100
From: Christoph Hellwig <hch@lst.de>
To: John Garry <john.g.garry@oracle.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] Re: [PATCH 05/11] block: add a store_limit operations
 for sysfs entries
Message-ID: <20250110091859.GA8373@lst.de>
References: <20250110054726.1499538-1-hch@lst.de> <20250110054726.1499538-6-hch@lst.de> <e7177a33-aebd-4828-87b0-f790b4fb1306@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e7177a33-aebd-4828-87b0-f790b4fb1306@oracle.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Fri, Jan 10, 2025 at 09:15:09AM +0000, John Garry wrote:
>> +	int (*store_limit)(struct gendisk *disk, const char *page,
>
> I don't really see why this returns an int, while the queue features 
> callback methods return a ssize_t. I know that the res variable in 
> queue_attr_store() gets mixed with an int for updating the queue limits, 
> but I don't see that as a reason to use int here.

The normal store methods have the annoying calling convention where
they return the parsed string length on success.  ->store_limits uses
the simpler and harder to get wrong convention of returning 0 on
success.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110091859.GA8373%40lst.de.
