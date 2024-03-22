Return-Path: <usb-storage+bncBCY2ZJEUWQHBBK5I6WXQMGQEJEPS7GI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x146.google.com (mail-lf1-x146.google.com [IPv6:2a00:1450:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id D286D8869AA
	for <lists+usb-storage@lfdr.de>; Fri, 22 Mar 2024 10:49:32 +0100 (CET)
Received: by mail-lf1-x146.google.com with SMTP id 2adb3069b0e04-513e50a5aaesf2128453e87.1
        for <lists+usb-storage@lfdr.de>; Fri, 22 Mar 2024 02:49:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711100972; cv=pass;
        d=google.com; s=arc-20160816;
        b=uIPqANDyEEULOou16HR/1cJSahw/AEgm8cgCzbhDogByoa3tGWMuCRuIB7YsoDgzm+
         RBFMRmUo3YfLw8yhH0YHQ64Rnq4RGoFPFzKAgYdvlsp2sVQxoiCGECEwrGdjXkp/+3wV
         8OSgXeC5GO5iA5ck8aKEAzu1CyXgd94Gqq+hWoyU4y0A8rsOmg75ocXkZn1Vem2nHrqS
         MojmVMH1SxP+ayT2Noel/tgo/Z8WoKrID/DzKzKRj/H8DrBIgUfH7wB4jx9bPNsTH9Mb
         dQoW7xto6c7lTxxJJe1yZI7/ZN9DzNdKVPW2pYXjVepqtvpBEbaqnBJ9qCeucWkZakIW
         Assg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=2XK5xBSnA/WfgJ8jIXWC8MyYsLRUIHft7fMkOAC0tCA=;
        fh=OHjvwwwTpgnubVFUIwu5PKmVLBoX02HtqeC00EDJjno=;
        b=veZ3pQbNgu77Zvnmv+9UPCQHtpJ45M+nANYndVAKm/DV+Euhf48uRDBbcYoMdnwyOh
         ZUQq0YAL/jca9p+y19NoqH5UGSSPrttZ9X3NGWS3inanXw6EisyYmg1B3I+Cu4X+gRS+
         rPbjyGMkYHOX0DIw5qf5+yg1ZFcxH7rNtFLwpBtN/Asq3TYlHRZDKkgw9rZlOzCAdA0k
         dawtyc9u29v+84otis8dCRJY4vgn5nDxx9qZY9abzK0BEfEQR5HwP+4Hnin4nJlVnSj0
         mAi12Dwrq2OjSP1Sghhg1VslRTltdZo1wNZLjalrxpgF9JbkUq6H0QQ5V/VhPIA9edfQ
         0sGA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711100972; x=1711705772; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=2XK5xBSnA/WfgJ8jIXWC8MyYsLRUIHft7fMkOAC0tCA=;
        b=J4KnkX3Th/b6TAUfsLPvFz1uqeQTqhrv/3W824lrpsO0ZvJFhVX9X8OuDtMGXVGNPK
         XgAPv4L6N5eKLw2PL4kO0iyWsEruhdUv8Ep8Sw23MvOUvrWDnm8J7Ex+WWBQfwuQzVjW
         oLGFM9LpabzJL10poukXxzawJ8rOiCnJokb3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100972; x=1711705772;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2XK5xBSnA/WfgJ8jIXWC8MyYsLRUIHft7fMkOAC0tCA=;
        b=kNVXomZa/y1sO4mqAn2Mv5DufroTIlbchpigFXC/oMf/25lvDW6ILQXcL+1Gjv2qab
         oAPqCSlveg0ftWKDcSAhp09qa2KUp2YKpG7ebyHTxnO2oYT3vosULnkr6FtVao8xTQdG
         AiJ2YkM26kKUWdpTha7fglm6IzkwnGKdVBZDKKc8WSM9GYCJwjS+zQ5S93FNKcROB5M/
         y9z/zzRobQmaE8RGCPGHVq08eeD1iNAfj6+6QFBN7VxxvGUg1oYhi8Wy7PoHBD5+8dBl
         eS25oJg+XiGifTkZVAaPwGg8iqL78ouW+cKN+xNuqrklA2vCEcivfhLhjDK545tAxq0x
         kE1w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU+XwexEpjCcE0rmZIqgXVQ3TSrHr2W0vzLSguq9yPlwM99yieQ//lepKDA0+6XjXNy23gTNmRpT8mMaM/O1NckhYC6M1H+d97f
X-Gm-Message-State: AOJu0Yw9IDB/Xpsq7u3TUDJyCLKBFP8jcNbJ47CPSHlgF3cQV2pqLcYG
	Zwr6exTeYz3FhuKIv5o5Bi4RDvkvXI/0/p6Y1Lei7mI92tdxSXnuZ1VEkAfIyiI=
X-Google-Smtp-Source: AGHT+IEROKfWZsRB2NRrDF0ggrlmwNwx5rkJPV9ePWqtYENRFUKZ7iOO9vUMciefcGm1s4kgPupKdg==
X-Received: by 2002:a05:6512:20d8:b0:515:96ab:4183 with SMTP id u24-20020a05651220d800b0051596ab4183mr1233263lfr.37.1711100972136;
        Fri, 22 Mar 2024 02:49:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:b8e:b0:513:a9de:d62f with SMTP id
 b14-20020a0565120b8e00b00513a9ded62fls1082975lfv.2.-pod-prod-03-eu; Fri, 22
 Mar 2024 02:49:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWfJjxiLv55ZL+lDVFH3Fsp3mjHHbPnmagaejSAG5RUwEV6xr62IkR4Ft9bXux622x+WIgnmRyniSQLl/imDdlg1dMSMtI08F5vwR8AAwEAXoDN5bw=
X-Received: by 2002:ac2:5329:0:b0:515:9150:ecc1 with SMTP id f9-20020ac25329000000b005159150ecc1mr1128482lfh.24.1711100970326;
        Fri, 22 Mar 2024 02:49:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711100970; cv=none;
        d=google.com; s=arc-20160816;
        b=gpAfGeQZXkrRDs4nUGc93UJorzWTnJOviajq+vIlFy+sakkgx3+XGgJPP4K0KECMkY
         gZfKbbFcHHu1/XdB0JZGHAqSp651cqtZrPp4XgPLt17xc7AW4QCyR2+fVlHsXBP/coFy
         yWLtOOcGy0GX9CToDt0ZjY7xCcXa2DAkeMi/dgK6dWQ8CvtNCo4NgbnT4futDIECnlAT
         AiVvJJQRj97OITskuFTQ7uILyp25Ht/L+PWZsqVb1v6SpujUQsc1xmYhc0vp9xgdd6EO
         HxhXZZHscp5w9aJEi62h0q0yUET6R0fTt8ltwq34kL8TZtYB18rZCpI12FfBPHnbRhU3
         nDhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=rvg6auHRfrYRC/u0DPtqQXMweEAKd6Tu6L27CkRHerU=;
        fh=uArx2mZIcg5kqHBBfiebzKrTh2TvNvPTP3kf7iKbjus=;
        b=TmY4px4mSp8gOHK5e0nBLn70GNhessdciKkjXOIRvvyE8Ad7ks45H2lWEjmzcN4x38
         mxKNT1ZxjvMKmRtu4yVP3t+IfFY9YSMi214jj9P3a2iomJfl+i4cEw8qlRE3RkCGNrSU
         UOKRlJbMoxjS19+JfjHQ0hTxK5FWr4edL+BBXxp52OlWTVanmf7tEmstUKo9RLceV9Ed
         6TcP3UpwuLzzNwL3jPIFI9+g89jwBrzTLriB3t6BTf2ZSCEPQb7efL17an0qxrqYcbT2
         71esyyb+PW578sOd+J8PfX+mkoiaTSsQlk9R+Cvu64Ut4jow0zIxtUWZ0tXvP9Mi/gHk
         wmJg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id d17-20020a193851000000b00513ec4d7b65si445849lfj.386.2024.03.22.02.49.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2024 02:49:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (178.176.73.112) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Fri, 22 Mar
 2024 12:49:24 +0300
Subject: [usb-storage] Re: [PATCH] usb: storage: isd200: fix sloppy typing in isd200_scsi_to_ata()
To: Alan Stern <stern@rowland.harvard.edu>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	<linux-usb@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>,
	<lvc-project@linuxtesting.org>
References: <e8c20e3c-3cbe-b5c1-f673-0a7f22566879@omp.ru>
 <4e13319d-30a8-4274-bfa0-36d915b1e1ec@rowland.harvard.edu>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <6425997a-669b-919d-af44-880a7ce28ffc@omp.ru>
Date: Fri, 22 Mar 2024 12:49:23 +0300
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
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;omp.ru:7.1.1
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

   The reason is simple: Svace didn't complain about those. I'll fix
them up in v2 if you're not opposed to this patch...

> Alan Stern

MBR, Sergey

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6425997a-669b-919d-af44-880a7ce28ffc%40omp.ru.
