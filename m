Return-Path: <usb-storage+bncBCY2ZJEUWQHBB7FX6KXQMGQEMLBHIDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x248.google.com (mail-lj1-x248.google.com [IPv6:2a00:1450:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 383C38861D5
	for <lists+usb-storage@lfdr.de>; Thu, 21 Mar 2024 21:43:41 +0100 (CET)
Received: by mail-lj1-x248.google.com with SMTP id 38308e7fff4ca-2d599dba7fbsf13641481fa.0
        for <lists+usb-storage@lfdr.de>; Thu, 21 Mar 2024 13:43:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711053820; cv=pass;
        d=google.com; s=arc-20160816;
        b=MTayoZKdC/LsJUKApJ4tupVAFoNHQuB5TzCxXlw42QkqZ3M/tlaeP1zDII8XKIHAbB
         /aj7rmAb+aNbf8jyOWleOvgsEejo5AUqXMYOF0IVcPHBspKQInQ+KwIET9jLeW7S1WNN
         +areN+SjagRcKqdDTRbLOqTDxZBI0pDQGThcZqTw/qJqMhTxhZmry7SyM7OIzm773aIX
         UwUvwPIWM9r6uJ958nbq2d0qXwxypvZ/6mXWLg8aX0gVF4Ks5YUeSMY+SNEjg9m8N7bz
         yEw4Cst6mmEo779gR7yZmiOaAou38fuVgqFgW5KWxyok3dPWt3Ko3czKRlmCYTggMDlY
         IJTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:organization:cc:to:subject:from:sender
         :dkim-signature;
        bh=/W7wW3jcPcLeh8iTcafnwQnNHlBTPN20bqYq8Q1JcPA=;
        fh=UehH777scANrZRFbvAB36vtNmttDH0+NNJIBm3xS7oQ=;
        b=cGpsZ90D444wo/DiBB125Waw4zwVpWsLpLCc9hpH6lqz2otcb0A6CJMNnatYxWovMk
         ju4C5plCh+Xbs7P0wPWxg/4/fGYLAH19Jj7/Gt8TNirmZJPN6cwZjQrPXp4QDetBecHW
         mN2mLSyrO54JIgahHDZShc6eW7GcKdMdig9imVFdAXef4ZX6tCAgiInv415ZHfD4dzgU
         PPBApQnbOGmqu4P5/PLW/H8zpWZ0uFyPeTQCE9VQ8WQLPQWaxZHvfG7D3n7iri74JL+v
         igsKdglXacsR66fQRfp3vIEzLfgunMHqq8i+GIoEauzarxOkLj7dqJnfFyZPxJsIN+L5
         Takw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711053820; x=1711658620; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:mime-version:user-agent:date
         :message-id:organization:cc:to:subject:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/W7wW3jcPcLeh8iTcafnwQnNHlBTPN20bqYq8Q1JcPA=;
        b=ldJdDQLV5VW+OWFAH6JCbj+V/I9omULV4nvHvXTh4TedLVG7Z2KvCBG4Kd7X2edC/V
         ut8fE19JoAAjB2iPzOyTJozccKgEP4l3bja5ZD65YFe/5uVxdleomseW2wLPE4/4SZPX
         8QEt0IVLrFvugTClq2YRTFc+rb/d5Q2bqOqs0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711053820; x=1711658620;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:user-agent:date:message-id
         :organization:cc:to:subject:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=/W7wW3jcPcLeh8iTcafnwQnNHlBTPN20bqYq8Q1JcPA=;
        b=E+1zOpn3LU7I9PMT1u7HGkngD+TXJJXdyAbsfSoLYFMRDFroWiSOgrr3OZMOcCylOX
         OkMBUIqp4YT/8CEmoxxca8WLwbS82wlxb/d+ROysC/waCxwr9BRBKO93FgXEdPSh+Zbm
         AhdKvzMRrlHtRC/qTwFJy/kHjAab/1KC3sJ1Poau3P/zhp5seDvzVDzlNmwJeNeHF5ND
         RiukQWEmmelKD7LcJPsmh2KXQ2xtF08oUPsqzsOjTNXSYmI0Zh2u/BFjTZoUUG7l7dwR
         l7ZghdVbKHLAs2ojGCltvgsaiB+FNd7vX8nKwOP6uuA2Y04OFm/ObqPVtFN9dzi5zQtd
         X5XA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUDgvWMpl9t26PE2NlIUhj6tbULKSpQ7UbBXHMBca7y2yCiwx06fuLlFrzNRFlObB3BSGMz1FEl00+2p7upMHGejIU4CdO3rFtY
X-Gm-Message-State: AOJu0Yw6SLno79/GLOP0AexEA0XIRThYbA5MQzg9whPkszpkXqKU3QeG
	AL0qe+CuiFz8HV1XDbNwQ2M1knHTEO5icdw+fXAmF/4QqmpwT8TbeIK07NkNC+s=
X-Google-Smtp-Source: AGHT+IEpa8g8S1hTRHmgjgksZVAw47pyzQTnQkBvl2MPZnWkroHr4XwrHsmxmmJCbdPjv3ktvrEB4g==
X-Received: by 2002:a2e:9a84:0:b0:2d2:d3de:44fd with SMTP id p4-20020a2e9a84000000b002d2d3de44fdmr451305lji.29.1711053820596;
        Thu, 21 Mar 2024 13:43:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:7019:0:b0:2d4:9683:bb0b with SMTP id l25-20020a2e7019000000b002d49683bb0bls306162ljc.0.-pod-prod-04-eu;
 Thu, 21 Mar 2024 13:43:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXoAv6NZWDVxcUdtGHbZQTSrtyoiWXNlidO+ReneRPolU+NaEKrB+YinU0pzumTFVCHvLdoA7sjSbU7MWVgbyy5BaS5BbSEUb6x56I1kot8VweYfRI=
X-Received: by 2002:ac2:5f8b:0:b0:513:cf52:3c15 with SMTP id r11-20020ac25f8b000000b00513cf523c15mr322255lfe.49.1711053818904;
        Thu, 21 Mar 2024 13:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711053818; cv=none;
        d=google.com; s=arc-20160816;
        b=mYnZ38eMRBsu8DPi8bhOrbZ38CM2xTsq5LjJIvmHYNlcL4KRoxzxfQStnFPR3QUpyC
         2syZtFWrTyQdZPIMArRKyls4gXyYk9s8s0+VISKH/ZLDCLV21ygw9FKCj4Jc6kRPCkm3
         paik9kP6dYxTcKZSfGPyYQthAJJugnBBCl9hY/jCIPF6HqAgjV9JF6qWQeo+t3vMVlGl
         GdT+Q7uiGcnJqoPEL9QI+sGPygKvIzdDukz+IN0kvlW0rnYmIdKYBcl415RlpJzuz0j7
         zlXrRUb1kaCHS+nHEkE77ygVcSkKdPKSLABf147LZSodxg384usf1y83ZJtxjNHI2uJj
         sulA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:organization:cc:to:subject:from;
        bh=gE+HOABwjxEGhCVVsAjy0b0hqLBSsaTy13fWMNs7MF4=;
        fh=tJBp+sa7RqGtuWBE9tj8cgWbKEwODdPX1frZkS9o8PM=;
        b=eKkgp9xkCYlPgHVSrUTgCfifDTrR03OtZ2dg2zY+LkfsIroHFvvMM/vIeWQue+EXAk
         OH6mT6Dlon9nSA8UM0hbiYrmi5dSAiuCNvKmgnrr/f6EyAv8h1LFYPqYrvRxjSkdIcmU
         EnvFg3eLYIKp5QETM75LRBCdzMUXYVeqCrNSe6rdsybrquWQlkMIdT8lNEhduZq2gWM7
         r8rEEpFoRGnVplJitGAeT2a7IDND52SFgGLI2No12mBMmIPBm/uFSVNNy5F2fGudYS6g
         0VSxs5XLHLR4NU2E5fEXXgZDDdI/gjsFlQRgcUPzyyAK8/lXd7IGeMRCWl4HmIVZas7t
         9uhQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id f14-20020a056512360e00b00513dc364d67si103120lfs.611.2024.03.21.13.43.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2024 13:43:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (31.173.84.168) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Thu, 21 Mar
 2024 23:43:38 +0300
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [usb-storage] [PATCH] usb: storage: isd200: fix sloppy typing in isd200_scsi_to_ata()
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <lvc-project@linuxtesting.org>
Organization: Open Mobile Platform
Message-ID: <e8c20e3c-3cbe-b5c1-f673-0a7f22566879@omp.ru>
Date: Thu, 21 Mar 2024 23:43:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [31.173.84.168]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 03/21/2024 20:27:00
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 184337 [Mar 21 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 11 0.3.11
 5ecf9895443a5066245fcb91e8430edf92b1b594
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2;omp.ru:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.84.168
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 03/21/2024 20:32:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 3/21/2024 6:05:00 PM
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

When isd200_scsi_to_ata() emulates the SCSI READ CAPACITY command, the
capacity local variable is needlessly typed as *unsigned long* -- which
is 32-bit type on the 32-bit arches and 64-bit type on the 64-bit arches;
this variable's value should always fit into 32 bits for both the ATA and
the SCSI capacity data...

While at it, arrange the local variable declarations in the reverse Xmas
tree order...

Found by Linux Verification Center (linuxtesting.org) with the SVACE static
analysis tool.

Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

---
 drivers/usb/storage/isd200.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: usb/drivers/usb/storage/isd200.c
===================================================================
--- usb.orig/drivers/usb/storage/isd200.c
+++ usb/drivers/usb/storage/isd200.c
@@ -1283,8 +1283,8 @@ static int isd200_scsi_to_ata(struct scs
 
 	case READ_CAPACITY:
 	{
-		unsigned long capacity;
 		struct read_capacity_data readCapacityData;
+		u32 capacity;
 
 		usb_stor_dbg(us, "   ATA OUT - SCSIOP_READ_CAPACITY\n");
 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e8c20e3c-3cbe-b5c1-f673-0a7f22566879%40omp.ru.
