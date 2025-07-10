Return-Path: <usb-storage+bncBDTPNYNWQEIBBQF3XXBQMGQEQRPEETI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id B0898AFF9D7
	for <lists+usb-storage@lfdr.de>; Thu, 10 Jul 2025 08:29:22 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-234b133b428sf5290715ad.3
        for <lists+usb-storage@lfdr.de>; Wed, 09 Jul 2025 23:29:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1752128961; cv=pass;
        d=google.com; s=arc-20240605;
        b=ULBl7oJF3Un4xt90jFnUP4WA3WCXGHRTFaioWEHjYwaC9tA4qQDk8DNco8b/hPVY6h
         9qlNAv3HkCqApxbT3yN6FIX73qFIZA3cAwPgo+kj/n8ciYBl5QS5ao0/4oV3iMAMllWp
         LHqDr5mjhw8JfJxlxdWVFy61mjt417iA81EIVIShJ/D/MYL4Eza8YtepZTJDXNfZLtj3
         fz8LGqTxhoPF9YdT0VUr/NhcJIfQ55o+QGPafds035JoL0SSX8ZnAGH4XWfuk7A2Ax7J
         OfpbiWDnZFBOxOdRq7vHt8/WyI7pVgV5hjEEnmIfiFFpSc8FH5uD9ffxtZnnmlRtox7A
         1d2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=+wKG+CF1vbIcuLPsk6xwy3S3Gz7Eehs5qD5aMKUAqVE=;
        fh=t76cT2Qt4b4gYXZQDW8HkVnFpHbdNpK9D09hD4hF2oQ=;
        b=VqXmagFMeWI23NKg9wO/NbyfYzFpNLdaAAnsGNWyMY0bIaUZSrOEBrbtPKeYCVU+jF
         rjRUmGdPgelx7W9zgz4GS0gPEzIMu3iraXnyJGY2o8n5XX4ff6wmrofhT1IR5p0Cp+Yh
         Wg3pa/iXtkGCMg4LeYcsX2GGeiox5x4oBFUn7XHkVzJYmn1YZIQ/+6qSg1KNwTYMs2Hc
         Q4daUdg388hDsDWfl1TK0PzD57Ceyfbz9rjCajarskJy/5rlM+mQUsM3SnZSdiEwnPxy
         wj8lVnxJy44HWt60hSz5P7wv7vbZdlfrHGZhrTYE/v1Fpomdg6L/eqa9D0s+lcOLYBFw
         BqSw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1752128961; x=1752733761; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=+wKG+CF1vbIcuLPsk6xwy3S3Gz7Eehs5qD5aMKUAqVE=;
        b=awZsVeOR/Qqv7E8FvSQfVUp0/eml6C8mR3kJ/PS59J/oCHcbrRUftR25661gTqkRl1
         X83mijRkLqTXPonNLZX33PS7Q97J27NLnvf8BWWwqllTg6VE48omwloI8ddILQZahyFH
         MWF/pJtupHl0rtY9adosDEwE2eabxrFeliNiw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752128961; x=1752733761;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+wKG+CF1vbIcuLPsk6xwy3S3Gz7Eehs5qD5aMKUAqVE=;
        b=FEcBEUUe+7X5zmT5YfYnKpNMqYL6eTcNJdJ2gT1brfBxOpvptOYvAjGPJIzXyn2obX
         ZLNvlYaMyf2IdDW52o+xES1F4ZAA1GjIsLpXf2Z1PQWRGozl3z83utI1b+EqaAQeBpUe
         48OADOzEzbJtRY9cQTOoMPCICfNLzlV3fwTjrmDzhSXvZm3EfTwuHBdRfttQMax/yGzp
         N37Ow06OpyURVVBb+HcyxWqNkDQT+ZHYMTshq2xo5auDnu8cZCMBwiTc/jyCRYlRHTlX
         1YxSah8rvUZsp5qK7+PZYmclRAPkUPtwyXpsdxCeGq6YYrXaJR+NoHkRMZAV5qdEre97
         cfWg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWFr4rqon62yszBwTD3iMnrKl6MW6m2HyFSfhfK1iXRyOv66H+meJ7fqnp9CFguxFto05YD8A==@lfdr.de
X-Gm-Message-State: AOJu0YziS6oujVVxrjUKCArwH8/gDAycRoRfJ6PMdPArONP2D/Fvb8Fb
	x5921Cpu2ZnQdJQktpPv6YRixuApMJ3XrBSLMfN9uUrQXhnes0XcxhXXncSe1YqxpD4=
X-Google-Smtp-Source: AGHT+IEzMz95mAkvukK/Iv6fUsBTpOSwbMcsGdUJW1qOGcZjgewLKGBkavDpE63cggduFNg5A4nq9w==
X-Received: by 2002:a17:903:1585:b0:234:914b:3841 with SMTP id d9443c01a7336-23ddb301181mr77266095ad.39.1752128961208;
        Wed, 09 Jul 2025 23:29:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZd721Sz9UQCmpXCSGIPSj229MaGWwA3xS2AahAw6K8tyA==
Received: by 2002:a17:903:3209:b0:234:ae27:bf49 with SMTP id
 d9443c01a7336-23de2e0dd66ls4268745ad.1.-pod-prod-01-us; Wed, 09 Jul 2025
 23:29:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVAYMWzNYhfcuCm0eNhu32/VDu+6AzuvkgthfpfnHdBSvsjUlAoN8l7RGwjdshqtjgbvF4/JiwO208Alw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:298f:b0:237:e696:3d56 with SMTP id d9443c01a7336-23ddb2e62c2mr89936925ad.32.1752128959249;
        Wed, 09 Jul 2025 23:29:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1752128959; cv=none;
        d=google.com; s=arc-20240605;
        b=egcxj0Q1xjIDSgleuY+OP277r4T1WV5NOyOMPtVXJxFuO12/G4CavCRG5g+OT0u8Ab
         F0QSVsvNgtmvt/DUZiX/ULrX6OcPc6lRb6g0Gt5k+JSRN1Vc8DB08jYmLM5aq/0HTkvu
         pfCEMfJyNVU3i5jRfxzbNwNvxAqqXkXlmaqQOyriR3y7oy5rQMxRYFj7WogcWHiBn6U3
         0J5JqZMEWSg+Vg5qDbr9FgjtoWbb36CJTnqJNHnTwlT3BF3lzHxZ2rUcNOQLEw2iOc6H
         0PLYHt/QTeU4GaamVvjjpae8yhotkdrIsdnhvYe5pSVcHbUY7rxOVUn2Y3triMcPxkrT
         Z5XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id;
        bh=eRbvKfjJk0bri8G0vPQqkhpu0ZkhDRsECLEJqGoGXvE=;
        fh=aQQzdJRFsORi1PMls268opEIcpN9488iDRYb/9EBMrk=;
        b=jHDucm7GGA8sA64fs4fanYGt27nuJu/auaRv2ywIWcyiZ8gfQ4HDdaGno963QxbycC
         NaxUQ0X7aq3WkNZ14WeTka9UM4yQ2SXKcs3GVnns2imT0sH3DFFEGJ3ReHcB87LRHc5C
         rYi12Rams+e8ssjLIGmFliQBpFDCK69NGD6Bv3cg2dZOkfjUeeaxs7EN8nsFXiWpRMsd
         KTK939nPIq+5YL2Z/eQDNue1nuiauspuLLsMsIm87iNWIRbk+amb+cKGKKu99EEaZ2gu
         zBSYATBKR2iPirVH5+C23NDhWFtqpkjML5yWLzYa1VF/fGTvCr+KzUpxCi7wmwLsEzZ8
         tuuQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id d9443c01a7336-23de4368b69si13084175ad.589.2025.07.09.23.29.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 23:29:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 30d60d2c5d5711f0b29709d653e92f7d-20250710
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:0043cf3f-91f2-40cc-b799-60f2b559615a,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:14aab8415650b34f3e5ca436a8a56690,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 1,FCT|NGT
X-CID-BAS: 1,FCT|NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 30d60d2c5d5711f0b29709d653e92f7d-20250710
X-User: dengjie03@kylinos.cn
Received: from [10.42.12.86] [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_128_GCM_SHA256 128/128)
	with ESMTP id 1849901318; Thu, 10 Jul 2025 14:29:11 +0800
Message-ID: <0056f856-bd81-403d-84cb-339a37a73b8f@kylinos.cn>
Date: Thu, 10 Jul 2025 14:28:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
 <2025070702-unsigned-runny-62c6@gregkh>
 <4bac2d53-0e5b-437e-92bc-12921a8efd8d@kylinos.cn>
 <2025070810-nintendo-congenial-95d4@gregkh>
 <92f1e73f-5814-4e01-98b6-1c9c0b87f903@kylinos.cn>
 <2025070902-service-foam-1da5@gregkh>
From: Jie Deng <dengjie03@kylinos.cn>
In-Reply-To: <2025070902-service-foam-1da5@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dengjie03@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=dengjie03@kylinos.cn
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


=E5=9C=A8 2025/7/9 14:21, Greg KH =E5=86=99=E9=81=93:
> On Wed, Jul 09, 2025 at 11:40:03AM +0800, Jie Deng wrote:
>> =E5=9C=A8 2025/7/8 15:33, Greg KH =E5=86=99=E9=81=93:
>>>> 2) linux + arm64: The SanDisk Extreme Pro 55AF device will report an e=
rror
>>>> when
>>>> using the uas driver and the driver cannot be loaded. USB Controller m=
odel
>>>> (Vendor ID: 1912, Device ID: 0014,uPD720201 USB 3.0 Host Controller).
>>> Ok, that sounds like an arm64 issue we should resolve.  Why can the
>>> driver not be loaded at all?  What happens?
>> 1. During the process of loading the uas driver, the following error mes=
sage
>> will occur,
>> resulting in the failure of driver loading:
>> scsi 3:0:0:1: Failed to get diagnostic page 0x1
>> scsi 3:0:0:1: Failed to bind enclosure -19
>> ses 3:0:0:1: Attached Enclosure device
>> sd 3:0:0:0: [sda] tag#10 data cmplt err -75 uas-tag 1 inflight: CMD
>> sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
>> sd 3:0:0:0: [sda] tag#10 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD
>> sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
> Any chance you can use usbmon to try to figure out why the arm64 system
> is sending different commands or failures than x86 is?
Thank you for your suggestions. I=E2=80=99ll review them thoroughly going=
=20
forward.=F0=9F=99=82

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/0056f856-bd81-403d-84cb-339a37a73b8f%40kylinos.=
cn.
