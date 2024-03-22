Return-Path: <usb-storage+bncBCY2ZJEUWQHBBHVI6WXQMGQEY5XI3ZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 227AE8869A8
	for <lists+usb-storage@lfdr.de>; Fri, 22 Mar 2024 10:49:20 +0100 (CET)
Received: by mail-lf1-x148.google.com with SMTP id 2adb3069b0e04-513e7ff16a8sf1525401e87.1
        for <lists+usb-storage@lfdr.de>; Fri, 22 Mar 2024 02:49:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711100959; cv=pass;
        d=google.com; s=arc-20160816;
        b=zICOn2W1LUCbs6mUlSc49MVS00zJczewwFsIStgsCaW/u3axgn8F61fKcDxOQ6MmCI
         ZviOScpv5Zqeca9sZBTthztwhRMKGadfp1y36CSHIktdfptM8Oe02zcn9IciiN0v7Y98
         J+MMBgeWflm5ZUMyVH2AIhzU3clOOp2LBEKxqdFfVo49Jki6CKG3gTERf3MpsPYActRY
         3t1xn4XUmeNdMHwn9LRsAnfU4QVwqCMHG99S5139bGLK+t88RRH6Kje6/4qNwS5HJlK/
         znqMvOmY7p28076aUQ2AhvyfPZIpeh72+oHBb+fzryd7OolEQmFoL9nO5vhC2vTkqrOI
         Eu7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=5cMh4CU8q+lYF5zC5CFvsVgcYnVVz80PYrVuKRcesuU=;
        fh=dx3NV4WbH1nxtpcQhbpiuxoBQCnFUAC2UcoCGxf0/Pk=;
        b=rTXQPs7cguUdXm7eZRcm6i0ZdBI9CzRyBALQKZi15aqOG8IHLrQNFpDEczvwC7WRIY
         gUSNaMqwRmvHHPNzG743F/IrFuTTvm176OEH1YtpRWJUwUBh8y/CP3wGEygBPxn2Uune
         jpqk4sT+WXDL0lxMDvfdUDQFfp/5rIdj8YFC7VzgsS5I2l1u73somgkNxQ7lDlXFeFtC
         O8x5+KMfo7aqchMdT0VpiGRCJpdvUDSi4Z7I2H0a4FEELbZPhRhwPqg037MLlF8icHSV
         LfFNYMT2wEJnUoyvJ5vppuU6CeXsU1Feprzelq/bk2m4/kOUwVYd73MzK/QfwiK6D0S/
         CoqQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711100959; x=1711705759; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=5cMh4CU8q+lYF5zC5CFvsVgcYnVVz80PYrVuKRcesuU=;
        b=KuVX3fTpL7p/NZbjXGevqGJppyGK7zEzUXfWTtkY1JIJZaReuRcyCMERUN7ujvI2Wa
         UOJ6Bz5wMbCIWkH9jqiHvOC7dMPI4S9Hx9j8yQQVDFWA+0Hrqcwv5RA4BrpZFTPMVrlU
         9PmTuIWPIIU2X223qSeGjaTWT2fRwCt1S50L8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100959; x=1711705759;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5cMh4CU8q+lYF5zC5CFvsVgcYnVVz80PYrVuKRcesuU=;
        b=wKidFJSlRxNIHdlnYDFpqwJ7aEvjm2LIks8yNWtKaM928SKwVd4bqTLWLShQhKZ9RV
         0cwB7BWsfaZL6IPePIqJCfwai1K5wC//JFsoFy0X07gii+u4/r5zy/7yplN3XE2eNaOO
         CZvFAlIIJmijanvIL8n3VAGlg36IV5Ej1CB85Yl0CzcFIPETZ5a826TLqw2PXSP9XHYZ
         WzVPltR4tSLMmUd/Xo1Fd/AZ0GaaxYN+CFCfSH4hFt1owyBj/gbkT0SCAYYQgHVlx4J+
         xB2N8rqrfOEesu+bewdiSoTZnBnZnh/Tgr1ASh3ZeRfZBMFSvnlZ6zJa5X7vxZ/fJCVV
         aJrQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUWhUPisN6fxfm+T3S5DdJaDySeMmcannCyKHCjAFVeHN3l4fWbFTMGTJqtYH9BH8vYXD1fgIxoBoUZd0FHtP4bb7vF6pqJvSA7
X-Gm-Message-State: AOJu0YxLHn/ylVWdWJQGa4P/8z7IAlzxUKRPaLxLP3BvRbpRaGf0Aktk
	D/EkqK9AgQgMopmlg0IIePL0FIaZ15ZvWK/LDpNOyu4pf5ruQdFMwikYov5Ffvg=
X-Google-Smtp-Source: AGHT+IFtZ29cGEIwrlzuGuqbnB0xLC6mndAXSiiupPgDk6gbGTvXW4d98aogbh0rBxpY6xTDrcGFTQ==
X-Received: by 2002:a05:6512:3101:b0:513:caf3:51b1 with SMTP id n1-20020a056512310100b00513caf351b1mr1270046lfb.0.1711100959513;
        Fri, 22 Mar 2024 02:49:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac2:5de1:0:b0:515:9b57:6fc0 with SMTP id z1-20020ac25de1000000b005159b576fc0ls138427lfq.1.-pod-prod-02-eu;
 Fri, 22 Mar 2024 02:49:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVcd9QuVGiSUBOHL5qsdMxPajTIk5Xmpt+00j8gF+48h0/qUzWVMoPGbJA2hPZ4LeVlygs6YYHaLnD/9XlnVJ+zfYHjheq6T2890NdRBfoCEMQDLeg=
X-Received: by 2002:ac2:4d82:0:b0:513:d8b4:90be with SMTP id g2-20020ac24d82000000b00513d8b490bemr1188175lfe.24.1711100957204;
        Fri, 22 Mar 2024 02:49:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711100957; cv=none;
        d=google.com; s=arc-20160816;
        b=rU5R6qX7Dj9FikBmgIc4aXcqHdOjmMLVjcGgHcbxu/eSt1XmImtD/8fPccqjvEYDRK
         yUnAPnnzUyz3ZXeFeekrVpAnKidFDhgs8khaplMPtwnbxN/pThWK4PT+Zb9oUYouUVZA
         7zLAt6VkIZda4Yu+YNfCKJgzI60s+Qo4dJkBrqCLOdwGMkAtw/cQookQxuLRdZVBHc2l
         sOTfIU7FBhiV0g91WaCIOTsCO+/GQxZeEAjYhJj7yX6H4DLbB6FM99Ha+pEjPBUUGv84
         v2Fu01PQ+/rFO0fHBJewCDzTAAD62xe3fZBQtwyK+awml4MmB1rocU1X5xIL/3fehC+h
         5Fcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=6wg3clLzd21DAshztE1VHup0po82pQWOVMJJrPw6HuY=;
        fh=uArx2mZIcg5kqHBBfiebzKrTh2TvNvPTP3kf7iKbjus=;
        b=jzcQW+1nmxFfvRp7L1Kfb7K44N0l119M7cozgxMpJHka7vsN6RO925rNZOpCI+jzTt
         LnXiWIGpdgc9WJnVRWPTuZi9S7ehhBLhPMIEcdqXPwodVIKCamWF+9XL4OiGXeQoxsga
         PH7ho9NrGE0NSoSDqzM4Rss7BqSpZU9wgfHXq+3hHHeQ4qaGRZqm/AroF38JDV3YQKiw
         /soaXS8+NU2TnmvrIzmbullB/isv8rUroXWzYDkWeOVmcfjRPKAmmOBI5Z3wmvgs7xY7
         rIrNH3piUQQpdpBfuJxxJS4sEZaP7Na/dwEVmtww9m+pESzgLu2CRUp6Xg33vKFbP2iw
         Dnyw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id d1-20020a056512368100b00513695f5d65si438397lfs.503.2024.03.22.02.49.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2024 02:49:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (178.176.73.112) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Fri, 22 Mar
 2024 12:49:11 +0300
Subject: [usb-storage] Re: [PATCH] usb: storage: isd200: fix sloppy typing in isd200_scsi_to_ata()
To: Alan Stern <stern@rowland.harvard.edu>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	<linux-usb@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>,
	<lvc-project@linuxtesting.org>
References: <e8c20e3c-3cbe-b5c1-f673-0a7f22566879@omp.ru>
 <4e13319d-30a8-4274-bfa0-36d915b1e1ec@rowland.harvard.edu>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <5ccbb639-10fd-ae7f-1c59-3c6f642275e9@omp.ru>
Date: Fri, 22 Mar 2024 12:49:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <4e13319d-30a8-4274-bfa0-36d915b1e1ec@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [178.176.73.112]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 03/22/2024 09:25:02
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 184345 [Mar 22 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 11 0.3.11
 5ecf9895443a5066245fcb91e8430edf92b1b594
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 178.176.73.112 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info: omp.ru:7.1.1;127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 178.176.73.112
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 03/22/2024 09:29:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 3/22/2024 6:00:00 AM
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

On 3/22/24 3:57 AM, Alan Stern wrote:
[...]

>> When isd200_scsi_to_ata() emulates the SCSI READ CAPACITY command, the
>> capacity local variable is needlessly typed as *unsigned long* -- which
>> is 32-bit type on the 32-bit arches and 64-bit type on the 64-bit arches;
>> this variable's value should always fit into 32 bits for both the ATA and
>> the SCSI capacity data...
>>
>> While at it, arrange the local variable declarations in the reverse Xmas
>> tree order...
>>
>> Found by Linux Verification Center (linuxtesting.org) with the SVACE static
>> analysis tool.
>>
>> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
>>
>> ---
>>  drivers/usb/storage/isd200.c |    2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> Index: usb/drivers/usb/storage/isd200.c
>> ===================================================================
>> --- usb.orig/drivers/usb/storage/isd200.c
>> +++ usb/drivers/usb/storage/isd200.c
>> @@ -1283,8 +1283,8 @@ static int isd200_scsi_to_ata(struct scs
>>  
>>  	case READ_CAPACITY:
>>  	{
>> -		unsigned long capacity;
>>  		struct read_capacity_data readCapacityData;
>> +		u32 capacity;
> 
> This is a bit peculiar.  Why bother to change the type of the capacity 
> variable without also changing the types of lba and blockCount at the 
> start of the routine?

   The resason is simple: Svace didn't complain about those. I'll fix
them up in v2 if you;re not opposed to this patch...

> Alan Stern

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/5ccbb639-10fd-ae7f-1c59-3c6f642275e9%40omp.ru.
