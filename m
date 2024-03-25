Return-Path: <usb-storage+bncBAABBB76Q2YAMGQET7VC3UI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 6229488AD62
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:32 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5a4965be4efsf4061366eaf.0
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390471; cv=pass;
        d=google.com; s=arc-20160816;
        b=zphwOWueueffTcLm9oQMqhJ7SHNhiAXXjlr55tPcjoRNwUK7+60hbfghA/efJcmgCu
         JBbWsFBc8TKWbuyYBq8RwPCzlEwdLA/ooK/9fBkMtHOiRInsrjWVjf3LteZQlGiTAktB
         HR/dO6eL9aWp4pp2697s/rX2HnYTzoGxpfwMlWwh9Mb5TsFU5srynP/JN4dXzM/SSOqs
         cTbzrudI9asinOZO3bLd0xxqD3u98L7hc7P+rAmSzl93OmrPzorf6YOgb4TC6O4bU1TZ
         mAKxtzlcxWuPw6sNcErp1nY2h8GhJrbOpgHoSnMlZWDB7V7q1sX4N8UQNzeie08tGkt+
         SQ8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=SDBJ29reHWVb+J2EY4/y6pDTFHC76HUnyfwvZcPwjU4=;
        fh=sB9esgoQmuAOxTrVajcNxJc3bYbndQ9D+yGymWgyDtY=;
        b=RkEX/SogHYdRegQCZCGTn8912PlKnJ85ACaAvrupa04bXUuJ2z/YYlyPrRXv9PqOYo
         XQkPQpglKGdFuxHZE47tPU0ZDUza8nDDMelpGV9okS/2Zme4Gsk9KdCrf1rRPPvefwMx
         RL6glZzVniLJ7D9sxAXCiyUY6lqsveO8pkwvxlFduVISNg3RzSDWn2ekNsaKecHXVjX4
         4tct3MjbMqFUO1jm9q7bVFIvvsB47oIFLShkYpbS1B7SoORl+JO6NPoIrHw2OhVRuLTI
         C/pXwinqnd52q4av2R8yoQfjs4XH7pXbmx3HpD9ablbOLTJFCrLKzqYluT4g2ky5sLTN
         MpIw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tYmnEvFb;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390471; x=1711995271; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=SDBJ29reHWVb+J2EY4/y6pDTFHC76HUnyfwvZcPwjU4=;
        b=aFWTxT7pMsN7VEWbNzbBne/1h03UzM81R713ft5cNm+64rPe3ejHTxN49biJqbdBI1
         Qddg2tiuJnRQRQ0mx33HgGhGTCaJZM4jv8fBIwrjsBnwm/LAs6BXNKusxjpicsOGfWYz
         Ir/z1egfkI+iVlcMXY4nrUH3iD9RAWVb2OnJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390471; x=1711995271;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SDBJ29reHWVb+J2EY4/y6pDTFHC76HUnyfwvZcPwjU4=;
        b=j8bRkFNq09syz6BVvZPIeD5cTQcGlGJb0TseWuc9wGs9M31tZ/fej/EcdsxBueIJj7
         RE4ToA/CRJqChiVkHYE9iAYbaPCzgGnSQb8fD0OOitf/nIXuFDsSbwKpRleTwLaU060G
         afefCoYGcBRzie2fQV4NhqWgzmyWdpkAvpQ7aowXnzNWnktHzJUxrK1pPQlGAKcRs5H/
         QrxaQQpk/E1Cq2hxBcS9KfFqJ1TnI8Adxhy2St4/7qBPue7SkpPPdtv5pJ+BE7J5vEpY
         dQv8kYRrQSm5XcU6jAnoPM/SkG6+QSxCSYZYNBQtTOE6V2dB8gpB9XJs7HrPJbR8trXz
         MWLw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXP6gQzomGt5/zG5eRnR26/uZU41/XkAWwsB01i1fQf2VHUyleu56RhkyeNPuCYeu9lEZm8EIqKofHLbF46FjkRNgV8oRBm2KVk
X-Gm-Message-State: AOJu0YzaYBIjdOZ07mo6yq2qx1xcwhDGMCxIp3zZKo+j9N+oi1xeL8nx
	KBxvFmrXRRjHJpZKKRXaYv2pbeAT5tjP/24Cq+Oy56pNZ7CvjSSEJPuWLhK2VvI=
X-Google-Smtp-Source: AGHT+IH8emJiyXeHo+maZSGi+MDeAegwX2+7Ek8HQgV3mv2dO28xPuSevosHoyUJZLVxP2MT5aLxgA==
X-Received: by 2002:a05:6820:1e0b:b0:5a5:247e:147b with SMTP id dh11-20020a0568201e0b00b005a5247e147bmr2837892oob.0.1711390471256;
        Mon, 25 Mar 2024 11:14:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:b6c2:0:b0:5a4:8287:2eba with SMTP id w2-20020a4ab6c2000000b005a482872ebals922582ooo.1.-pod-prod-06-us;
 Mon, 25 Mar 2024 11:14:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW7e7CRtQ8LUf82O9AhC2W+OlzTb98VqvYy8zw8GMk3wkU7mal6tcVBXgXXvmPBZn3xVjM3uTBeFPFtALiWXrS5GU+8QHH0TcG/SGXX9NfB4peXXt8=
X-Received: by 2002:a05:6830:4411:b0:6e6:df05:7fea with SMTP id q17-20020a056830441100b006e6df057feamr40861otv.2.1711390470894;
        Mon, 25 Mar 2024 11:14:30 -0700 (PDT)
Received: by 2002:a05:6808:309f:b0:3c3:c0e6:782f with SMTP id 5614622812f47-3c3c0e6797emsb6e;
        Mon, 25 Mar 2024 00:40:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXDlGnket+YixKbT4/sFIVIURYG/f8HJGbxaXZYo24LQ/4nR1c6DfRTanpcGeLPvIZ7wQxPgeM6OwbXuRRZaMjDg5g31qjJP+6omuk9xEetJWCixFk=
X-Received: by 2002:a05:6870:36d5:b0:229:ff08:398e with SMTP id u21-20020a05687036d500b00229ff08398emr2293434oak.21.1711352441782;
        Mon, 25 Mar 2024 00:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352441; cv=none;
        d=google.com; s=arc-20160816;
        b=qQMn0KlY5fBX04kdiM/6mZzOkUwCb2MR79nhDEuVHi9QkNN2n7E5wYtERer53PVL75
         Ie7A6PvZ7vKhGiBl4d07AS1aZOXh0+t2hvVQ5Dii1CHXEyhLZmdfN5mDRclgVKqqS4fy
         u3p1T/kCDts1T9jJgudgYXyAQcdsRXZpJP0PlZw50EAstlyoN5MLx8yLYFJprXc0qhKg
         KGXDn61orDJdSPshjtNrHO7sHmQUkEa3gphrVST6fAtqfOBzGNyMeJRJlU3FGSURUk05
         QjNUWDjy/cIhkGs3D2Qqrp+hkhFKUovucB0cMbCms6p8Z9tnyAxUKRPLZ3IOQoamS4St
         Ay9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=0foDv7rN2ohQFSI4FrCwajPHPMdbg3DAviXSoH3CDfGW2Bp2BRSUWy0F5Djwccq93X
         gcuLsRGKY67nig3mBawGA1ywr42+buNnRxlnxWFoiJU8AFk3p7NnlQVh+g7FnQaK/uE6
         WDwMeAJYVWUJgPlqDNhjjPu/rnftuvuQIhoEPxs11MSOwqjKbvAgAbUHoYvs7KaNnH8p
         SSHH5iXlkeUS5SZEF+eqpo9ANlvaSiwNUDb3DQmBzA7wVZAva5dXKMDGHrZiG1TMZeko
         thFcY6W9glw5LahODGO+YXBdhmg5pY1NIc2wd57wFoOBa+d5WEQusw9EZLzrE1rrwecV
         ABjg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tYmnEvFb;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id gr13-20020a056870aa8d00b0022a356e8294si516440oab.50.2024.03.25.00.40.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:40:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5DE9760DF8;
	Mon, 25 Mar 2024 07:40:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2407EC433C7;
	Mon, 25 Mar 2024 07:40:34 +0000 (UTC)
Message-ID: <004fec87-af1f-4a6a-aaa7-f57406bead41@kernel.org>
Date: Mon, 25 Mar 2024 16:40:33 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 11/23] megaraid_sas: switch to using ->device_configure
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
 <20240324235448.2039074-12-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-12-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tYmnEvFb;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/004fec87-af1f-4a6a-aaa7-f57406bead41%40kernel.org.
