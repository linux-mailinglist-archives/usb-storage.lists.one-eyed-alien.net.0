Return-Path: <usb-storage+bncBAABBB76Q2YAMGQET7VC3UI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 796F488AD63
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:32 +0100 (CET)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-22a0094c322sf1691311fac.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390471; cv=pass;
        d=google.com; s=arc-20160816;
        b=QRifzF8D1IDz8NpWoujy1nBYZ65oeykqAbVFB0Y3cQ6AKTmm8KjwSJp6/dVptgYdLG
         42L4VfeWALxhHCTHaUSWE+7vWNH29xp4ZnZH0Xe14mm71cUQXphvg0q+FzSeuGFbv3jP
         IVjBZSrewwRCCy5MacX7U6CbYOF/ap5MzAqCPl7Z4LALzMJSTag6UzS34xY87EhYF706
         1ZIA/eKXhWpFGYlSyXEB/KyV0WW6mePhNTg62gXw8ubt+SXrpx+lpB3NUXvBhSRG382t
         LE+Zi5R6WYkYkcj3vW9qjQpT1DFBzl8c5EJHH+TeA35EtnOnIrSzoiVTO/WGPQpnZxoC
         XMOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=iaHwUezAyxM0G0D+02VOf4e5WOaZkWbSi8N6YkiDL6o=;
        fh=8snHufM+Dx0Ge7SrWPUnykqt63lZGK7nT2h+8waHPCU=;
        b=Ue/wBO9agZIiBURM7cPGl71/7lPyw6U3FU8Vykxv9IqeyZC8Fsy8ai6vEN4J3tN2Rq
         38SGyK6Tc0X2rUIKxqPfekNOdf8H8h4/Zv0r5SiZBmmK4sXyHZ8Et3HdWddYLsJWc8qy
         32pv2JM3iFIbyC/C7mZF+g803FOP11F8ZYRVpKOWj1YuipaE5H+vlHHI67CHUw+w7wiD
         7oGVF5Rdrvw/pY1IGlNwe4lcu/FGnKHKH7kyNsVtyvxpI3azeLAhtgB2jBzGkQ92QZAM
         5fqrP9Y7npBTcQo/OWT5smPIweIo+p2WqIXBLOVsfbTM+1sbTi5pZT8pdzf5jo7W7AcY
         6crA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QD2XDsoQ;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390471; x=1711995271; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=iaHwUezAyxM0G0D+02VOf4e5WOaZkWbSi8N6YkiDL6o=;
        b=JA0rX4e6MCOhlKsj4pJ0Bdz/thdbu8F7/ypOM+kXOhi0exXnAnBQiNSCVl3TgPbyTd
         iqyUoAXs3QZ3qPFiNqSIwG9Prk0U0m3VzoK9sFveFLzA8xSXtNOIm4qrT7xHxFkc+jzE
         Ca7VeXLmyvERUIP1+kp2Op0W2/N4E/PwFxN/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390471; x=1711995271;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iaHwUezAyxM0G0D+02VOf4e5WOaZkWbSi8N6YkiDL6o=;
        b=nqHtCawW1mrHgnpRt9T4EVZUAbIj2VUprerE+Kx4EaeP9fjc+8IFmvQBE7U8Ybi9PA
         38XhfMSrP7YNRObyG1QlFEiyX7qZ3FaT8vXXYzADHzmzW9Bq/KtMS/XlOXYwzbRSQn3l
         57xKsQ24s1PowgQTdNIkuXKtSNEszIFHP9bBqwZ7rYApqyL9pBo4Da5A7s7z+aE//9Hb
         xtjYI1x/TrJWNPzALPwlMxDwjn+NRYqUEXL8G7sICCOpYkDXyS1rXjZj+tpjB+cH3flJ
         l9MKw9kG2kNglUCD8zkhnZ9ZZN+6BpbNSI8tw1nE/sciYnXCIMqrmyGG+TBe+pTR+hH/
         GiLw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXZb7O03e9V7kehlTQna3ZyX+1Pz3kNtVtGOATHAQKJ+PTnWB27k1ABav8xuOMI342Y4gZu0xcZLvg76Tah5xhRwI9EXfoNLG0G
X-Gm-Message-State: AOJu0YzUDTbGNWxsKNgmlYbp/4DTYDcQ02pBxTqTZaxTj4FQb68NZCDs
	w3Lb3kBDoWgCSkXn1tVblxOJQjkMLz25MCTYRcrGK+KbEKSz26zYxItxsY/Yi7U=
X-Google-Smtp-Source: AGHT+IGIlmrSea6K5iaAWDKhWoe0KLE4uk3CB6FMy7zfeDe/CfKdxaiQ/5F/ldV7q8MX04bepVoU/A==
X-Received: by 2002:a05:6871:31ad:b0:229:8216:6972 with SMTP id lv45-20020a05687131ad00b0022982166972mr6649238oac.33.1711390471345;
        Mon, 25 Mar 2024 11:14:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:d613:b0:22a:439b:6872 with SMTP id
 a19-20020a056870d61300b0022a439b6872ls1252681oaq.1.-pod-prod-03-us; Mon, 25
 Mar 2024 11:14:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXrONSzvbugBY9V76AywiyTLDAH6SFYQKr0zcdmD2hygQYMB/TYIEmRVEf8PSUvoAPLgiMOI1ANq6MDlnY9YOiDutSrm9gwDWnEnZKMVH7cztQCyeE=
X-Received: by 2002:a05:6870:390b:b0:220:bd1c:6c20 with SMTP id b11-20020a056870390b00b00220bd1c6c20mr28649oap.4.1711390470904;
        Mon, 25 Mar 2024 11:14:30 -0700 (PDT)
Received: by 2002:a05:6808:309f:b0:3c3:c0e6:782f with SMTP id 5614622812f47-3c3c0e6797emsb6e;
        Mon, 25 Mar 2024 00:42:04 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXU6LY8ifshnBZsg8dJ/ezBGLvhiqtsUFgpzT95OxXvrkgkaYUPXyDUafRQ/alql1eQFNV0ODNgRw4EuGspp6je5SnYiUbRWBw2D1JZ/+Xn6CZzDGs=
X-Received: by 2002:a05:6a20:a120:b0:1a3:a916:12fe with SMTP id q32-20020a056a20a12000b001a3a91612femr6449647pzk.0.1711352523553;
        Mon, 25 Mar 2024 00:42:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352523; cv=none;
        d=google.com; s=arc-20160816;
        b=SYDLv/FHcSKDLwAMldMUwvTatDNtGFPYbvQn/IDdLNHKNHQ7JrLZDesvWJldW/7OnR
         hSXGlceit+oU1gnkVFvBH0yzv2T8Y4Uqsn1gKhqTOX4aDENhirecTIc691/BmjDDKtXJ
         tTrWFOqpMQXzRpDix5nA3u90DyfVbt+JiXM8Y3TK+vMTGfferZl3nTrSizGoQAq8V533
         gxC9qtC6TV/lQUZ7UPsdQi/bDuRCB99lW7wzgChAFsOWV9TDuZRzcu9gDu19Pz6AxeB4
         z11dt8b5tWYX/3XUg5mrRoJrg8oGlIuQ9v+f43SNE0HdFcv9ZKYlFjxPVH9o1klseO2U
         7Y7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=RDXPWiKfDBxe7jum1sMjcJzvLntJSSysyfLxdb1cdJW4iNndafhrQGUQYa8hy+bMrn
         NWLMKz9IOsKsVgnm1Heu842FoFRueVzuWzqvAIPOPqv0VDBQxqB3ise1xLrzo8BNeBFv
         1MJLLzdqknTNB1brZ6cymeXGcgkkdDF+hRJ6gjvOzc2xIJc8m4NWw4khFcu6cGgOFoKh
         PZlWeaMWmt0HXiON9VB/sqH70+TH8wAsBk8bdRK8mqmObrDxgq/F9qeV+hsaiPzBZpSm
         RcEEjtiUxvW8ONCY3lJICxZERbur1jKMj569XFvMFTDTovjwVp77hDpRUNJ/rgvVp92k
         N2/g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QD2XDsoQ;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id n9-20020a170903110900b001defe65c2f0si3577870plh.102.2024.03.25.00.42.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 39895CE1056;
	Mon, 25 Mar 2024 07:42:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E3A3C433C7;
	Mon, 25 Mar 2024 07:41:55 +0000 (UTC)
Message-ID: <794533b4-19d7-4682-ad5f-9b19568420c3@kernel.org>
Date: Mon, 25 Mar 2024 16:41:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 13/23] sbp2: switch to using ->device_configure
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
 <20240324235448.2039074-14-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-14-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QD2XDsoQ;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/794533b4-19d7-4682-ad5f-9b19568420c3%40kernel.org.
