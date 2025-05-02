Return-Path: <usb-storage+bncBCY2ZJEUWQHBB2MN2LAAMGQED23XDKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x247.google.com (mail-lj1-x247.google.com [IPv6:2a00:1450:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A41AA6CDF
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 10:48:43 +0200 (CEST)
Received: by mail-lj1-x247.google.com with SMTP id 38308e7fff4ca-30bfaec88edsf12514581fa.1
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 01:48:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746175722; cv=pass;
        d=google.com; s=arc-20240605;
        b=b4DEkB90/wPQb7sm6LZQ8e8yz4lvoCrkn51g5j3vPSiM4Ujbkglu7JNF401NZhf8sU
         QpB8lUcdfAVN/Apbn0Spa5JdHFgUD5n8KXRuNJ1gmsMzXArhLaoGCyKPE94hvvqwyUiX
         rkpkDL1ukY72v7U7TF83fNGGntw9PL4E/WmaNYjsPVOJs3GZ9kA81OzL6zSNZqQCIjzS
         VF5kGvEET9fjXGYS1B7CwEZpNoVs/2vWwzOS75aDuBvVDqJPzbVQXkvVaWXgvayvi3VS
         QHYvu5adaILZx3mNAWAnogq3nJNPTjX/mMdt6T1ihF06So9xI152zJix77FZDcsingY+
         yJsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=rlNa1RCXM8xb3TBdCA9eiEkWtySI1vCw2gwzw2C9Ef4=;
        fh=7VYpMEf83ze+0tvw5Q9uAse6tz/01HRA7U0JX0mvXbU=;
        b=gW+IRryuvgqGvqkpY17kaorxR42utPg7o2ZFtRL3hFNctblZh71XzirUOZcatR2JTq
         sdPcJ3zep1Iy3bEoQZ4vtFqlN4MmvsoVsXfn/wsqDRsQcJmZlmq6ypka3qQetS1DROae
         OHT4M+sluOePlidqy3cKaQF9OzHC4FxbpRbjVnh50j2djIVIBGBAu7RG+wHWnKeDz7mD
         N7/xJLrzl46VH/EjNlpCnwP/QN0vZO8kbMn57hZ7xasvLKu6B80xkFGB5EUDrpt9V7pC
         NRDPxaNtWNGoS7wRlRk6k2OFb1fUehlok8F2TdQxcpvYitdUwa6ZXES5dAyhilUJjPZw
         ZRQQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746175722; x=1746780522; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=rlNa1RCXM8xb3TBdCA9eiEkWtySI1vCw2gwzw2C9Ef4=;
        b=L2wM/MNuEHv7TUGsuevp2k65+yxJBsmy8vXIQgGAjmIRLe0HityGzab1Dpmfq5QGQy
         sMbeSWqq/bwj72e44z7qXjm9/ZeFKVyIaxErYsOVqM+nGW9rbQb93zwNCA2p/kONzEer
         MGmeIGOS5LhBnnCV6wfiYOdBlnicQ2qfbi07A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746175722; x=1746780522;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rlNa1RCXM8xb3TBdCA9eiEkWtySI1vCw2gwzw2C9Ef4=;
        b=nC8q1r01u2OAaXZm35w/gaA2vUsHC/+C+giTbN5O2hwLxwBcDunDcRrOu1e+gPLEjN
         dMxZNYIjPIi4WarhPb0Yyh8kFseQPHGOQEeRJ3WeE5WTZx4jd4xB1hO65mSpmN3ReIk0
         ylZTrRZCG39myl4iRgmyMfKW+OvhNKeBzeBhpA+KSgmn/uJ29iZmupdcg1OPEHBdo1n+
         LioD6M+HmavubpSbJESjGAU7LeYRRe8sd1wCbDRH5N9PkpAOMVeH+oYdjD8CWWpGcDhI
         d0F/HECCa3hYR+dq8VIO2FibL8wnJM7z0X6GYSVfK1ArAl6f2vA139QGz/xQvwrFmrK+
         RHUQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVgBaonFUXBLs0TECoL+AUYqIPDjIwrtDodqiU9egkP1zJhBpTNgbV7+aCil5uHZyHfuNHo0A==@lfdr.de
X-Gm-Message-State: AOJu0Yy9ssDeBAh+i0xqMt1Q/ExUZOM+Rg6IUWhTM4r9J4Jb3+2KP3Ao
	NIQdaRZ/S1d/a/z9h4ctVzvRX+VwbM4wf4a1ZP5zxb6PQMpIjw+LuCUxiXZrwYs=
X-Google-Smtp-Source: AGHT+IExphE8AiKhCHBm5FsW+ZxedmhmLGlpS+1J1WGwgXJd/X9Ciyrn3U3onOPwoCJM6+hCrwgTNQ==
X-Received: by 2002:a05:651c:892:b0:309:20da:6188 with SMTP id 38308e7fff4ca-320ab29b472mr6199001fa.6.1746175722295;
        Fri, 02 May 2025 01:48:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBH0wjevt3VO9VQj65Yc+OOS6FTudBAgzlatLXgoHuzHIg==
Received: by 2002:a2e:8788:0:b0:30b:ecb3:9b47 with SMTP id 38308e7fff4ca-31f7a2a38afls3023491fa.2.-pod-prod-00-eu;
 Fri, 02 May 2025 01:48:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUx5+wK1XsEQH/F847n+yPtMhYoa8m/fl0Z4IibWvJ0Mu1j/38Xh4LiQj/ved/QudqZqWLs8w3zMYbSpg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6512:1292:b0:549:8ff1:e0f3 with SMTP id 2adb3069b0e04-54eabe9ee99mr616332e87.5.1746175719913;
        Fri, 02 May 2025 01:48:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746175719; cv=none;
        d=google.com; s=arc-20240605;
        b=EAWXmtRkGNfd9EkecWiX0zXPwTd1cvD/44efEnFfpTcKoGje+ejMi9aARM2AoRpLvP
         bjpUVGMG4/c8J8ppnPNG5Qw7zoIFt2LBMpZY9MDCVg/BKHcC1d+ZB9a3+RC/FRQDBCe4
         Ny6frCtX70YOkCedehoSqRsbHelVzOI4t9ypIoCmtzpOl6n1aRkwRNoZqYMzkYLZy4U8
         1TEZ1EK4j4pwYcKvu7XD43TkKYm7oepGBQWtMqZN94uurR0iaPimrClkACw8+QfoGnqL
         SUSlZiagbgTa6miNS2bDB8vwH1Ibf7iGZokmoWov6wnzI4UIFOZ1KcamZV6mYhsE5Z5c
         tJ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id;
        bh=iv5UX2pkAGZjCBOJLhJRIqHcFnGfU3+PBGIH3VccuHA=;
        fh=ixyuj+Cx7VdAM050QNL1hlq/xJCLah+fbpgbwSH7g9A=;
        b=SznOBqSkD0OrJeZmYVskAnAePBq8e2ucxGuczK3AG5E01JIXMKiwFXsdGHLaODMWyp
         yf4Uop2EnFmjb/suFme3zrbUZwUAzUsI83nHJuovfeXzc+JGzJKjICQ5tucig1HLYMJE
         2aB2+WCZzyazpp+iveNruk7nDic3UAxXR+uMl2gwyi8Ze/7aRg3SNxv8ly47/jZ7qNph
         5w/OebnYEiURxho/GYwe+6NcMsXvwDuVvkDLamWnPbrUNLowbYC8cqFXqo8BWFZaCDF2
         EOd5YQMQeOlMEJsXg6MuSmeyVa5MyjDNV7N2aEITGoKcMwHW/FbnDcJfQJex/3n1cGZO
         PeHQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id 2adb3069b0e04-54ea94e2685si950476e87.208.2025.05.02.01.48.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 May 2025 01:48:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.2.102] (213.87.139.230) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Fri, 2 May
 2025 11:48:38 +0300
Message-ID: <776e726b-7814-4a8c-ad13-853122bf85ef@omp.ru>
Date: Fri, 2 May 2025 11:48:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 4/7] usb-storage: reject probe of device one
 non-DMA HCDs when using highmem
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
CC: "Martin K. Petersen" <martin.petersen@oracle.com>, "Juergen E. Fischer"
	<fischer@norbit.de>, Alan Stern <stern@rowland.harvard.edu>, Andrew Morton
	<akpm@linux-foundation.org>, <linux-block@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-mm@kvack.org>
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-5-hch@lst.de>
Content-Language: en-US
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
In-Reply-To: <20250502064930.2981820-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [213.87.139.230]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.1, Database issued on: 05/02/2025 08:29:13
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 193072 [May 02 2025]
X-KSE-AntiSpam-Info: Version: 6.1.1.11
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 56 0.3.56
 52db7f275cc9b6820389ba9ab2ac225370e1c244
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;omp.ru:7.1.1
X-KSE-AntiSpam-Info: {Tracking_ip_hunter}
X-KSE-AntiSpam-Info: FromAlignment: s
X-KSE-AntiSpam-Info: ApMailHostAddress: 213.87.139.230
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 05/02/2025 08:32:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 5/2/2025 6:29:00 AM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-Original-Sender: s.shtylyov@omp.ru
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
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

On 5/2/25 9:49 AM, Christoph Hellwig wrote:

> usb-storage is the last user of the block layer bounce buffering now,
> and only uses it for HCDs that do not support DMA on highmem configs.
> 
> Remove this support and fail the probe so that the block layer bounce
> buffering can go away.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/usb/storage/usb.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index d36f3b6992bb..49bbfe4610d5 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -1057,12 +1057,15 @@ int usb_stor_probe1(struct us_data **pus,
>  
>  	/*
>  	 * Some USB host controllers can't do DMA; they have to use PIO.
> -	 * For such controllers we need to make sure the block layer sets
> -	 * up bounce buffers in addressable memory.
> +	 * We can't support these controllers on highmem systems as the
> +	 * usb-storage code lacks the code to kmap or bounce buffer.
>  	 */
> -	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
> -	    bus_to_hcd(us->pusb_dev->bus)->localmem_pool)
> -		host->no_highmem = true;
> +	if (IS_ENABLED(CONFIG_HIGHMEM) &&
> +	    (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
> +	     bus_to_hcd(us->pusb_dev->bus)->localmem_pool)) {
> +		dev_warn(&intf->dev, "USB Mass Storage device not support on this HCD\n");

   Supported, perhaps?

[...]

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/776e726b-7814-4a8c-ad13-853122bf85ef%40omp.ru.
