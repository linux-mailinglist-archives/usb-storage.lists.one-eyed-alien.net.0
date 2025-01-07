Return-Path: <usb-storage+bncBD4KDUPW5UNBB75Z6O5QMGQELIGYVVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id F29AAA0390B
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 08:51:28 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id e9e14a558f8ab-3a9cd0b54c1sf135906645ab.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 23:51:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736236288; cv=pass;
        d=google.com; s=arc-20240605;
        b=hWfnQUapuZ3TCvACFCa0fQhh7kCutaW+0+05nFCvPFT/jNFriXTZejBCnq/PYazfaX
         yfbaPsCTVCqldORZSl6VqmBCp28TGGzzed2noAXoi5r8ZKUn5/09pON9r3qXHJk8Exr1
         jDLoc5qM1quCtgFg09YBvkQTeQgfpLGCwfbB8MT1UVeyqaFjC7pmBaiTKfuhvedoFEG6
         w0lyx93Wja1ACHzxwlRkQaDG7UGtsT/DnW5sB/KYjoDZ+Zz9pG8wnw26mUS7qKvKF57C
         hMHjZxgSH9djdwPvB3zEgneINs36/wDn4+eToFHE699mC2r1aQQ36pKvSJxmrh9tP6yx
         06yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=ns0QpUsEQZJTHeOrgxuFPDoqbG4uDHFfOyCLEbF0r8w=;
        fh=yG968rGFWIewd2cUp0EQzWiRCePTU64v1D+n3yPHsrg=;
        b=hNDOOOMFbAcbQYEctv1qr8OLBsio5mILUW4jg6V5gtCT+Jzc9e0iswhGyX58ePEnns
         49Uv/Rg3CQTpquuNq/5Eav8AdVVYJeo0/+BHn3xRtjH9jJLuCWPHXURRfEDGtYalvDJi
         /1F8UpN3T9Oj32/ZHEBDevNS67aQpu+zy5xrHSpfGdzTYrZn/IclrtdW11M8EmSQxms3
         zn6HpXtQo5KNNxGucJJd6J+fmHHXtfnVk6/PRUe+opS63Q5uftZYnV3bXCMYW/hjof9n
         PyzV+LQtzZuZT6dL+IwZb+8v9iMzBhW97ODyClZjUlzI1tBt2xdXDNroGIRAC/hPVrHY
         W7QA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=FCgB9URo;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736236288; x=1736841088; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ns0QpUsEQZJTHeOrgxuFPDoqbG4uDHFfOyCLEbF0r8w=;
        b=SvHgRiSX9Z14ytA2ELBBN4ggW7nHKXXrDndTkFflkgz9zj5cDj2XHWRu3NcKiZjxga
         84KrWbNItOa9JQpkbV2VKiRWRqy/Pxx0SiaXsoLdFNTVokA6Kqb/Vgv56sxICBolW2rk
         pFnQhDf5lDd76wJQj1tPEegsGBVQruiyBOP34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736236288; x=1736841088;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ns0QpUsEQZJTHeOrgxuFPDoqbG4uDHFfOyCLEbF0r8w=;
        b=VPKUwSWlXlaPJhykFGcRS1lNYG2nYIozy8BteSCPYP6vZ/Xn3gQq2h54/9xDIAcYYu
         SCqYcGd1n4zq/LwlK42wkh1PWO1N5+kxjA1IP9GgW0gM1mX9RnoQjS2nypnFFxOtFzrJ
         apWYUtI9VUBdrI6MoLJLCH4DgVraXJPa6VvkjJTWfRSd4/SI/YoqxdGySIhVll8r8243
         /aZ7q1lOq9YDdqEg5GSQiYafUfxAbrcY35lYTl7vZQLuYIRSTSiR59U0veINCbkuQ5me
         0LNEJqcGPhtXSQURHgST1zrXgsbtHLqBLuAreQiVE4l7/E/3ilrUOA96iQTlDvmEyV2j
         0N1Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW38aFN5cBLmP5tOCOvNaynwDiVbbG8LbiGTTyC2FabHM/SbOTR5CrlQxLijzHskKVyDrK+Ug==@lfdr.de
X-Gm-Message-State: AOJu0YxcNUtzToMcpkuoS4kXlGDdVTBYrNjDwi9aqa4Ot3H+eHGYdajX
	YkH6Lytgz1/rSlgrhQ4e2+Zb1DFGB1lrR2TD+a1yeUznlpZB1pVq3E9Tg3nFML8=
X-Google-Smtp-Source: AGHT+IGm/xDkREZQ2yufY2TNk8mPm0ksbMb7JcX7MDej70/vj8EvcJiWwqqveL0nnPBlcvQ8mIMyFw==
X-Received: by 2002:a05:6e02:194c:b0:3a7:7811:1101 with SMTP id e9e14a558f8ab-3c2d53403b3mr578998335ab.20.1736236287746;
        Mon, 06 Jan 2025 23:51:27 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:ab0c:0:b0:3ab:6038:b2ee with SMTP id e9e14a558f8ab-3ce34c9cd0dls971105ab.1.-pod-prod-06-us;
 Mon, 06 Jan 2025 23:51:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVxZkiBJfWtVyCVLMpxmLD91zZL56aDl3qRGVXTgkXkoDLeTADrZHVddl7G9NNWmwL/al/JXWUP9Kjzxw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:6cc7:b0:849:c82e:c044 with SMTP id ca18e2360f4ac-849c82ec466mr4664486239f.8.1736236286362;
        Mon, 06 Jan 2025 23:51:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736236286; cv=none;
        d=google.com; s=arc-20240605;
        b=ACXE1aum3VRCTW6Ku/Ef6sCvQBo0DJu+oS4pWlRqfc3OF5ezTUC9bMEGKssS1KBHSW
         LPpy0pIffgtmhkMoSdqsMlRih5aRNePpg4m2bxAsXglQ9sEwCfluwl+6L1j2/1XoMxu5
         LuvMVjGHq0GqPYt4mjDthvESkVztKKfCjwkYbJtMVyhro777xx1MtOMm5gaBDR6XBBai
         1QXOtXlAyZH9YbzFDm3aQ/jRNICElVApbbvgxr2b/SNxOauX1URd+St+xZKpBedwG9H/
         Nrg5UumFdoKHFZvUwbPX0+q8r3tcmaLoEbCM20BNNm7L95crHQzK+SZSWc4r9aADSluS
         WuKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=a4nSA9/lNJ7YEp+Dsfs7cgFOX+E//pSKr0Tx1vCLJ/g=;
        fh=imV9GxEUcnSK2A0CjinIReHoYbaak7rqN3hRll0bqGk=;
        b=bjCX95T5M56waMTNiUYkDj69loL5HATNjyg4K+r3Z9M1qokfEsLmhrOE/EyB39l4s1
         ET/xv7My3NQZiRD8PbNQA0EyGMDeho8ejutEMuP/JBPwYvNvAeLH+dwgsC7Zf1m7lCCy
         nfSNgwkjcWazYqYaO1r1PCx0w/iYIesSaF/FGdPixC9rj3Rkxgf1YhCq5A/kZ/KGnCHB
         W6lz0JWX1Qiddn2bBezcjeyJD3mjMDfOYxs9v167DttMIT9D3wwfeMNGtZ8pwwCumYJd
         EWDDPqfBB7jmMmv+0N8AQgE1z7Jus4RImkG6PckJN59PbMMyCQVSZXnXc1X1GLL0nmdj
         Poqw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=FCgB9URo;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id ca18e2360f4ac-849ea97b512si1346083839f.49.2025.01.06.23.51.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 23:51:26 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 506NxSFx024534;
	Tue, 7 Jan 2025 07:51:20 GMT
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440sahhku1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 07:51:20 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50754wF3015805;
	Tue, 7 Jan 2025 07:51:19 GMT
Received: from smtprelay04.dal12v.mail.ibm.com ([172.16.1.6])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43ygtksbc5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 07:51:19 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay04.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 5077pIUo29557326
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 07:51:18 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 779EF58056;
	Tue,  7 Jan 2025 07:51:18 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7190F58052;
	Tue,  7 Jan 2025 07:51:15 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 07:51:15 +0000 (GMT)
Message-ID: <ae6b7727-64d6-4d9e-9bf5-951e38d8a768@linux.ibm.com>
Date: Tue, 7 Jan 2025 13:21:14 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 4/8] block: add a store_limit operations for
 sysfs entries
To: Ming Lei <ming.lei@redhat.com>, Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-5-hch@lst.de> <Z3zXANbFk6GBZg_z@fedora>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <Z3zXANbFk6GBZg_z@fedora>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: b86AiZTCrZgm7RWtYs4Ji68WHGqpZhiQ
X-Proofpoint-ORIG-GUID: b86AiZTCrZgm7RWtYs4Ji68WHGqpZhiQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 adultscore=0 mlxlogscore=999 impostorscore=0 priorityscore=1501
 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070061
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=FCgB9URo;       spf=pass (google.com:
 domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=nilay@linux.ibm.com;       dmarc=pass (p=REJECT sp=NONE
 dis=NONE) header.from=ibm.com
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



On 1/7/25 12:55 PM, Ming Lei wrote:
> On Tue, Jan 07, 2025 at 07:30:36AM +0100, Christoph Hellwig wrote:
>> De-duplicate the code for updating queue limits by adding a store_limit
>> method that allows having common code handle the actual queue limits
>> update.
>>
>> Note that this is a pure refactoring patch and does not address the
>> existing freeze vs limits lock order problem in the refactored code,
>> which will be addressed next.
>>
>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>> ---
>>  block/blk-sysfs.c | 128 ++++++++++++++++++++++------------------------
>>  1 file changed, 61 insertions(+), 67 deletions(-)
>>
>> diff --git a/block/blk-sysfs.c b/block/blk-sysfs.c
>> index 767598e719ab..8d69315e986d 100644
>> --- a/block/blk-sysfs.c
>> +++ b/block/blk-sysfs.c
>> @@ -24,6 +24,8 @@ struct queue_sysfs_entry {
>>  	struct attribute attr;
>>  	ssize_t (*show)(struct gendisk *disk, char *page);
>>  	ssize_t (*store)(struct gendisk *disk, const char *page, size_t count);
>> +	int (*store_limit)(struct gendisk *disk, const char *page,
>> +			size_t count, struct queue_limits *lim);
>>  	void (*load_module)(struct gendisk *disk, const char *page, size_t count);
>>  };
>>  
>> @@ -153,13 +155,11 @@ QUEUE_SYSFS_SHOW_CONST(discard_zeroes_data, 0)
>>  QUEUE_SYSFS_SHOW_CONST(write_same_max, 0)
>>  QUEUE_SYSFS_SHOW_CONST(poll_delay, -1)
>>  
>> -static ssize_t queue_max_discard_sectors_store(struct gendisk *disk,
>> -		const char *page, size_t count)
>> +static int queue_max_discard_sectors_store(struct gendisk *disk,
>> +		const char *page, size_t count, struct queue_limits *lim)
>>  {
>>  	unsigned long max_discard_bytes;
>> -	struct queue_limits lim;
>>  	ssize_t ret;
>> -	int err;
>>  
>>  	ret = queue_var_store(&max_discard_bytes, page, count);
>>  	if (ret < 0)
>> @@ -171,38 +171,28 @@ static ssize_t queue_max_discard_sectors_store(struct gendisk *disk,
>>  	if ((max_discard_bytes >> SECTOR_SHIFT) > UINT_MAX)
>>  		return -EINVAL;
>>  
>> -	lim = queue_limits_start_update(disk->queue);
>> -	lim.max_user_discard_sectors = max_discard_bytes >> SECTOR_SHIFT;
>> -	err = queue_limits_commit_update(disk->queue, &lim);
>> -	if (err)
>> -		return err;
>> -	return ret;
>> +	lim->max_user_discard_sectors = max_discard_bytes >> SECTOR_SHIFT;
>> +	return 0;
>>  }
>>  
>> -static ssize_t
>> -queue_max_sectors_store(struct gendisk *disk, const char *page, size_t count)
>> +static int
>> +queue_max_sectors_store(struct gendisk *disk, const char *page, size_t count,
>> +		struct queue_limits *lim)
>>  {
>>  	unsigned long max_sectors_kb;
>> -	struct queue_limits lim;
>>  	ssize_t ret;
>> -	int err;
>>  
>>  	ret = queue_var_store(&max_sectors_kb, page, count);
>>  	if (ret < 0)
>>  		return ret;
>>  
>> -	lim = queue_limits_start_update(disk->queue);
>> -	lim.max_user_sectors = max_sectors_kb << 1;
>> -	err = queue_limits_commit_update(disk->queue, &lim);
>> -	if (err)
>> -		return err;
>> -	return ret;
>> +	lim->max_user_sectors = max_sectors_kb << 1;
>> +	return 0;
>>  }
>>  
>>  static ssize_t queue_feature_store(struct gendisk *disk, const char *page,
>> -		size_t count, blk_features_t feature)
>> +		size_t count, struct queue_limits *lim, blk_features_t feature)
>>  {
>> -	struct queue_limits lim;
>>  	unsigned long val;
>>  	ssize_t ret;
>>  
>> @@ -210,15 +200,11 @@ static ssize_t queue_feature_store(struct gendisk *disk, const char *page,
>>  	if (ret < 0)
>>  		return ret;
>>  
>> -	lim = queue_limits_start_update(disk->queue);
>>  	if (val)
>> -		lim.features |= feature;
>> +		lim->features |= feature;
>>  	else
>> -		lim.features &= ~feature;
>> -	ret = queue_limits_commit_update(disk->queue, &lim);
>> -	if (ret)
>> -		return ret;
>> -	return count;
>> +		lim->features &= ~feature;
>> +	return 0;
>>  }
>>  
>>  #define QUEUE_SYSFS_FEATURE(_name, _feature)				\
>> @@ -227,10 +213,10 @@ static ssize_t queue_##_name##_show(struct gendisk *disk, char *page)	\
>>  	return sysfs_emit(page, "%u\n",					\
>>  		!!(disk->queue->limits.features & _feature));		\
>>  }									\
>> -static ssize_t queue_##_name##_store(struct gendisk *disk,		\
>> -		const char *page, size_t count)				\
>> +static int queue_##_name##_store(struct gendisk *disk,			\
>> +		const char *page, size_t count, struct queue_limits *lim) \
>>  {									\
>> -	return queue_feature_store(disk, page, count, _feature);	\
>> +	return queue_feature_store(disk, page, count, lim, _feature);	\
>>  }
>>  
>>  QUEUE_SYSFS_FEATURE(rotational, BLK_FEAT_ROTATIONAL)
>> @@ -266,10 +252,9 @@ static ssize_t queue_iostats_passthrough_show(struct gendisk *disk, char *page)
>>  	return queue_var_show(!!blk_queue_passthrough_stat(disk->queue), page);
>>  }
>>  
>> -static ssize_t queue_iostats_passthrough_store(struct gendisk *disk,
>> -					       const char *page, size_t count)
>> +static int queue_iostats_passthrough_store(struct gendisk *disk,
>> +		const char *page, size_t count, struct queue_limits *lim)
>>  {
>> -	struct queue_limits lim;
>>  	unsigned long ios;
>>  	ssize_t ret;
>>  
>> @@ -277,18 +262,13 @@ static ssize_t queue_iostats_passthrough_store(struct gendisk *disk,
>>  	if (ret < 0)
>>  		return ret;
>>  
>> -	lim = queue_limits_start_update(disk->queue);
>>  	if (ios)
>> -		lim.flags |= BLK_FLAG_IOSTATS_PASSTHROUGH;
>> +		lim->flags |= BLK_FLAG_IOSTATS_PASSTHROUGH;
>>  	else
>> -		lim.flags &= ~BLK_FLAG_IOSTATS_PASSTHROUGH;
>> -
>> -	ret = queue_limits_commit_update(disk->queue, &lim);
>> -	if (ret)
>> -		return ret;
>> -
>> -	return count;
>> +		lim->flags &= ~BLK_FLAG_IOSTATS_PASSTHROUGH;
>> +	return 0;
>>  }
>> +
>>  static ssize_t queue_nomerges_show(struct gendisk *disk, char *page)
>>  {
>>  	return queue_var_show((blk_queue_nomerges(disk->queue) << 1) |
>> @@ -391,12 +371,10 @@ static ssize_t queue_wc_show(struct gendisk *disk, char *page)
>>  	return sysfs_emit(page, "write through\n");
>>  }
>>  
>> -static ssize_t queue_wc_store(struct gendisk *disk, const char *page,
>> -			      size_t count)
>> +static int queue_wc_store(struct gendisk *disk, const char *page,
>> +		size_t count, struct queue_limits *lim)
>>  {
>> -	struct queue_limits lim;
>>  	bool disable;
>> -	int err;
>>  
>>  	if (!strncmp(page, "write back", 10)) {
>>  		disable = false;
>> @@ -407,15 +385,11 @@ static ssize_t queue_wc_store(struct gendisk *disk, const char *page,
>>  		return -EINVAL;
>>  	}
>>  
>> -	lim = queue_limits_start_update(disk->queue);
>>  	if (disable)
>> -		lim.flags |= BLK_FLAG_WRITE_CACHE_DISABLED;
>> +		lim->flags |= BLK_FLAG_WRITE_CACHE_DISABLED;
>>  	else
>> -		lim.flags &= ~BLK_FLAG_WRITE_CACHE_DISABLED;
>> -	err = queue_limits_commit_update(disk->queue, &lim);
>> -	if (err)
>> -		return err;
>> -	return count;
>> +		lim->flags &= ~BLK_FLAG_WRITE_CACHE_DISABLED;
>> +	return 0;
>>  }
>>  
>>  #define QUEUE_RO_ENTRY(_prefix, _name)			\
>> @@ -431,6 +405,13 @@ static struct queue_sysfs_entry _prefix##_entry = {	\
>>  	.store	= _prefix##_store,			\
>>  };
>>  
>> +#define QUEUE_LIM_RW_ENTRY(_prefix, _name)			\
>> +static struct queue_sysfs_entry _prefix##_entry = {	\
>> +	.attr		= { .name = _name, .mode = 0644 },	\
>> +	.show		= _prefix##_show,			\
>> +	.store_limit	= _prefix##_store,			\
>> +}
>> +
>>  #define QUEUE_RW_LOAD_MODULE_ENTRY(_prefix, _name)		\
>>  static struct queue_sysfs_entry _prefix##_entry = {		\
>>  	.attr		= { .name = _name, .mode = 0644 },	\
>> @@ -441,7 +422,7 @@ static struct queue_sysfs_entry _prefix##_entry = {		\
>>  
>>  QUEUE_RW_ENTRY(queue_requests, "nr_requests");
>>  QUEUE_RW_ENTRY(queue_ra, "read_ahead_kb");
>> -QUEUE_RW_ENTRY(queue_max_sectors, "max_sectors_kb");
>> +QUEUE_LIM_RW_ENTRY(queue_max_sectors, "max_sectors_kb");
>>  QUEUE_RO_ENTRY(queue_max_hw_sectors, "max_hw_sectors_kb");
>>  QUEUE_RO_ENTRY(queue_max_segments, "max_segments");
>>  QUEUE_RO_ENTRY(queue_max_integrity_segments, "max_integrity_segments");
>> @@ -457,7 +438,7 @@ QUEUE_RO_ENTRY(queue_io_opt, "optimal_io_size");
>>  QUEUE_RO_ENTRY(queue_max_discard_segments, "max_discard_segments");
>>  QUEUE_RO_ENTRY(queue_discard_granularity, "discard_granularity");
>>  QUEUE_RO_ENTRY(queue_max_hw_discard_sectors, "discard_max_hw_bytes");
>> -QUEUE_RW_ENTRY(queue_max_discard_sectors, "discard_max_bytes");
>> +QUEUE_LIM_RW_ENTRY(queue_max_discard_sectors, "discard_max_bytes");
>>  QUEUE_RO_ENTRY(queue_discard_zeroes_data, "discard_zeroes_data");
>>  
>>  QUEUE_RO_ENTRY(queue_atomic_write_max_sectors, "atomic_write_max_bytes");
>> @@ -477,11 +458,11 @@ QUEUE_RO_ENTRY(queue_max_open_zones, "max_open_zones");
>>  QUEUE_RO_ENTRY(queue_max_active_zones, "max_active_zones");
>>  
>>  QUEUE_RW_ENTRY(queue_nomerges, "nomerges");
>> -QUEUE_RW_ENTRY(queue_iostats_passthrough, "iostats_passthrough");
>> +QUEUE_LIM_RW_ENTRY(queue_iostats_passthrough, "iostats_passthrough");
>>  QUEUE_RW_ENTRY(queue_rq_affinity, "rq_affinity");
>>  QUEUE_RW_ENTRY(queue_poll, "io_poll");
>>  QUEUE_RW_ENTRY(queue_poll_delay, "io_poll_delay");
>> -QUEUE_RW_ENTRY(queue_wc, "write_cache");
>> +QUEUE_LIM_RW_ENTRY(queue_wc, "write_cache");
>>  QUEUE_RO_ENTRY(queue_fua, "fua");
>>  QUEUE_RO_ENTRY(queue_dax, "dax");
>>  QUEUE_RW_ENTRY(queue_io_timeout, "io_timeout");
>> @@ -494,10 +475,10 @@ static struct queue_sysfs_entry queue_hw_sector_size_entry = {
>>  	.show = queue_logical_block_size_show,
>>  };
>>  
>> -QUEUE_RW_ENTRY(queue_rotational, "rotational");
>> -QUEUE_RW_ENTRY(queue_iostats, "iostats");
>> -QUEUE_RW_ENTRY(queue_add_random, "add_random");
>> -QUEUE_RW_ENTRY(queue_stable_writes, "stable_writes");
>> +QUEUE_LIM_RW_ENTRY(queue_rotational, "rotational");
>> +QUEUE_LIM_RW_ENTRY(queue_iostats, "iostats");
>> +QUEUE_LIM_RW_ENTRY(queue_add_random, "add_random");
>> +QUEUE_LIM_RW_ENTRY(queue_stable_writes, "stable_writes");
>>  
>>  #ifdef CONFIG_BLK_WBT
>>  static ssize_t queue_var_store64(s64 *var, const char *page)
>> @@ -695,7 +676,7 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
>>  	struct request_queue *q = disk->queue;
>>  	ssize_t res;
>>  
>> -	if (!entry->store)
>> +	if (!entry->store_limit && !entry->store)
>>  		return -EIO;
>>  
>>  	/*
>> @@ -706,11 +687,24 @@ queue_attr_store(struct kobject *kobj, struct attribute *attr,
>>  	if (entry->load_module)
>>  		entry->load_module(disk, page, length);
>>  
>> -	blk_mq_freeze_queue(q);
>>  	mutex_lock(&q->sysfs_lock);
>> -	res = entry->store(disk, page, length);
>> -	mutex_unlock(&q->sysfs_lock);
>> +	blk_mq_freeze_queue(q);
> 
> Order between freeze and ->sysfs_lock is changed, and it may cause new
> lockdep warning because we may freeze queue first before acquiring
> ->sysfs_lock in del_gendisk().
> 
On contrary, in elevator_disable() and elevator_switch() we acquire 
->sysfs_lock first before freezing the queue. I think this is a mess and 
we need to fix ordering. We need to decide ordering rules. IMO, the 
correct order should be to acquire ->sysfs_lock before freezing queue. 
Likewise with this patch now we acquire ->limits_lock before freezing the 
queue.

Thanks,
--Nilay


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ae6b7727-64d6-4d9e-9bf5-951e38d8a768%40linux.ibm.com.
