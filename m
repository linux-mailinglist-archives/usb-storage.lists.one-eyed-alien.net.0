Return-Path: <usb-storage+bncBAABBG76Q2YAMGQEMFLTS3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CFA88AD6E
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:52 +0100 (CET)
Received: by mail-ot1-x348.google.com with SMTP id 46e09a7af769-6e67641a9a9sf3884932a34.3
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390491; cv=pass;
        d=google.com; s=arc-20160816;
        b=wPe6Dsc9fj4qLvgY4SpeF1wMWn/z37T9Nhb43P0liqnwEfDaK+6WPtnFWUiBRlRyX9
         6PdeDzRKve7Y5nVQpZHBdbavkyLxQ+uHrYl4ek6MPnjw1xrl9XptAf+Egr5d8IcYrRGk
         toTXWVfgfwnRJsGiljYazOy6Nc616BJouot5LreFlTSFCIUX/WcClNpJcHvavD39o/+b
         Wjvgrv7/0sKQZs+Vu0Buo+l/RDheB+bvRYuiKVPdacqkDKMt6OlBqSTvjAHIIwnHgtjM
         V7fFyIYe3ccDfPNCI2gp11f62gFix2muB4B3/iYiX5sxrHIq77lovF8abotQgWRNwT3v
         uzhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=K7Q55PRrpjtJLJZyV+QwRVES3PvFWJTX3SxF2V1K84Y=;
        fh=zEa69jgLqtlP9i13Fu1zhx5FBwpc4o8hhkRUqMTJpmY=;
        b=X7eg5HGGEb9lV7hyjTIg43QbM3iZSGwRULyumW2ASxWb3m6LBSy5oDcTdr8TXyE6gA
         MKvfo6OHCxxFQ244hL1FGg5UrmexYRnJw1t9en6DzmyL7ptjowCUEOO1M8jQXpPcXNP8
         XoVJimArCivc+eu58TS68n2iIHPufL3ZmH6y0aCaQ6Tmbj5A9KyxkCW77gPSST26zYza
         +CW42io636usfgLb429bMVKrLceEUSCmx72YFodw7Zrj+Ooo4dmHLyMKV+O0y/EAgk07
         a2iU+sEURu0JjIDOk53XY3JorVfFjKo9irJh94dKv8feyTH3487UCP8f1gJbIez8I6xd
         I8+A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DRIyCw+R;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390491; x=1711995291; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=K7Q55PRrpjtJLJZyV+QwRVES3PvFWJTX3SxF2V1K84Y=;
        b=RSuBp7zAR9vZ9PhQBGMZFr5cvj47YcHosgF00mmK0bvhbVkG6DIQ5okRcBwcDYz1Rr
         EajWjqH+DlvaIjPyO1+ibCltZFhXPcO/HUK/AmNRXnro6J78dBIDcTVi5iV2mGncg0X6
         02P5O/XjqoaJ98029CVj8rrB7M0JB/GCR5VqQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390491; x=1711995291;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K7Q55PRrpjtJLJZyV+QwRVES3PvFWJTX3SxF2V1K84Y=;
        b=bp4I0L1bdCfWvdjtvOjyev9TTVx9BJICUHXb//FU+H3dbh2ct0360HJHIIVAIGNy/z
         L1vcF22HtPE6M4HUun5IgUB0Ys4YFHA+9TyzMZBJkEfB8YF3VkuoiBcNqOXgp3A5Qdj3
         n/qsDLEOyGwjSCehXXeF2NAXlJ4HCMdLo1e0G4+zq5pejNg64Z3X18OCmcfoNWJ0upVD
         qFWbmR2n1jELNYGQPQPib3JQ1sIn8S60WaaUWXydvQ9EdRBfr0QN1ivs2KwvRVEsGn/0
         1DYK90+OUyKU15rqVGEmiAQslN2YJsrr4zfq6UhbuDKp0X7C4TLjoS4Z7SU37aJjE0UE
         JOww==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXtRhb041TGzUiyu2YwD3AivM7WqzysEop149q1cF5OZyZh7/Us6B0jPny2064iMhiKyO7qKHSwPZq0ro6YXeqR8vlKtZbEEe0D
X-Gm-Message-State: AOJu0YwX+5XbCmNcKuYfxJsTloAce5dP+SV3JsasChDOerWkIJRdAKIZ
	EmM886LwkSIrdfr6JVypGmenkWVYH1YiUqlAAf1RqIhuHasNvndQTnk2vtaonr4=
X-Google-Smtp-Source: AGHT+IHG7Zs2Kahew5bSZx4dpI3XiTcTUzFR6W8A9qAAOR4LX12Pd+KK60YdIbaiU7CoxjWrx9Tu+Q==
X-Received: by 2002:a05:6871:8a5:b0:22a:4fde:2895 with SMTP id r37-20020a05687108a500b0022a4fde2895mr2033290oaq.20.1711390491240;
        Mon, 25 Mar 2024 11:14:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:7896:b0:222:6d59:56da with SMTP id
 oz22-20020a056871789600b002226d5956dals304204oac.0.-pod-prod-05-us; Mon, 25
 Mar 2024 11:14:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU7YLCglo2216fRZfYrXgrcQU3R890qTk4cI/Cj8SQmJrSGoUVkHVq1Edxxr3N0zYLja2ppgQGIm9PHly6CLyUYbn5rLNQsMF5WjVNBVN4AE9RabwM=
X-Received: by 2002:a05:6870:d1c5:b0:22a:926:93f0 with SMTP id b5-20020a056870d1c500b0022a092693f0mr226212oac.1.1711390490944;
        Mon, 25 Mar 2024 11:14:50 -0700 (PDT)
Received: by 2002:a05:6808:2120:b0:3c3:cc75:72a7 with SMTP id 5614622812f47-3c3cc757394msb6e;
        Mon, 25 Mar 2024 00:56:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXmHla4xxIoe5r7/S3Ot0lHlwgqn2ciCCtzaHMLBkxKGF2xVQr4f8v8d4USvtPj/df+xESzmoUiMWvF7nwZ7bfgs4qqUfsT+WLloUIWyb7Alpukg1s=
X-Received: by 2002:a17:903:2452:b0:1e0:c0b9:58a0 with SMTP id l18-20020a170903245200b001e0c0b958a0mr2198834pls.9.1711353380355;
        Mon, 25 Mar 2024 00:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711353380; cv=none;
        d=google.com; s=arc-20160816;
        b=ZdBjX6gmKEcZw8mgdtXX4q/h927SY8I9hhMgoClipTldXa1VGfkQYm4/mCoHm2wNci
         X+w9s7pWFC8Mb1G3kauHam/WGRI6HvdRVqmL1jrdE+EUfeFu1N4a5w+rvboW7D4XqQth
         rmX3s01xlZmK3GLBzmQxkGQIJ8EOo6NI0UY0v3JzCDxiDlDNgd5qWRXQC+tUkK2ZAzzY
         CLzzzbq1iYgyJ+W9EMPQC0Zg6I9G0uyVxd3fiBIQJIcvzZnSdHsyyAFerKxYX7rH2ZMa
         r+cEoXyhMkIWuGt6VPvIogbsglpY1MfzNABtVAm6/ZNAGMOgzjGOjAhioUUdoVsQNQVv
         gGsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=ClTeIEq8EGww/QzS75qN6+eBZl6epwcS5mmumR3g9JQ=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=lMcdvuf6xQMW6RZdDtnGcH3Yd2B4g+SObDTAlczX8PF9bZzidRahsM+h3Fksf6Xd0p
         giSCsVokQjN0hUjX9tAFHybOsG5XUf2XIgNFgmaUT3abfyGyf2CKOehksCIXZ/XcaCYo
         PwCDJ4zpBmwOJ3Lof4MD8MMnXMYQZbEam/qaznUFk2HDZeKgxpHrdgYscgWwB4+XBByD
         yQX1ogbdqnkY3Gsd+l7LY0fqfdR7QIt8C5BUNr4bO1HWc4Rbjtf9fCNHmXweRztb04W/
         44H1mTHZVInHZ/ERwY3WZFZUfMvA0knjKs6KaYCKjMiK0rCP0ynj7oRCMo6/5yWY2KWQ
         lqlA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DRIyCw+R;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id q12-20020a17090311cc00b001dede3a67ddsi4614971plh.106.2024.03.25.00.56.20
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:56:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id ECF50CE01FE;
	Mon, 25 Mar 2024 07:56:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8369DC433C7;
	Mon, 25 Mar 2024 07:56:12 +0000 (UTC)
Message-ID: <bc4293a0-988d-42f3-a94a-b6715d72c204@kernel.org>
Date: Mon, 25 Mar 2024 16:56:12 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 23/23] block: remove now unused queue limits helpers
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
 <20240324235448.2039074-24-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-24-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DRIyCw+R;       spf=pass
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
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bc4293a0-988d-42f3-a94a-b6715d72c204%40kernel.org.
