Return-Path: <usb-storage+bncBDJNPU5KREFBBCND7G5QMGQEAMF6SXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 95533A057F9
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:20:58 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-46791423fc9sf317302871cf.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:20:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736331657; cv=pass;
        d=google.com; s=arc-20240605;
        b=Mc/OGuKzdUMiBQErngdQTsyUXx6f5Br7kyh1Emilo97dHEpu9pGtAL8qNcVQbjoTvf
         7tSSX0EEsuOpCVO/HpmsJ+wZyD6cIJI2Ks9Bj4JXhjMyZJ9zebJokR0PJMFPbbsmXJDS
         uYZiNFaOXehQ3DKfmVBw6Vfqcm0kPdukdOBD5LjY7RzM+31TKxTZ5648QRAd4hq8bBZO
         GHGoM0C909hKQ3o/q2ejcPi1Pg9zz8+w7WaegNqvOByMPJDObos8sOPNFoQwV3Jjhcev
         ctSlX1QICqZgqwMB/EKw6B4Y1pdQoZEzAoHWf8zYma9fD+GuoUs7gjcA/kQ0DzvOISCB
         SuNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=YAE2SRa/eauMZmy0X/4Eh0xNnA4bbMbPOrmfVWIWRrg=;
        fh=6cnQagoVVKDPsZ1Ix6Y4asbxwERwcovZRaKfJtNcUjo=;
        b=lv5xQhWGZR4G39AsL4+21oSAyxVX3v8mNW0//IHs9mXJNDAuYFAGtt0ChRi3y4DIiF
         mzpiAU8LdzfWlZiJvVehN5xEejp2gbZygLqMwGxpuPwBPbuMx1L60YW/UhbwoX6e0nWC
         jua77j54R6Ytd+caKzPZYgRqbgijzWZeV4ND0jkKHHM1u8uJaHSjGIFB4UpnyY3xE6pY
         U6U8/m5hFTtG9Zc5eJIkxZ8NUlA5xc34ROsrtTP9NeMdyjWU9+F6NCE0XpJAqkPSx5QI
         3762eTPkK0fAB5fZD/L/3U8y277wsvMvWWPYFxJSndqeQ8LnxOP+U26ZQQRhQsslq7Np
         hTTg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QXAeWW19;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736331657; x=1736936457; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YAE2SRa/eauMZmy0X/4Eh0xNnA4bbMbPOrmfVWIWRrg=;
        b=kBVv4zzeKeU68JSnC1GoOw6EeeOzz8DwI5wz5kxlYU2Lq2jZcj1Rt3OJ/LvmSSPQeS
         Djy6QdIjcElZrSHddphDratQgRstJAKth/X1p589EQApwQWMNV5UwkH7nCtFqbQQY9Gh
         yWlifaFqjWEY0DvUTNhsH3T2rFnY0HLlWWaCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736331657; x=1736936457;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YAE2SRa/eauMZmy0X/4Eh0xNnA4bbMbPOrmfVWIWRrg=;
        b=spdNluewVhbBDwin1YxqQwFc4BoFxIf8icZ6fHPQg+VEwd8TqkyXfD/yLb3uK/9OCx
         1vyixyp44/YIClla7vKqwYBzm8+iWm2RTeRXMidRfFgHJm71vyrp5bUa94C62WiHIUK8
         7aV8y79It/0uaKLK9WHMeTmy5wm7e0CMWEYccnCdEH02q0Bj08dNGOmscd44h67Sw3Jn
         70qRm65nOozV/P7E+SAitcrC6GTuw8T//iWDrodKZ/qJ+zzz02IAtuORcMfdlvJoAKlh
         2VWPF+s4C3hcQkVfg2Tb6nD7JcXt4O2B7M7cCAuEcqq/K/y3pN3TGSRCc7iPYX+Ji7HY
         I2lw==
X-Forwarded-Encrypted: i=2; AJvYcCVVAVXAC2F+8aitxUjrcCGRE8CWGed8MDKNGKO0CGyu5DFOCvkv+DB/UtkWCQUvJgOgtEEQuw==@lfdr.de
X-Gm-Message-State: AOJu0YySRx4mD845cv0qNM5l1ZPEa007fVe9eb/LrnYLiWRPRimgCDb0
	1BUwz+wPfs/ZKqhobyrLy1UvBEPVaYiZ+6QWbNb13Cf2dG6Bvxk7hpOEY1di5Mg=
X-Google-Smtp-Source: AGHT+IFAi4hzbMoEltIhXCNVZRvT6DPVorF3pPhzpa9JuIKLJ5/7MklFri3TDhJTdMTRmFZWJdcWmg==
X-Received: by 2002:a05:622a:15d5:b0:466:a3bf:41a7 with SMTP id d75a77b69052e-46c710a5d88mr31975831cf.51.1736331657535;
        Wed, 08 Jan 2025 02:20:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:81cc:b0:468:f965:33af with SMTP id
 d75a77b69052e-46b35a43098ls15334181cf.0.-pod-prod-02-us; Wed, 08 Jan 2025
 02:20:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV7xeGt7nn71QrTeNArJC42SPQh9KKBUjje7nQ74QY66WCpLRw48ktdPumTOEPxcTKKwpR2a8WcRw/m/A==@lists.one-eyed-alien.net
X-Received: by 2002:ac8:5746:0:b0:467:50d0:8869 with SMTP id d75a77b69052e-46c71004b3amr38014831cf.18.1736331656689;
        Wed, 08 Jan 2025 02:20:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736331656; cv=none;
        d=google.com; s=arc-20240605;
        b=BFwoMnalzwR5cmC6YTBojHvlu07KY6PA8qQDg2xXOuJEwShyO6cxSH1chh13Z7UIfF
         EPxvllfViG44+LG1X7RNBNJL7OHsiM2BOLFFtJBHUBHNPueBaDsarG5o3adOVVQFsUC1
         /NZCUx/fxslh0o9DfvX91frS97u2GsaGVmyxeZzqXokwejysIBQmhcYCyYRcpmvdirHs
         2GChiBEes685uYKbr2nADu4up9+zfYVgyrl09LB0X1uuKdiRlTUOLP6YzDq1bP4lJAEf
         BeOvMF9LZBe4IOwbEye6PY+mJdQhRZwy0m22z83Tb61H9zSGBkcY+76UtAvWM1TzZYxC
         cMyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=C7qs9vgdOqh7Nv9DgQQU2j6aajaLmY6QS5cMOvhJHwo=;
        fh=i1lazSQvwm0uMbBgjLZvsDbOHtpcdX7/txCqPFxtsys=;
        b=BILqg53o56hsLilmB2ZG0tXr44VYolMkfa1LxLgTvKWuBtUUDsCf9023nJUHg4QdTW
         LRKGDk9gxonBUoh8EXa+QkGyoOe3901+KDFnshvKozRzXBuYwW1munf6LB+8xZYjoBjK
         3hgz9D94DivMEKeMfmW/RxSYcbFaWWFwVyfJfPJRTUf6fvU7g7m3kooOFjqfE+8s3xaA
         J79GA0k2rRVeMq0hxx2eWkGaV1QlsGL5p4dLRIkTD69gM4yYebkJJdt1YWgCDyPs9Xbl
         GhqciuUnf+49dLsBxzeXgXvr1KSVH96t0N27pxiNLmGjxcjg0k/8D+qcbpdAeljkqXAs
         EDLQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QXAeWW19;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3ec0565asi517843211cf.671.2025.01.08.02.20.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:20:56 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id ACAC5A40C8F;
	Wed,  8 Jan 2025 10:19:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A832BC4CEDF;
	Wed,  8 Jan 2025 10:20:54 +0000 (UTC)
Message-ID: <866f4dff-c9bf-43d1-996b-bafd830b9e61@kernel.org>
Date: Wed, 8 Jan 2025 19:20:10 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 09/10] loop: refactor queue limits updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-10-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250108092520.1325324-10-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QXAeWW19;       spf=pass
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

On 1/8/25 6:25 PM, Christoph Hellwig wrote:
> Replace loop_reconfigure_limits with a slightly less encompassing
> loop_update_limits that expects the aller to acquire and commit the
> queue limits to prepare for sorting out the freeze vs limits lock
> ordering.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/866f4dff-c9bf-43d1-996b-bafd830b9e61%40kernel.org.
