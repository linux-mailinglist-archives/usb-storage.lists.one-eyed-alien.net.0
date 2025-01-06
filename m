Return-Path: <usb-storage+bncBDJNPU5KREFBBAFM565QMGQEURRHJBI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CFEA02633
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 14:09:21 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6d8f8b9d43asf311507456d6.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 05:09:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736168961; cv=pass;
        d=google.com; s=arc-20240605;
        b=KAI8B1BY6gxRoRuH+HQnJwlF7VbKYTchaAWMw/BOBgSvHEpFKPftK0I3QbmEfAgawx
         E+8Mzv61yfZgbHdBPZJXylvcSDzTT5nDCpUCGg6ecQxpFDFAvgWaxU64OjF4kDI2CnIq
         7/8W8o7Cczr4/egEJ/COywlYtksEhEQ08J9jrzDU/0os1WUbplIapgStXXAbho/t29ve
         BBhTn8WHT+iwCeRryujgggH3oQd02uHaY77JTPnSu4kbGqIDjbNhTY6RlqWFfM++iGKS
         AczzlGymmQOhg2WRWNA9LJwwv2KtwvigcB992XjOD6L7Y+UPCCKRO7zs795M6bEz0AlI
         6u8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=M4rx0d76oGJWXCCQ5I65yUPXxImPGzuoKWM39+HcW0o=;
        fh=u25OLFtWAmi0aSuuiCspZGjyNJ4ZODcQ2gm8MhfmwBg=;
        b=ICIsu+f55XeynPPfMatp3J9wQSyfM6qJn76jUn8a5MS3920q34l5XHVeIIwsT+a3mN
         oSJuFJBuoT3uIGguQXkTTl5Vme4YVDmFpccvgnKd3uRkHrd7xJYTLtLUJUUQlj7dnZ/b
         dD0W8iDx8Zvuzj7had+njJM1rjcupQUCN9HAIKbsjJ6un9WujD39YfL4KFOeTFioNGbW
         IyzqBJlC6IzKfeoEDGK/mOB4+4EkD0wUeM3apKf8G8uWKpsmQSzFAM5HSv5ect2Ld1fL
         c60YBRUpYkmw8MoJJd96qnR/Q14jvaDWJkxzt+ieTrV3qlB3KRzDTquBnHZKcsUeTDh3
         faRA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mVZK0Qt9;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736168961; x=1736773761; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M4rx0d76oGJWXCCQ5I65yUPXxImPGzuoKWM39+HcW0o=;
        b=bORpZy3pD+bc+Ll5S1pnq8dZosyykTBTm0sZPWVALVTwr5N8x+SN8C/afIkJh75lE2
         qqOEiLifyzqMYhvFXzOqEm1frfkEYGBK99w2cQfDt4aQ0FOGh265QNonX+R5f8ih91d4
         R6dKg4jydiS2QLQvtc0uN0dCZQ9ul3ovuCtuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736168961; x=1736773761;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M4rx0d76oGJWXCCQ5I65yUPXxImPGzuoKWM39+HcW0o=;
        b=G1eLP9HQhRH1Q4gVkKIVOTaFqh4JdpL2XnadApUOypLX15h8p8SG8MYxssE3rS0okS
         zzaeX/NWC6N9DCmkkma0gtPoTpQ9jaNn2qEk9JpJFnEnryWZgFV4yEzhKisl6rhNIRmw
         LS8yr5YgavNPp71kZKbrz62dbacA5tFppaH0W0J/wrf3rXfxecVaKb45dKTzD3oSpb4D
         U/BeMV3xc7hN2rW+MgykjFha9rGNTUu+rV1dYR9kZHuqSRUEcV3FbG9S0faPo5XAYVWy
         8rIREdOGf00lJqPKgYx1EWWzYdexjBzSgPRzIP1bwfk3Kk9x3o4oLIkDcCwJBzpuMLyN
         BTZg==
X-Forwarded-Encrypted: i=2; AJvYcCWiHFGdx+QjheWkHUtpAMa+p9FiFwZZBFpcO2yE15MwMAqcVF+6+IZ2hg3+lMaQRqE2shp4Dw==@lfdr.de
X-Gm-Message-State: AOJu0YxqKbPyqmBZVkDGjREThajZr36Ve42wcic23jlJqn5SAgybRGLF
	s9Lea3ZVD+Y+GHlEnRHeUNUIEV1/ORh4kEfvgSWENZAkV1FwKZV3veNZVikd13o=
X-Google-Smtp-Source: AGHT+IExk9W+gt47KUIMYVWCOymAsCZKXKb+wNdXfj2eas54HB8Gvfo9q5W158Mre0uk4DpWY0eUsA==
X-Received: by 2002:a05:6214:5c02:b0:6d8:a32e:8430 with SMTP id 6a1803df08f44-6dd2332e3c6mr944604386d6.8.1736168960766;
        Mon, 06 Jan 2025 05:09:20 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:481a:0:b0:6dd:1724:e378 with SMTP id 6a1803df08f44-6dd1724e3e8ls123024986d6.2.-pod-prod-06-us;
 Mon, 06 Jan 2025 05:09:19 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUO6wiRGiMEXf0vzYTCxbMDclxUIPEkmLUPtMoqmx6JTrq5aPA5OW9qw2pG15HyqVh7zuHr3SfF7iwtug==@lists.one-eyed-alien.net
X-Received: by 2002:a67:e70e:0:b0:4af:f044:9381 with SMTP id ada2fe7eead31-4b2cc495f87mr40261947137.27.1736168959627;
        Mon, 06 Jan 2025 05:09:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736168959; cv=none;
        d=google.com; s=arc-20240605;
        b=Br5qnv7+v/vWWLXFGQORJWJ5I5A0EWEqVNDURkNVA4aMcFZqX1T13pN3jBjLjsT5Y8
         dau504Goz63EVHH+dBDnxaDyiTBUEru7o+5818O/CZAKVufN2is3eBgEMD8eO5MhjlNy
         B2JIckQYokkrct3Q/ofRZqPe9IyWKKCLWN0wUrplbnWGaowSRTyaYVKNgkYYjx/x302S
         bexaTxKsUJKk4jaVE+QqvJD6XuyM6JmXE483wuU0gYh0t5DBYCa0pQCR1UUp1gJFpOMR
         DlDOFUlrRpPnV0G8LUOg/M7Ce/8ZLj69oPu+4XjCz34XfCgXE+BZ+crGDAk8XDWFnv6K
         8tMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=D8mjgkrVOreFM3ccFW64iXKbeH7Uh2ZLs+0lDojl73o=;
        fh=1vjLH/q87DsQK5DIkmFfy5V5GzC0c1BQd1hpY/o2D9A=;
        b=JnJafyRYX691gZXHmgU50SLVyVzmRcgBb9LRun7hVIdtZpjsPVcc8YE7cnZSohvR8T
         T9NxOQJmTxB6pjtnaFzmkhDNzZvSDJZlpvu4Tg7vrXo3BN3OZRZStUUUr0j9OpDjFg7y
         Gf/sKmKs0uZj9t545BRwfwESCIbeGm6D72mGed4o2MdL3Q0LFFQ+cDofUY5qJmNEbQEy
         4YL7L8P5BA/zLyRT4ALYVkCZUF2pNkJc+hi1P7PrHILPo6bdJ6d4T+WrBVk4W3ly69ts
         XCNFyMp+m5kB+e4mwGzOmSMmcjddO9PaVn2FKGTdVWWUdsVLC/gsJgJkuGA61Dfg7BZc
         DksA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mVZK0Qt9;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id ada2fe7eead31-4b2bfba4395si8694368137.605.2025.01.06.05.09.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 05:09:19 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5F6CCA4161B;
	Mon,  6 Jan 2025 13:07:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FA76C4CED2;
	Mon,  6 Jan 2025 13:09:17 +0000 (UTC)
Message-ID: <3cf61c5f-b53b-43b6-90de-e42272f74e3f@kernel.org>
Date: Mon, 6 Jan 2025 22:09:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 06/10] virtio_blk: use queue_limits_commit_update_frozen
 in cache_type_store
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Ming Lei <ming.lei@redhat.com>,
 Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, nbd@other.debian.org,
 virtualization@lists.linux.dev, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250106100645.850445-1-hch@lst.de>
 <20250106100645.850445-7-hch@lst.de>
 <07353499-b62d-488a-9575-12de5d9b6f2e@kernel.org>
 <20250106105957.GC21833@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250106105957.GC21833@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mVZK0Qt9;       spf=pass
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

On 1/6/25 19:59, Christoph Hellwig wrote:
> On Mon, Jan 06, 2025 at 07:56:19PM +0900, Damien Le Moal wrote:
>> On 1/6/25 7:06 PM, Christoph Hellwig wrote:
>>> So far cache_type_store didn't freeze the queue, fix that by using the
>>> queue_limits_commit_update_frozen helper.
>>>
>>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>>
>> This should be squashed in patch 2, no ?
> 
> patch 2 is supposed to just be a mechanical conversion, and each
> behavior change should be in it's own patch.

Sounds good to me, but let's be consistent then: do not remove the
freeze/unfreeze from virtio_blk in patch 2 and do it here in this patch.
Otherwise, patch 2 *does* change the behavior of virtio_blk, introducing a bug
(missing freeze around commit update).


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/3cf61c5f-b53b-43b6-90de-e42272f74e3f%40kernel.org.
