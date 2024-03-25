Return-Path: <usb-storage+bncBCY2ZJEUWQHBB2EZQ6YAMGQE37VOVAY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x247.google.com (mail-lj1-x247.google.com [IPv6:2a00:1450:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 1607788AF87
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 20:13:46 +0100 (CET)
Received: by mail-lj1-x247.google.com with SMTP id 38308e7fff4ca-2d491456df2sf26707821fa.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 12:13:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711394025; cv=pass;
        d=google.com; s=arc-20160816;
        b=kA+yAP/gczG3lZJiIfeDzXiLUUTjAZ5pVLT6yTdzLVTi7bwTCMG7/d0TQJebZHGmD+
         UQNRCVniPUAG8/ESPvrCJfaL0T5w0fIH2BCyoc5u5XmiH9eqDqxVKFQ8kb+6i1+rgWAr
         g5/7lDyz7s7MqR5TNy7O5JPJPplD1Hau8CpqdNgS1aNgrwfbA1It3twqnuaLidqOlFg8
         kWWYNo/vDBaAoMRCvaVIGUmSo+JjkIzvgKoXRwUYth96OM9L+aenQwkj6brMuxwmN5D4
         AplCC7Ocg+jqmZrTrJrJPTWpnW5CHgPgVDtDVq89FE2O6p5PoMC1gxAJ4pWwLvz3yjME
         cY8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:organization:cc:to:subject:from:sender
         :dkim-signature;
        bh=3KNFKt0Z536mbygPtjRJEG84m4pYSiANK+hx+8JThCo=;
        fh=lj3j8zeV97WtjDCDY/8KWEPtuUhk3vexTYIu8oKerSs=;
        b=NPssD6YFer/ZEfD2zYsRN41HKonk50blb3BwbNl9seNqtds38FPsO/xpUF0ZEyMOpN
         +izUWoItfwFqAOiTuacdEyCabldkRoIsP1NnO/tVjmCpFm2UJt+IM1E6aE8C8kOZfXGL
         vzcdyLnNmc7oNGd6Ox1n4QJcvOy1fDfXa8rCn2IzPORsN7Po6GeeEQCX75wYHIe0RpxG
         HVYv+a6nvJa+3xO1kSYbSKGt+YVS3Iyt72Iwyw3FTpNOFFPQTJewn6wSFlV7LtpEbt5m
         pRmj1wMV+2HGDunc+3noh2ktoYFMI1OWuIIa5vPsufD6yu1ra/Fgs8GCVNVZrvOPWQ+v
         z4/g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711394025; x=1711998825; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:mime-version:user-agent:date
         :message-id:organization:cc:to:subject:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3KNFKt0Z536mbygPtjRJEG84m4pYSiANK+hx+8JThCo=;
        b=Ha2k5F3rxqLK3YbLDtz33Wt+0DepJrattyruQgsh8LcO1oBw86ZZaQGNURQ7slwynm
         NCAnajW3kJ15/AWDq8WJkLap5Q5N9ULxXESGGyD7xhg9wVLnxlXcSgCdgKzuhhHXxjRt
         oqVTZdcpdQ6eipwJXOK2cGbRd5BzOqEuwFrcY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711394025; x=1711998825;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:user-agent:date:message-id
         :organization:cc:to:subject:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3KNFKt0Z536mbygPtjRJEG84m4pYSiANK+hx+8JThCo=;
        b=ozEVrDV93d3AIQ6MXOBOKlptf4MrRK9unRKjiswVlQnmxVC0kSJHcjfm6Qto4czar8
         mwXOZiZeBqNnO9Hu/5hJJXp6trOZSkLb37ibbfj7EEBSqeCjh/t/NZprN9KGxaCHbr5Y
         qeczfct6yFgtPATzX2wcca9QiKok2ikv+9ed1xB9shBUcK8DmIijtsDMx1pl5E7BbvKY
         elwKTJCPZPb9Hie4eNFqvWjszoqmixxeSF+4dawnDz4utuGHxHqb/TbJHuZQT+KGOX6T
         h7Ye2ZfVF1KLwNvH5ya1hXuaPcUz8iBet5IZUsDq+LNc9/Pg3xGMYH0LG5fNX0gPdJvz
         d4IA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVW1KVYVt2WKYlvEEUi/wQwL36g6dAz7T+slQA9C32bKTrUxG2DrpN+q6RPymXVNXwEk3D42qHv35kZec0O/57QXh3Ql6VadaTt
X-Gm-Message-State: AOJu0YwfKM8bUAzO5Nkf05m4qB76reyDC1kXAuwDaGffddkCLVwCn6DU
	cRQZjzCI1+mtXTBjU3BARGt2C4FcdQCt7xp57ktWZWvNMMdTDUYpi6f90t1vJ8c=
X-Google-Smtp-Source: AGHT+IHAAThgYd3cpbOmx70XXIiRECVMf9+/0xdwkidPMF+OdpQAnYepxBJdwf0UVavZpadVwpE4uA==
X-Received: by 2002:a2e:9450:0:b0:2d4:e6d:ab5b with SMTP id o16-20020a2e9450000000b002d40e6dab5bmr2579819ljh.22.1711394025201;
        Mon, 25 Mar 2024 12:13:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:8397:0:b0:2d4:f94:2af with SMTP id x23-20020a2e8397000000b002d40f9402afls158431ljg.1.-pod-prod-00-eu;
 Mon, 25 Mar 2024 12:13:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWoSXSEukL08Ha7zBi0VAG19F9dsnjNwz3nYxEHDfi5G4L08HCk1O4jZ2ywMDxA0/xm5NhFh8YWE5zHZEDvzhoBf8x9JvAUR9JJqqaBT9h+WwtEBMA=
X-Received: by 2002:a2e:7d01:0:b0:2d6:9da9:a6f9 with SMTP id y1-20020a2e7d01000000b002d69da9a6f9mr2052638ljc.10.1711394023285;
        Mon, 25 Mar 2024 12:13:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711394023; cv=none;
        d=google.com; s=arc-20160816;
        b=YsARHsPfWjVj+xlqqTJoQgiRsxFlAIXgQR+1PpQSNk/cKhw6+Aye9YhintTRc2S3lw
         On7MGLHE/8Rtq26hryu1vCnHVcOuI+fzLpxCg+NoWU5J+VqVJS2QYwhnvwX8V6C1GwgU
         dO6PRJb6VBKsh6W18RFnDbCrdghHAb/wvQqD4G81EGBKHnOm/y1URXrvijWeUXJCpSKH
         xL8izA26+tZ92cSOQywnILFBAzYOw/lFUsyLvwrKKaOFiv9qkIokUZsS9rUMzvnXoyqs
         ZFbY7kDuKPLMCfyMVUeCEsXy8qu38uhYp5KqVKJpmDsuLXofluxOfdjLjdMGyE4M7oIa
         H50w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:organization:cc:to:subject:from;
        bh=6Cz8SZrEF6pKVYghr5CcZ9tvhxO8LVCtzZoAjQEDiDE=;
        fh=tJBp+sa7RqGtuWBE9tj8cgWbKEwODdPX1frZkS9o8PM=;
        b=d5BYjHJtD9dSR28PoRPCcq+8jTso04O/NJ03nNqKIz5JcLTrH/Iyw+/sINym9KjVIS
         D+Hxby1JIllFP06HfKNvdwRXHSveCj2a1+6jH6296Q1YuuyIFx7idmJIOvvhs4/cJcGM
         xVtjc+ObH17Ka0O7/i2DeeXeBD39/PKOHal84t+WcXSrscTAOQH3YZ2voRkXGO1jcyMM
         SyKReZV4SFDG6BZ3ww5PNYw98Ogm8tFijmRR+2oTTJ4Rrw/6FY5ChOgaAQtGdzUlkvOn
         gEPjcl1ewQN9D1VObWqsBRsjzZJSpioNXBWkrPu4KxwaiHOLiYl62ZoswyyYgGAZbemu
         KiFA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id a14-20020a2eb16e000000b002d473b36650si2313008ljm.415.2024.03.25.12.13.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2024 12:13:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (31.173.85.98) by msexch01.omp.ru (10.188.4.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Mon, 25 Mar
 2024 22:13:41 +0300
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [usb-storage] [PATCH v3] usb: storage: isd200: fix sloppy typing in isd200_scsi_to_ata()
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <lvc-project@linuxtesting.org>
Organization: Open Mobile Platform
Message-ID: <1366f7c3-cfd9-8c47-5465-f138fb223b21@omp.ru>
Date: Mon, 25 Mar 2024 22:13:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [31.173.85.98]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 03/25/2024 18:53:12
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 184403 [Mar 25 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 11 0.3.11
 5ecf9895443a5066245fcb91e8430edf92b1b594
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.85.98
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 03/25/2024 19:01:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 3/25/2024 4:58:00 PM
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
field and the ATA device capacity fits into 32 bits as well, so using
*unsigned long* to declare the capacity variable doesn't make sense as
well. Let's use the u16/u32 types for those variables...

Found by Linux Verification Center (linuxtesting.org) with the Svace
static analysis tool.

Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

---
This patch is against the 'usb-next' branch of Greg KH's usb.git repo...

Changes in version 3:
- added Alan Stern's tag;
- removed the mentioning of the CHS mode;
- fixed the static analyzer's name.

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1366f7c3-cfd9-8c47-5465-f138fb223b21%40omp.ru.
