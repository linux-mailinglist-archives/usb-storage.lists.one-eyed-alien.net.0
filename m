Return-Path: <usb-storage+bncBCY2ZJEUWQHBBS7H7SXQMGQE24ANEAA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5AB887A39
	for <lists+usb-storage@lfdr.de>; Sat, 23 Mar 2024 20:55:57 +0100 (CET)
Received: by mail-lf1-x148.google.com with SMTP id 2adb3069b0e04-50e91f9d422sf3162340e87.2
        for <lists+usb-storage@lfdr.de>; Sat, 23 Mar 2024 12:55:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711223756; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3qJ3spQamAVPKK7I+oHnJ++F01swzG9TkLbMGVxnZ6TdGnjJu5t9pstroq33GZA3H
         IywozalKaw0A/EBdXx+axrteGh5Pnl1cY0pzX56wdqT1Ci70NOw/B6tu0i83hFDc3Owl
         yLQtbOfisAGga3xgzq+0/XD1c30o0hww8jUv2piHwx0QUo45vDNxe6XmhSGlgXhvUwMG
         x8KPoPPZQO7ulTnDvAEXH4YYXbqz2ImD+HjDnuCH5yN4QuoxHd57D2qdFdOxI2eGcjW+
         QKyFW2czg84PLoljQisvzHlT/T9ZQRzUH5m1zBO8mNi2ZMjRUgr83/FTTW3Ncby8bGbJ
         +vwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:organization:cc:to:subject:from:sender
         :dkim-signature;
        bh=Gn7f4wcYdPzu+Ow8AFnLjCGezcAfLi5c29ARujb2QwA=;
        fh=CvHqN0Ijv463FEv4JJ++x42AQzmbF1NE+rEhTHFXws8=;
        b=o64UyGbX3kyehSnrfKzI41/B4fgLNyKtd0gSc8bjqCxHBmmYcjPcxjLQZ228MdG6jl
         h7HXFscv69yvbUJ5/hn/iboCVCDQs6GGZ/CzHWI7PrLAt67IGz/oj52sRpBTeprFkwRK
         tSblkJPz7Ow9YDR9P50QWBMr9DgJVWwF81O7luUb6PQpDXO62JPG3zQubt2F76KQb1li
         KbopuIEgvSsLUYO903WjtqCE10pPXO37ix1FMNlhpGURfunhMlw4qhB8eOvvGWJqUmF/
         J46O4zny8HUsvcppbU5n+yRVJMadW4373zToLnRPTL9xAOTp1lGrWQJRuwuogfcdf4+k
         5o5Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711223756; x=1711828556; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:mime-version:user-agent:date
         :message-id:organization:cc:to:subject:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gn7f4wcYdPzu+Ow8AFnLjCGezcAfLi5c29ARujb2QwA=;
        b=H+t+TBAq8WFwr4uTNwUNZOFvw1g0+gz0SOzNzLwt+2TFk3YWlIrloh/NeqsJm3Uqjs
         vhotPHpUIljvbkxrgDQCjHy5G8wgpRcsgQaztGEwlnOgybcu7+j9tTqKooIWpmaTdkkd
         ViY3lr62FscThiQAOW7WlgbE7Q/H1FNpnAkWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711223756; x=1711828556;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:user-agent:date:message-id
         :organization:cc:to:subject:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Gn7f4wcYdPzu+Ow8AFnLjCGezcAfLi5c29ARujb2QwA=;
        b=rEeKJjq4UV6HF9dM3wa413LkUjM1z1cG5RvI6ULw+B0yPnX+VUKXwYazow6g/58gPD
         ZFdNe0p2JBitYkaCiI/aYQNDxTcDTSjMlAQ1QkNihGsF0dRJayJwa8c09anB9bU+svHO
         wIGB81dOM9DbyCZkS5dA0n0mN6Hop/E+a4Vm29NbI7XmlTUMzPNvHx3XJTAT8c8kwAKx
         fB9761doJ1bw+lmrYB4mzsnJyE/2AuniAT4A7WrnxUz7xHQKcHwlHebpTz6aeqQ0FMFK
         rPASI9J7zXWLwR5PiTrw5hF9psvHFWfly55GrWbG+TGIrF1m1kBMx7FSn7GoJF+Md1rW
         p4Bg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUEpFzWR5DhJAkMRzzQMo6WfhN5T9qSJ3yfeszniJbqYTLmV9NQToXc9jwc08A2mzANlGhgTC9WBVP2Dw/mwlKffuFzUgKbWkQF
X-Gm-Message-State: AOJu0YytZoTIZHNF6cV/1V8RqwqcE7dromvqMNbrPN/l4jHF/UE/zszl
	FNYuF6h94sDNcVlu4Foo2V97PvzBq9dOIePVas5O0lQ7rdh1qA4LTtT0hzcPwDw=
X-Google-Smtp-Source: AGHT+IHDM95E7eKXxMrt6zoDP/G+D3m5C74WrWjY0zdB36UcdpzkofbNN7wUptE9y5IrKxyl5V+sjQ==
X-Received: by 2002:a19:c213:0:b0:514:e5a7:10a8 with SMTP id l19-20020a19c213000000b00514e5a710a8mr1814502lfc.40.1711223755986;
        Sat, 23 Mar 2024 12:55:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:3e0b:b0:513:b1c4:e1be with SMTP id
 i11-20020a0565123e0b00b00513b1c4e1bels288541lfv.2.-pod-prod-04-eu; Sat, 23
 Mar 2024 12:55:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUvzINjX6UV2ZXDR5PNbqPzhOdhbouSTb223nUSxCj+909jwY8NqWXWmL4d/Cr8kIZZMJF2HKtEvc4Oo83/WE8+kLudlLLuBa8aOUj4GnAiXJQD4Ek=
X-Received: by 2002:a2e:3013:0:b0:2d2:d3de:44fd with SMTP id w19-20020a2e3013000000b002d2d3de44fdmr2006862ljw.29.1711223753502;
        Sat, 23 Mar 2024 12:55:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711223753; cv=none;
        d=google.com; s=arc-20160816;
        b=ELd/TI/ncn0c4XPJnKzMTWXGFswc/3jwKll9IhA579K0shuFwuu+POh57n0bCVWkaB
         3/V5P9bIJ5SdBLmTKXhMCqdKarqbqB4/ZaVggtdIRB6iwlX7GBpmYR1Kxbk1i4zs1mzK
         YzTZZjc5C2SItvo5jIGz6GoIIhtPzqh3kgtZ++TFFP1OtixNZgeMylRzqOOZyWtcgjob
         MNh8DqsW/BGURqZkX1bcMwLsgItISUiDPQYj+8kek3t/n53dp/hxcPDVoqFvpdGR6xXY
         mbtIF8dA84YmrS2WOjnwZJr0TrRPe16cjjafd4XpHXcy68xs3VDs0yz/3ky7wQDGYexB
         a9Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:organization:cc:to:subject:from;
        bh=aY3StqChOBpz2Vm0SR3lxlybJcm5pLTi/TNsMCzGX5g=;
        fh=tJBp+sa7RqGtuWBE9tj8cgWbKEwODdPX1frZkS9o8PM=;
        b=IFqhQpNWv6WmsPaTCCrBe2n72ELEqRiZg5JlYsxgVnlcgBr9BLCPmMJRCsHY+2fNum
         GheY2PAV9xYCVwQLmvSyHxFHuEAlnXQEAV83OiMJMJxRzj7wC1FNpqngua8Dg0HaRIML
         Okwjah+MJgS2uCybwpWt5XFQ1UAMwAnfomxg8jeH6y7EhC6GltXO3XVOX3lSh7DFk6gn
         l9IUxrOj5Q7jl3Gt8Ue1OlK/aTWezojItYoUDM625g90jmCnTvNEyzo6BAFfypCGVwpE
         azhTuC7UUrIERawg2WbdWTiZ4bGsjnCdSfN1JMrhXKd1Euzh3VuViSfCbAX1JnmRSCI0
         5LWw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id b25-20020a2ebc19000000b002d68d3a8eaasi1275798ljf.528.2024.03.23.12.55.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2024 12:55:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (178.176.75.120) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Sat, 23 Mar
 2024 22:55:52 +0300
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [usb-storage] [PATCH v2] usb: storage: isd200: fix sloppy typing in isd200_scsi_to_ata()
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <lvc-project@linuxtesting.org>
Organization: Open Mobile Platform
Message-ID: <8d6beef7-5995-c831-a7b6-ff98d3887231@omp.ru>
Date: Sat, 23 Mar 2024 22:55:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [178.176.75.120]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 03/23/2024 19:05:56
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 184371 [Mar 23 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 11 0.3.11
 5ecf9895443a5066245fcb91e8430edf92b1b594
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 178.176.75.120
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 03/23/2024 19:10:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 3/23/2024 4:01:00 PM
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

When isd200_scsi_to_ata() emulates the SCSI READ/WRITE (10) commands,
the LBA is a 32-bit CDB field and the transfer length is a 16-bit CDB
field, so using *unsigned long* (which is 32-bit type on the 32-bit
arches and 64-bit type on the 64-bit arches) to declare the lba and
blockCount variables doesn't make much sense.  Also, when it emulates
the READ CAPACITY command, the returned LBA is a 32-bit parameter data
field and the ATA device CHS mode capacity fits into 32 bits as well,
so using *unsigned long* to declare the capacity variable doesn't make
much sense as well. Let's use the u16/u32 types for those variables...

Found by Linux Verification Center (linuxtesting.org) with the SVACE
static analysis tool.

Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

---
This patch is against the 'usb-next' branch of Greg KH's usb.git repo...

Changes in version 2:
- fixed up the lba and blockCount variable declarations;
- removed the typecasts from the blockCount variable calculation;
- undid the reordering of the capacity variable declaration;
- completely rewrote the patch description.

 drivers/usb/storage/isd200.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

Index: usb/drivers/usb/storage/isd200.c
===================================================================
--- usb.orig/drivers/usb/storage/isd200.c
+++ usb/drivers/usb/storage/isd200.c
@@ -1232,8 +1232,8 @@ static int isd200_scsi_to_ata(struct scs
 	int sendToTransport = 1;
 	unsigned char sectnum, head;
 	unsigned short cylinder;
-	unsigned long lba;
-	unsigned long blockCount;
+	u32 lba;
+	u16 blockCount;
 	unsigned char senseData[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
 
 	memset(ataCdb, 0, sizeof(union ata_cdb));
@@ -1291,7 +1291,7 @@ static int isd200_scsi_to_ata(struct scs
 
 	case READ_CAPACITY:
 	{
-		unsigned long capacity;
+		u32 capacity;
 		struct read_capacity_data readCapacityData;
 
 		usb_stor_dbg(us, "   ATA OUT - SCSIOP_READ_CAPACITY\n");
@@ -1316,7 +1316,7 @@ static int isd200_scsi_to_ata(struct scs
 		usb_stor_dbg(us, "   ATA OUT - SCSIOP_READ\n");
 
 		lba = be32_to_cpu(*(__be32 *)&srb->cmnd[2]);
-		blockCount = (unsigned long)srb->cmnd[7]<<8 | (unsigned long)srb->cmnd[8];
+		blockCount = srb->cmnd[7] << 8 | srb->cmnd[8];
 
 		if (ata_id_has_lba(id)) {
 			sectnum = (unsigned char)(lba);
@@ -1348,7 +1348,7 @@ static int isd200_scsi_to_ata(struct scs
 		usb_stor_dbg(us, "   ATA OUT - SCSIOP_WRITE\n");
 
 		lba = be32_to_cpu(*(__be32 *)&srb->cmnd[2]);
-		blockCount = (unsigned long)srb->cmnd[7]<<8 | (unsigned long)srb->cmnd[8];
+		blockCount = srb->cmnd[7] << 8 | srb->cmnd[8];
 
 		if (ata_id_has_lba(id)) {
 			sectnum = (unsigned char)(lba);

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8d6beef7-5995-c831-a7b6-ff98d3887231%40omp.ru.
