Return-Path: <usb-storage+bncBAABBB76Q2YAMGQET7VC3UI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 5758488AD60
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:32 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a20ea2bcd6sf2807653eaf.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390471; cv=pass;
        d=google.com; s=arc-20160816;
        b=qAKO+afQcAsh8XR5VS+tTIDwCkpU8ZvwrVS4H+d7HMl4TrH3jgpkoz9XAT2eavW59y
         AloI9pRvGnuKMjoUL7fy1X2reyzxArAI4BloMt1z0STYk0VJYbeVzJknnXj1tUKTXGcJ
         O7I/Tj3eJK0dZxNv1auN1aAnX/Xu02ETRY5j+r6xtVvw+yxdCk0ir6u0l4FFqXdHQaan
         hz/xhqiGQ4Ve7rok4SDJFGUsYuG+WvmjyXHOF5wPcY0n/vWSUe8SfBZKa+EPOBuxSOJK
         83xkNIRIjQCZUGRo8uyZHpo1LylGoKtNN3R609PC9A8AdtQJ/oC1WJ8KGPI6Q1TvfRGa
         mdEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=5KgLTao3G8uagzoujG7dZdvXiTzZcJb7Ij71K6mucDE=;
        fh=ii3aLxy1WgM9XqOb3SSyWBFsyF2sTQGoJDXOyRZFGDc=;
        b=SgTGdKqvbf4SWDuTMycFinRCzZlrC8y3sSg3eBR0WT6kYjm5SG2UxYyojjipfcYHcU
         Erjf9ZKqbbbBLmHemXBJBYPphkb2/pG/osGl3cIi1ItBN9kLgY1CKapugPDlFYFsWirE
         Q9SewdJqQlxd8MbJ1s/+nKxIQpJ6rdUXEkAFQ0km4McnX1QJ6Dz+pva4N8Mc4m5MymA/
         J4oz93bHHVnzW7QXPn90t08F6JT+S4Cbl4/fGkebqsAiKx4PtiSyI4ae9Yc0KSP7wzGi
         l8ifq12u7uzwGuv7zaY0BsvMX+7JSd+fii8dOA8bNrC12MkE6DXR/HOlKrZME71N+upK
         JOEw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AhhgEdBC;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390471; x=1711995271; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=5KgLTao3G8uagzoujG7dZdvXiTzZcJb7Ij71K6mucDE=;
        b=fChdbo4Wclt+/cdJpFf1rmuqbpDcToyDf374xQmKTiOgZDFYpXgXP2eSdgG/QAN2vx
         eZ/agu3TDbu9g0laBy8OaPM50amwX1jA3baKoyfdbwNXB37fllqPqwtTkOQUsgtj0d7T
         AAmWyu6rKwI4y31MG2hHpK2lcdK+J2wmpoeXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390471; x=1711995271;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5KgLTao3G8uagzoujG7dZdvXiTzZcJb7Ij71K6mucDE=;
        b=pbByOcURGVL1/VPTt88ABX/8t+KNTrmcP5bb1jNi7T5R7Tw77u/QzcZApg/5hGeACX
         +mp40iFexr7yIDe6MOvHNxEbICmqP4uWrblJ7FDZH59K1WCYLOE2BF1vj09e8a03bImi
         rMaPzIqVTTOm+68T6LBazmwI9VLPP1cyBCF1EWqkbOrUSRGujTFBkQCV494orYE7gCzC
         Pzy2PwSEt6LYnj/xABBFGmY6QjVk7hpcwAgpCoOZ45r+NAk+e4liXFRN/0xKS+/hpZm3
         SPaFkzUd4uwW8mqHBlSpnyPUKQ7r1ZaCiw66JV3PGRKx4xw/yET3dbTKNF0LUi0bEbiJ
         qkyQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVprDmkhIvmxLuWj9WFfBl5r/Ghk882wQez38TIvAS3vudWlXm+/e8aTySrOchdy7VLhjf2BCHFsvUajzNkmhO23G0gEA1QyUbC
X-Gm-Message-State: AOJu0YzHIRnCWSG3y84QchDi5wAmtnDy1Ov2pYNs+vugO/c/u6o5sqWO
	CmoH1MMbxo77CskQtpxl1dCfkvK3WTSBUzYkdnOAbKpodPBo62Mba6t7r0sQsm8=
X-Google-Smtp-Source: AGHT+IF2FQffS/kfAIFZLkXQ83sa6rHgKdEOq9JsQLFejk5DU0XReBM/1scGBVB8ZKfF4P46iWyd+A==
X-Received: by 2002:a05:6820:98c:b0:5a5:2714:7df5 with SMTP id cg12-20020a056820098c00b005a527147df5mr7467952oob.5.1711390471267;
        Mon, 25 Mar 2024 11:14:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:e0d1:0:b0:5a4:3b6f:c4fa with SMTP id e17-20020a4ae0d1000000b005a43b6fc4fals4477746oot.2.-pod-prod-02-us;
 Mon, 25 Mar 2024 11:14:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWzv4JiX8tCP0c3LT3IDR0zKmUBhSd0crQ9ape7nxjJQnhfJitB5b1QFbrGs1e+4kitxrmmYQn2Vgu4mzMo/kaBvNH5iUbmUwip8ZU3d8bMC/Anc1I=
X-Received: by 2002:a05:6830:7193:b0:6e6:cf78:f5ac with SMTP id el19-20020a056830719300b006e6cf78f5acmr152527otb.0.1711390470875;
        Mon, 25 Mar 2024 11:14:30 -0700 (PDT)
Received: by 2002:a05:6808:2120:b0:3c3:cc75:72a7 with SMTP id 5614622812f47-3c3cc757394msb6e;
        Mon, 25 Mar 2024 00:43:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXD7p94Ir8csv18HR/FY0aKmqyXhlyFNVjr+3rsgU/B16bEcfiSm1kd/NpsqOQ55PHrh9XsSuXoUgtYA8Z8XehV7E6DhOemy9axca89iCNEF5PCDRQ=
X-Received: by 2002:a17:90a:8504:b0:29f:7672:7fee with SMTP id l4-20020a17090a850400b0029f76727feemr5538172pjn.31.1711352580370;
        Mon, 25 Mar 2024 00:43:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352580; cv=none;
        d=google.com; s=arc-20160816;
        b=sYWWpNnT8bPM4PNb4voG6OpiF1ba5iEegdksJuk9GumkOKalGnDeHpyH40kwTEd8wC
         R4E5p/Ce+PhYrrYaGfDN7lCUHw+9jiZMVr6W6+vt5Gqn0fKABnYVFuBa0O7wgksUHvkU
         Np9RK71YkGTFgascqZOG43Ic3yHwbJ52KShuZOKbts9mPLcNQJe2/d7/R1KRJ5aqw4iS
         SSKbjzGfMVatrpGGG353DpotmGs9QbQXQOM7Aqnq60Gw8bbiKc8bDTMKyniSLD4/Kxge
         zz6YY1LBHB/0AqL8oF+OrK2aRvJJg6D3pMur7IIYTVuMbkzAtZb0DNG6ShxpPJqIoRNf
         NtJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=MI93oeoqJCPguDKuM+TTtcEMnGjehV94Zly9sBctWGP5ijSnQ1yuSFWVjdQ6wLwyCf
         dkIhOtro8JT4JfIMgOXWfk84qlM3vPYIdzFfadA/jtBQLtLOAWFlakVhqpCQmv+xej6+
         egwz7WCiSmMs9pHN1sgdJgBHLnYa/ykM1v3uHdPKgJsSh7a8TmXu8Rxs90Ih/9Nc8Y/v
         SGT0xJL6yeYPYcStNgzhQQCUj+HhLdKuYVXsxjGwesIxKpu0Tk8LUvrCSBX/p/kDZrJ3
         AVPrTzYK3DlWV5dfaSZ6tPinN46bH8AVa0A+BmkgSOERxpZ7IHdwu/JEbbfjS/9Gmnm3
         11iA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AhhgEdBC;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id e10-20020a17090a77ca00b0029deba7c7b2si7072835pjs.0.2024.03.25.00.43.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:43:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0C361CE1056;
	Mon, 25 Mar 2024 07:42:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 331CCC433F1;
	Mon, 25 Mar 2024 07:42:52 +0000 (UTC)
Message-ID: <1890fdc9-41e4-415c-b210-f549e0b8436a@kernel.org>
Date: Mon, 25 Mar 2024 16:42:51 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 15/23] ipr: switch to using ->device_configure
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
 <20240324235448.2039074-16-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-16-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AhhgEdBC;       spf=pass
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
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1890fdc9-41e4-415c-b210-f549e0b8436a%40kernel.org.
