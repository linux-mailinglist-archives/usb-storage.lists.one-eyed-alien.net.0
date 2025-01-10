Return-Path: <usb-storage+bncBDJNPU5KREFBBIO6QO6AMGQENIG2XRQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D36A08D25
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 10:57:55 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4679aeb21e6sf31263851cf.0
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 01:57:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736503074; cv=pass;
        d=google.com; s=arc-20240605;
        b=EEcUFwZk8COkoomLQUZ+UmgjrrzucA2nEUlL/iQGoXtMhiMVyIAd2e+z/9un5h0Dzb
         zeUl5rWazpLgXCpacozhgx5QT8g+Jkj3jKwyr0KN+vU+NPeebXDtIt6KeebkMUE+ufiU
         E35+f+ZLSkUOIuFNvmPi5+p+1E0FYF1u7lPPRZXafRraQlPCUBzIVhhs8MDfJ9WgZulr
         Scg2a1k1NawRgEKRgWvXCiXyJvTlaQas1r5mCldgZMEQ4LCFcZIxYYyePoaQZc82f1PP
         tI/2xmkdg+1L4k0AnGaFs7AJQTMrjT/Kl3wgx1Y7wsxULG1AzvKrfyGy6jn58UmIPQDC
         ShOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=hd+XpMI+O5iCXnNOq4medBVky4dBtROsYiU2E2DzJy0=;
        fh=v0ft2U5OIJNP3kaesm7yDuv0zTTStkUyQnbPqGqZjPQ=;
        b=O9LI4B6SbHlIRU8ahp981MdzhqXOq1pwOHULP/Q0uNuUIDou9Z7daeEW7ElaeRK1Ir
         Xh76n/lrAdsAK/6TIIVnnMZHOeunp5g0aLYQRTjm9xS+JOjReS3dH90SFIbbNqnvmmV8
         c/wPQdcUDJOsg/YuGVA3bvByMFa9Vp5syzE+VLTGEe29DUm5bfjsaCTl4V3UVpsxCDe/
         6aG7juB9NIlizW9/4Jm5oQiu2I3gH5SjHHtI5Kf+xINafBEqnb2voVOalEm22CusFFMU
         a8aIL6duUgpOIQRkTfLNvjEAqmHx6fPPOBja91UYKwXOXo2LOCZMcV20jQ8076xhZQNm
         qaMA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nNFYg8qj;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736503074; x=1737107874; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hd+XpMI+O5iCXnNOq4medBVky4dBtROsYiU2E2DzJy0=;
        b=Z0SuOzvclE2pf/el0iOE3mdCZ4pQTv2MDPMjQcWrVE28mqLGtFR1JJtCRzbLKdNBBG
         wsgm6mEO8/PJUu+ypt6Poei87vLIvdL+dzAPnOuKxT3AcP0IgzJe86neuOphbYrvqAjM
         oXeINhUxq//Jt6hq6bnsysIoXQ1wmQ3pCpA6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736503074; x=1737107874;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hd+XpMI+O5iCXnNOq4medBVky4dBtROsYiU2E2DzJy0=;
        b=QMA46SgJWcvQIPfxSEPUmBCdMsU9gtpBsrA493SFZcbdmICq8vKVijiNztE2MXSjN+
         nxhXQzVp0PYwRNBsP/IgdrfqMNmkttXPxvLKbjTXhZFk2HkvIg/gONtGRkBrRtNMIVnw
         NWzZoP3WqJACLooCaOadUQ2Nv75bMO0lfMmB3ZmnD9I2j3Nqd/hp467I1IXC0YPtYO86
         vDdvvAX/C++5+L1ddWKN3Q1yhXr7YFoXxSGizvGXWtpreSN6ioFHImUBFiWf+tzckv8K
         5sXvJ9Iu12G6aHoBjLyow49x2qXdhqOi8EjohpRgWKiO0xXtz7Oxr2/gnCLA9S6F8Q+1
         eF+A==
X-Forwarded-Encrypted: i=2; AJvYcCUocqgNUfFqZcupBSnMyuynaUBB/T88GOrqFGwdg0aReprau4frF932do65MU4BDlV2ERu2Mw==@lfdr.de
X-Gm-Message-State: AOJu0YxASId3z3PdPfBbx1zKpUlNl/S8uE097T99CCbcPliz2g2HMDve
	S/1cHFqlR8eWY1cyzNTyDEhCuO28FHB/4iLUVSWPa4Up7fNTmAquxBRQ4C3YgSU=
X-Google-Smtp-Source: AGHT+IF4/pA5zgM0ke8YPgZqjlTj2KqxOpAh2GoQgpC9giMfv7b/mYXja1oY4kKbyDUYM30YoY7W6w==
X-Received: by 2002:a05:622a:1a06:b0:466:a091:aa3f with SMTP id d75a77b69052e-46c7109f0b1mr147669021cf.51.1736503073831;
        Fri, 10 Jan 2025 01:57:53 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:8188:b0:466:a845:1c92 with SMTP id
 d75a77b69052e-46c7ab38e16ls389391cf.1.-pod-prod-07-us; Fri, 10 Jan 2025
 01:57:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWBjkPMJvsS+yHqIuP/WP6iOtIlnh9GUQs72NTeEOv4z4lVyiz2+NXIibdEsm+azUWmNX9ybmgr0mWKWw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:1a0d:b0:466:99a9:c354 with SMTP id d75a77b69052e-46c71005c9emr158825231cf.22.1736503072881;
        Fri, 10 Jan 2025 01:57:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736503072; cv=none;
        d=google.com; s=arc-20240605;
        b=fCfy+EUtzgPOurvgIcYjcv50UZVuLJSEhruFasIWqWju476/DbwvAoOpw2wNBag18I
         JDjwdUVadIf9aZu+WOTwRWoXk4mUQuezMsG183x2s3z0dTQZM0hLd2x6wjYiUrbysenw
         d11ZbhEWhLkm5+hpmqDOJhFpaM9NYkwS4+sJ89dewsmFQNnKIQcgzzfpluOEdhadMq/f
         iIkd1YdtxwSn9QQMKCYzM3c0b2XvfaeGNI+ITKG71EFv+T3OArlMF5rqQSNECwr3/hrw
         6ZpxI9jjiKBrSvsGwv751uaCpmnBiKtykiFv2VeBCWZkcblvmRIhw5sxEDhd3xRhhcgW
         7AkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=jOZgEjWV1TP6jYXRn+RNcJWdu046GUntYBhc7e0VB9I=;
        fh=lTp9MiTANoZqE4mq6txWBPU8tvjMBgIP3m8XF7FunXo=;
        b=NC7FhX7R4m9fweQeMg/dETgEdXyBt636YgZJEB1o9HGSbMA8FieJ+dmSVBnFkEIcfL
         f+F3aErO5NShpwxRiXYszhAM+KBdrH6N89EvGZC2YmEky99SVu2mrlGUW33bLB6Rf6Nk
         xFQivSjkVHoTp2e+jI1BxZbf4yZ8d+aLwrQpYr0oI+b2AgfrKCZZSnKpOLFZAjMTpNFM
         trkG80tkYSeXc2oDq0JbnwrZI+NSsTKK3SoZKp82BQmMyDSadUMMM2zEZ4BQTsG8wkIL
         XI1YF4/uIZa88Id9VkWs2BONyaNhaIvR2aFpbl5Utnkqpdl4vb6nCyUdtXfLYofDBqNr
         BF+g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nNFYg8qj;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id d75a77b69052e-46c873e50d8si16832381cf.320.2025.01.10.01.57.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 01:57:52 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 10E31A41C38;
	Fri, 10 Jan 2025 09:56:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BE57C4CED6;
	Fri, 10 Jan 2025 09:57:50 +0000 (UTC)
Message-ID: <d7db7620-1f2e-4216-8929-2cfd4d847447@kernel.org>
Date: Fri, 10 Jan 2025 18:57:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/11] block: add a store_limit operations
 for sysfs entries
To: John Garry <john.g.garry@oracle.com>, Christoph Hellwig <hch@lst.de>,
 Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>
References: <20250110054726.1499538-1-hch@lst.de>
 <20250110054726.1499538-6-hch@lst.de>
 <79d85a4e-57c3-454e-a65b-d2a3764eaf0c@oracle.com>
Content-Language: en-US
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Organization: Western Digital Research
In-Reply-To: <79d85a4e-57c3-454e-a65b-d2a3764eaf0c@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nNFYg8qj;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Damien Le Moal <dlemoal@kernel.org>
Reply-To: Damien Le Moal <dlemoal@kernel.org>
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

On 2025/01/10 18:56, John Garry wrote:
> On 10/01/2025 05:47, Christoph Hellwig wrote:
>> -static ssize_t queue_iostats_passthrough_store(struct gendisk *disk,
>> -					       const char *page, size_t count)
>> +static int queue_iostats_passthrough_store(struct gendisk *disk,
>> +		const char *page, size_t count, struct queue_limits *lim)
>>   {
>> -	struct queue_limits lim;
>>   	unsigned long ios;
>>   	ssize_t ret;
>>   
>> @@ -284,18 +269,13 @@ static ssize_t queue_iostats_passthrough_store(struct gendisk *disk,
>>   	if (ret < 0)
>>   		return ret;
>>   
>> -	lim = queue_limits_start_update(disk->queue);
>>   	if (ios)
>> -		lim.flags |= BLK_FLAG_IOSTATS_PASSTHROUGH;
>> +		lim->flags |= BLK_FLAG_IOSTATS_PASSTHROUGH;
>>   	else
>> -		lim.flags &= ~BLK_FLAG_IOSTATS_PASSTHROUGH;
>> -
>> -	ret = queue_limits_commit_update(disk->queue, &lim);
>> -	if (ret)
>> -		return ret;
>> -
>> -	return count;
>> +		lim->flags &= ~BLK_FLAG_IOSTATS_PASSTHROUGH;
>> +	return 0;
>>   }
> 
> BTW, this function seems to duplicate queue_feature_store(), no?
> 
> I mean, why not:
> 
> static int queue_iostats_passthrough_store(struct gendisk *disk,
> const char *page, size_t count, struct queue_limits *lim)
> {
> 	return queue_feature_store(disk, page, count, lim,
> 		BLK_FLAG_IOSTATS_PASSTHROUGH);
> }
> 
> I think that there is even a macro for this.

Another cleanup to add to the pile I guess :)

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d7db7620-1f2e-4216-8929-2cfd4d847447%40kernel.org.
