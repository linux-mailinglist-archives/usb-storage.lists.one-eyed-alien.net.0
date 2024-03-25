Return-Path: <usb-storage+bncBAABBG76Q2YAMGQEMFLTS3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 7014A88AD6F
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:52 +0100 (CET)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-22a1bb369f8sf1861318fac.2
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390491; cv=pass;
        d=google.com; s=arc-20160816;
        b=gvaQN5SfaJlrngfMSu3w0yMn4ilU4gFDJEazfkZQ6Ed/+FR6+Yb8vL8ndFXGAr5Lwo
         n2TOM3EpqErRy8fZ9Q4sjDKSjYZ5pAq2lrqspP0s95aCGpF804Fa7m/UU7eHL2geENQr
         KjWLB2eck11VydfkLlaOorcJdNG5jczuij5FSuNj471JbaWnlLEZggm2as41laIP9znz
         6FYMzwW+jfpLrMRFkyp4nBXHz1d89nsfMHAn3brMIFxJYv43EZ6l5wBW9qVwY/im9ffG
         IGbJEBRqvR++/D0UyFuXqxC9Z41cKbZMgpcSyaGQmCJyEhNMGkJgoTEiNKooY7luUV0w
         VS4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=U4kMCcyUkoed6sIS9EKycwqMEH+VQBuifuMn3Q5OB40=;
        fh=ZpNFwQIy/ksq/K8tCnZUSBlPcsyZOcky0etVWd7l4CE=;
        b=E4A7RjlMd/8+bm0Qt0KgJQWVdwBDbJ4kxFMniXsDaqTWsiTMchLcH93W95gx7ODSYH
         JenzExW5MhZi5TnFVjPIXgo/A0la941OgDAPzEBdUPxe58eC85hYpS/s0sOTIIdxUBfy
         0alTMZgqnYmLmWTBn1JGDyta2mDuYxLWbkT4xW+OFcF2IVpsYAK8/OuTc6qNnQO3Jrhq
         Wu6XvfHQ57TPG6p4dpA02IMTDiP9bR15716OqjWSdyqxM5ARgdH6R7CBOmWhEFlgph0s
         HFlif4ng2LjizMbF7zvmHYd9p2KW26YLq8S30/MDO3FrPaHAcj7ltWFtqeucc05Uu9Y6
         ce4g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j1xHlxFy;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390491; x=1711995291; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=U4kMCcyUkoed6sIS9EKycwqMEH+VQBuifuMn3Q5OB40=;
        b=D+S6rOs32jgx6xlRlLwYPUpLN7569CeieZeFZ0xc6xLNyoVRy33KruvwusBgbr/LXn
         NeckrrsJZvBxWJ3sLhFDUqzbPQn0v0aatN/6ia30AfwOdfm+gc5WjTevjQWq3Oc9lY0L
         HjsaHNd3dfWtSdHfk94zY24nynRwDNp/ew3Rk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390491; x=1711995291;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U4kMCcyUkoed6sIS9EKycwqMEH+VQBuifuMn3Q5OB40=;
        b=AzLYDyH4ll/2V/X3tXq3T7wXdOeVfHviNalR4y4nj+zV7k8WFRq/TRzUJESTyi5Hxh
         VQ8nwUxR2fBPH0e0nQfG/mx8JLQnr5vGxblIwWzeojMAGaqRAULB0hVRhnPXXlyHNqoa
         /0nv9bqDocgb8sOHVRBuTZOhzQqQIRN2bQwE0kAQE4K3MoGqFo4kMd88WibP/uMH8e5Z
         i57Av3GZcIsMFxGe3tGoC89Wgz4Hy9TL2DEdF692B9R1OebvL0mVa5J12Gsi/jJthqo4
         iA9pGre/Kj+8YcguL4L/33DSe0d0etykYRuYXYml9y5eP4M+kTBxmZV024h65K6ks+gq
         f2IQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWFe/IARjmKkwSioszHg2/DI87UyjeEdizzbQ33cHOftSqZ3FJwn1P87oB5BJp+QO/7Sfut7tT1ltnmYH9/Xm3C/kPEIVZpX1co
X-Gm-Message-State: AOJu0YwIOZa4QIFnWCSJE67bo2WTCdeZpSToK4DrGxwqxMVekoBs2n5s
	MaWLanNXdRTiBeFZ877HDNVhAMCUzXWT3IsukuowDhD6QSayI7dx9bKBvNJmOLg=
X-Google-Smtp-Source: AGHT+IFbMu0UuhQuCkqDoBM8m1aWi/F7wURME3z5k1umqO3wLg+k2GMB0nnSt/P1TCyFznGeORGqMw==
X-Received: by 2002:a05:6870:a687:b0:222:4bde:fede with SMTP id i7-20020a056870a68700b002224bdefedemr9547224oam.13.1711390491315;
        Mon, 25 Mar 2024 11:14:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:8ab:b0:22a:4ea4:7df6 with SMTP id
 r43-20020a05687108ab00b0022a4ea47df6ls304945oaq.2.-pod-prod-05-us; Mon, 25
 Mar 2024 11:14:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXFHksH9pIDPbS+rhStyBzpIYh3Ujh7KsviCYX9y9djpmMJX85EMW5hsU2gnpSbXTOmKUuE8VcQJ2a3I9HHs5rnpzCDGSt6EyGITLQoVw6M11g9UGs=
X-Received: by 2002:a05:6870:d252:b0:221:bbb6:4136 with SMTP id h18-20020a056870d25200b00221bbb64136mr280028oac.6.1711390490944;
        Mon, 25 Mar 2024 11:14:50 -0700 (PDT)
Received: by 2002:a05:6808:2120:b0:3c3:cc75:72a7 with SMTP id 5614622812f47-3c3cc757394msb6e;
        Mon, 25 Mar 2024 00:54:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW/qYQwtfBpRtaCl2d3uiY1Y4Ig7CDA0rO7dndcOHwbhlONxs8y/2BZOLgI+UwQytyjVfRAjcOJ2DZ2zj1B/Y88Na5WISg1G1bboChPpCL5cRjmFMA=
X-Received: by 2002:a05:6808:3a13:b0:3c1:a437:ba42 with SMTP id gr19-20020a0568083a1300b003c1a437ba42mr10963415oib.14.1711353288134;
        Mon, 25 Mar 2024 00:54:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711353288; cv=none;
        d=google.com; s=arc-20160816;
        b=OvcdMX5PelFQaP9v31IT38qk+LAwLijfvKE7jLMPoejNskAypmgSBHNTspWw/JSwzJ
         ULZC1URuNoNXbN+WSP0xZjjExIy1ppAx4GmxmvpebWvo45f5OQyL5RT8iXAN21qLoOSm
         6S3H9IsBS6lyt9X5AMBqO4u2fsaufSPm7AMWOlbY2wFNzo9DyMiFhKm/5372paRos16P
         4fmFzIhoYxkH1lkFOmePZGvSXMIDuAmSdgNq5Bs0xhB2uoaAJQdQ2kd1b7Gva3sihzDf
         r7LkQdp5BWBIOjTqZywa6lPKPRSCC0CjoAbgcY3cZS7WGQKPoJ+fpXAJ2IzPG/Y8U4Am
         3Q6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=s1qpraX8hqZSP8Yj9uFKmo0yhzZ4sw4wgpEE/08Sw0I=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=zCqelE7r6hGhTfB4sOYzqxiSw9sBuH6Wj796qAIceMkg1kTkvdrTNCopmuEYCfgXjv
         tU11SJxkUM/XIHd0L/Lk3SCpC295cCeyIDVn3pI91QBlu123pUdTQ8n4YSq0n+etuopG
         HYwN0ymKgZRZKxeE9PTp9RkQ9KsIbGdC2CjRCq2K9sSEkbuUuCVJdbjklGQjZnxEe9dH
         QIigWZv2ZSed7LA2gO5dGQB2UZMZBcJVkRfJ1sb4m3yaLDHDxIfboKGPXi5pxfOeL4CX
         XMhZiIKmQ1eDzwrR20e+Jt9Ot0rwZdDNyI84IB9kMKoy24qZp1fR1XrO90prrFpb08Q7
         5KYA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j1xHlxFy;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id u8-20020a056a00124800b006e531ba990bsi4772568pfi.326.2024.03.25.00.54.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:54:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 75287CE0ED3;
	Mon, 25 Mar 2024 07:54:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86033C433F1;
	Mon, 25 Mar 2024 07:54:39 +0000 (UTC)
Message-ID: <66169fb4-efeb-4da5-8280-a0585537acfd@kernel.org>
Date: Mon, 25 Mar 2024 16:54:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 21/23] mpi3mr: switch to using ->device_configure
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-22-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-22-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=j1xHlxFy;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 3/25/24 08:54, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Note that mpi3mr also updates the limits from an event handler that
> iterates all SCSI devices.  This is also updated to use the
> queue_limits, but the complete locking of this path probably means
> it already is completely broken and needs a proper audit.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/66169fb4-efeb-4da5-8280-a0585537acfd%40kernel.org.
