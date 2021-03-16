Return-Path: <usb-storage+bncBDNM5HFD6YCBBE6NYSBAMGQE5PB3ICA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 6364133E0BB
	for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 22:43:49 +0100 (CET)
Received: by mail-pf1-x447.google.com with SMTP id u188sf20904843pfu.23
        for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 14:43:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615931028; cv=pass;
        d=google.com; s=arc-20160816;
        b=jTmMoX3JMHwfy80Uuu0nlmcGDzWRy902E41kw4W+9zd0pY4qe1qCo/ydvLwaGSXeNj
         XsxBCx2D6220zt8zQfkR75l8DBoNGg0zMnS/rOB1JaBfuAMyrm0zXVp9VMfmrCujEngq
         X0FBv+fOUqnY1oPK6mCQAGEA7htgEuuzsIq4tEL+xYXD/fb2anR7SiF9jta2dBBr3FhE
         Dt8VeAdyqeL30y9KS7j0hVsFeV3ApP0+8XMakDPJXc1G3vQZ7wKPlsNs73MhR8l0sTbY
         z4oshIjkbd8OhoczTfBVPA/LdFCjH9zjuvbEZn+zbwQhjhOsS1pa2IgzxvwNZCcMCQUY
         UCkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:references:cc:to
         :from:sender:dkim-signature;
        bh=aCaVKOXtlKMhtGBLowyJLSIQHjqhdseakGVkL6O9P4M=;
        b=uOWPBQimKHBmBYa77P/6gap8/yA03zD8AAq6vtVmYp7B46ljHiZsrA0cY9kqHfmvPt
         RJu3+HAq0QzYAqImlFWDyqxPHJb4PJeO3MFuN6MhKHVEhcEGur1xseHo7SfnkEFT49ui
         I/eZPdAWCJHKFf+AxXbDUc/GJMU+UF8HnartXETd8Nunj90mwTWeAZWoPNE+F4pbA330
         AY9HF6dp2QpuTguwb6kM1EAz8J4zz20sp+H5CLq883VVHYiusIb/Wvszmbj767RCRKPU
         zHbrsW3/94NgZxvq1PoR6zbmbVn++XJbxXFi/N/v3qtUzRWr2ArmZ18WD2sR5Rdk7Ifc
         guvA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:references:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aCaVKOXtlKMhtGBLowyJLSIQHjqhdseakGVkL6O9P4M=;
        b=eNjo2M+i1MDMNADw9GKXU//zCjkQi85mCMwLAMLURV41OQpMe6gk5bl2vJ9E+9iJMf
         iHmsZ+EoU1v4gM8tjslhkBIyj1ytGhZtrt3qH6QgYXMgp+QHYnMt55GSapev0PKgjTD9
         b9ho/NeRkhCWKRUchiNgEgrpbk7DNBg8+YDcY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:references:subject:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aCaVKOXtlKMhtGBLowyJLSIQHjqhdseakGVkL6O9P4M=;
        b=Rn4wPG92zzf1dqyZ5Y7MIiukw8zWfLem4R1S6LmrKrEKXLg4WnVmjkf0TJHEfQU01+
         aTNVZRf82OyBxTLta0mcn0S22eDGxwzk5usTTEzqxC1AMIVsmGApsvI7WnwhkSW55SPG
         UjlFJC3JlWxeKRmxJc/MZJXPFqb3c24gJuu8WKJbjgpwi7LMsbMKhJkmfT/yVWXhFHCY
         aSrngXicpD8vneePa+GH4K/McoCIKVFSuvCdlLZcX/7AmY206THJoQxv4hSdzBn7oAod
         2Irxgy08IdoEj/XxF8UMex1wUrH93XutdJFoOGL/rN/JqqqEqF/SUoUb1dSNIRID1AyR
         Yydg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533u9Nc2wsGxqZKOoLYEgqTj4hJKRnvc/mAc1sEwoJq9y84b/WbP
	Izi+qsVFHOc4stEGlULS+d9bHQ==
X-Google-Smtp-Source: ABdhPJwTCjhayM2sJB3kYtIgCYHor04Fn/7oYj0zU9qput4HK3MenIHOa7nYvEpJtVaeUzwYixwEyA==
X-Received: by 2002:a63:4f59:: with SMTP id p25mr1472325pgl.335.1615931027868;
        Tue, 16 Mar 2021 14:43:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:930c:: with SMTP id bc12ls6965143plb.10.gmail; Tue,
 16 Mar 2021 14:43:47 -0700 (PDT)
X-Received: by 2002:a17:90a:bf84:: with SMTP id d4mr1013356pjs.118.1615931027065;
        Tue, 16 Mar 2021 14:43:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615931027; cv=none;
        d=google.com; s=arc-20160816;
        b=MvwAKArgu81PPY3JnPdET+MfEKl5SWdk1CB5E+Zg54HQimBbzdmMDZsEWx0xuHjNc8
         dbJN7pkOZXKAa6j6zcNPQmOZZ/ci4yuPdNS61916Oj//YjNYJ8s1PbIuS8rJkxUlCzcr
         tXAj11S5F9UbliIvF1Yvj+WTgdh42wFR3v15ziFZ853+ptwFxXmNuV3vnw0hsu+TWbJF
         pUxPc501lq+VQx9UuFp28PQ9ZignvVRvCYREFJFCyeM7PE0yG+Rjdstr80NvosFlLtht
         d/eeU8yncf4g4R2TI3MIW9eXzyzzJv+eQQfVMlxcwzQBODGHumGz3y9rkV2nDTDHtlyO
         vdqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:references:cc:to:from;
        bh=4CpK9MlZotUYbm3PG8aK0AbZv1Z20ow4X87JuQz/w1s=;
        b=zzO7ZHCYEhbpbWMsGfvA/Wa0gskhNRt26jMWcWc6CGz0db+nwTi3BFI/KNXZ3xStfL
         WVl0tDxyuMrOx8MduuyDRDYUmIhU5mMp+fBOsfVUe/DTDp0ZLG+nRoSav+oT4onLRa/N
         KxVvVhCN2vke1U/jUIpAvWa7PEo+0h+e7Nl2IDSmfAZT7pnmegrhGfcQshNi0v0ZQTDl
         l7+nl02nhs2sXRmw4z10heQAOPmq4oJ20WAIqxd2KVzvlVAWWLLQOZwhSx63SdulKEgn
         cm6A7WrbyLPPjxIfP3uLPrEcfRmetes/BNShydQpglLZkqtk2EU2tmRLYV/TFi01EsPF
         8KGA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
Received: from smtp.gentoo.org (smtp.gentoo.org. [140.211.166.183])
        by mx.google.com with ESMTPS id y204si11301269pfb.170.2021.03.16.14.43.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 14:43:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) client-ip=140.211.166.183;
From: Matthias Schwarzott <zzam@gentoo.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 hirofumi@mail.parknet.co.jp, Lennart Poettering <lennart@poettering.net>,
 systemd-devel@lists.freedesktop.org
References: <20210307155236.GB103559@rowland.harvard.edu>
 <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
 <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
 <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
Subject: Re: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
Message-ID: <22850531-fee1-a679-53d6-a8d8691a9630@gentoo.org>
Date: Tue, 16 Mar 2021 22:43:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210316162650.GB448722@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: zzam@gentoo.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender)
 smtp.mailfrom=zzam@gentoo.org;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
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

Am 16.03.21 um 17:26 schrieb Alan Stern:
> On Tue, Mar 16, 2021 at 06:26:30AM +0100, Matthias Schwarzott wrote:
>> I implemented solution 3b. This is the pullrequest for udev (systemd
>> repository):
>>
>> 	https://github.com/systemd/systemd/pull/19002
>>
>> Now Lennart asks if udev is the best place for such hacks/work-arounds?
>>
>> Well, I implemented it as suggested by Alan (see above). This was the
>> simplest of the considered alternatives. Different quirks in kernel has been
>> considered, but are more effort to be implemented.
> 
> Lennart probably isn't aware how the usb-storage driver works.  It does
> not create commands on its own; it merely sends the commands that it
> gets from higher SCSI layers.
> 
> It may be possible to modify the SCSI core, to make it send a TEST UNIT
> READY command immediately following any SYNCHRONIZE CACHE to a Kindle.
> 
> However, there may be an easier solution.  usb-storage does indeed send
> a command of its own, REQUEST SENSE, to get error data when a command
> fails.  The patch below will make it do the same thing whenever it sends
> a SYNCHRONIZE CACHE to a Kindle, failure or not.
> 
> The only question is whether the Kindle will regard REQUEST SENSE as a
> sufficient indication that it shouldn't do an eject.  The only way to
> find out is by testing the patch.
> 

The patch is a lot shorter than I expected it to be.

I tried it. The new udev-rule is commented, so polling interval is back 
at 2000 ms.

Testing it:
# cat /sys/block/sde/events_poll_msecs
-1
# cat /sys/module/block/parameters/events_dfl_poll_msecs
2000
# python -c "import time; import os; f = open('/dev/sde1', 'r+b'); 
os.fsync(f); time.sleep(4)"

This is wireshark output of the test:

85	4.701949	host	3.8.1	USBMS	95	SCSI: Test Unit Ready LUN: 0x00
86	4.701972	3.8.1	host	USB	64	URB_BULK out
87	4.701975	host	3.8.1	USB	64	URB_BULK in
88	4.702030	3.8.1	host	USBMS	77	SCSI: Response LUN: 0x00 (Test Unit 
Ready) (Good)
89	4.702043	host	3.8.1	USBMS	95	SCSI: Prevent/Allow Medium Removal LUN: 
0x00  PREVENT
90	4.702069	3.8.1	host	USB	64	URB_BULK out
91	4.702072	host	3.8.1	USB	64	URB_BULK in
92	4.703006	3.8.1	host	USBMS	77	SCSI: Response LUN: 0x00 (Prevent/Allow 
Medium Removal) (Good)

93	4.703052	host	3.8.1	USBMS	95	SCSI: Synchronize Cache(10) LUN: 0x00 
(LBA: 0x00000000, Len: 0)
94	4.703066	3.8.1	host	USB	64	URB_BULK out
95	4.703067	host	3.8.1	USB	64	URB_BULK in
96	4.704146	3.8.1	host	USBMS	77	SCSI: Response LUN: 0x00 (Synchronize 
Cache(10)) (Good)
97	4.704149	host	3.8.1	USBMS	95	SCSI: Request Sense LUN: 0x00
98	4.704177	3.8.1	host	USB	64	URB_BULK out
99	4.704179	host	3.8.1	USB	64	URB_BULK in
100	4.705032	3.8.1	host	USBMS	82	SCSI: Data In LUN: 0x00 (Request Sense 
Response Data)
101	4.705035	host	3.8.1	USB	64	URB_BULK in
102	4.705053	3.8.1	host	USBMS	77	SCSI: Response LUN: 0x00 (Request 
Sense) (Good)
105	6.740272	host	3.8.1	USBMS	95	SCSI: Test Unit Ready LUN: 0x00
106	6.740323	3.8.1	host	USB	64	URB_BULK out
107	6.740326	host	3.8.1	USB	64	URB_BULK in
108	6.740410	3.8.1	host	USBMS	77	SCSI: Response LUN: 0x00 (Test Unit 
Ready) (Good)
195	8.709417	host	3.8.1	USBMS	95	SCSI: Prevent/Allow Medium Removal LUN: 
0x00  ALLOW
196	8.709441	3.8.1	host	USB	64	URB_BULK out
197	8.709445	host	3.8.1	USB	64	URB_BULK in
198	8.709645	3.8.1	host	USBMS	77	SCSI: Response LUN: 0x00 (Prevent/Allow 
Medium Removal) (Good)

The patch indeed works. The kindle does not disconnect.
I also tried with a sync on a mounted filesystem. The effect is the 
same: No disconnect.

Calling "eject /dev/sde" still works as it should.

Tested-by: Matthias Schwarzott <zzam@gentoo.org>

Regards
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/22850531-fee1-a679-53d6-a8d8691a9630%40gentoo.org.
