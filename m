Return-Path: <usb-storage+bncBD6LRVPZ6YGRBP5WQOXQMGQEKBQ2CFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 5857D86D32F
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 20:30:09 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-42ec5e810ddsf1556061cf.3
        for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 11:30:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709235008; cv=pass;
        d=google.com; s=arc-20160816;
        b=mcNKEWQu3eZ2JJCnqM2zmvuMdwn1iIxCKvWAbVecsGGNuK/9mlVtXJxYeCS6vwT97p
         F/istMNoL1s+nwHqJWPjtnwU1iXe9pthPWIdi8kjmjrH3G2rf2WMN0AT3Y/BgKtNku4d
         8oUQ5yHa98rzny9fyps/niw12b5J4W0StL7+cBjT6yqK/2q1sOOAHuFybc00bqbTxgfX
         9BWhAnw+EienBiImje0CHIpB006EeO2N8ZXDD/WiLnGccZ2eDHxZEbuYfUpK2QHc+D+F
         zF4y9CBvFSMQYlAZZ5BPRfcM5tIMsYY3nZvxnJgRJqm1C50RiEO4NkKbGE63FriWO6PA
         EI5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vqs1FR7DChcYZnHBItHe6yHbPIENvj59AEeuNIPl+i8=;
        fh=xWn5qCXdYC9ywSGsBPtD/iTJq1btlF1ywFZkXgc8tHE=;
        b=d40tnwezIEtlm1At5zZlkq0uyQRji+JLaJtRKWx9hlYETd6JmhnXPYobhhAIxFWt/W
         QCo8PvtSFHHitiZaJRYA1ZD8soxL1T8kKjACRdlBkr0BC08qaiuT7pT9BxbRarv9+IoL
         c6ZNArc1ZkZ7H/cboQHenz87Wu6rRpj0anMxeRI3awq6E8oUq6RqA/My2JLC3pVB8PBx
         mJrsqZwf6vzy1Km+kNZTBUMNS4j+WlJkvHAf093TlgyBiw75EySARH5XUyDfYj9T0fv4
         ZvL6k9Dw6H878nJnM7DO1oAingcBJ2Yh33dUNSkzQ/e/CfPBgkkmkvP8L+5724sRWYba
         4e2Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709235008; x=1709839808; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vqs1FR7DChcYZnHBItHe6yHbPIENvj59AEeuNIPl+i8=;
        b=KE0b+M6aFeymcUBsQvKDro5maQlcdj3hysiELbrBb6jf3M7Mj7ooSxQsMCq/E2PePP
         z5pEzw3c17nVkx4DQtlRNPV7gPJ/hqtWu7Lp1oKzW0Upgh9Mm+Ah6i28T74P+64RlS6b
         sqGFfSMfyZsp7Wqeur2eqvC00knOqyjshqXB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709235008; x=1709839808;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vqs1FR7DChcYZnHBItHe6yHbPIENvj59AEeuNIPl+i8=;
        b=R0daYGAKkdnMdB4s2z+k2NIoL+1bQHcj35V/cqURhi+q9K8Cc2hX2XY815c8uJ2p7P
         39SvHT0zaObt/uTLMRPS7XJuvhzVGmHNe0fDSDjRBJEl2b3sF/IBZ5KmuJAtU3+Sm/cF
         P1TuFNaSuM1wSJlCfKVix76lwQWS/zYnvOrXdal/FR8+eHmyEbCLLQl8spjq22on6Bwu
         KLrEj7ttl0BM6m36XLIzz+8+UzATER6zVOe737QGROHUFOg/B5gBIBFuPyafY30FrK+I
         wMKXCZVUWmHMwnPyjHDrdDODNrhuM5V7iIKWLBb88mv5jubjTtwImSS4c5aaOsDNw40o
         Lmmw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW7CsSeg7hw1V3Dxwni9ZJOb3RijVUROqsfP+vKaB8JjRQPoIQa/LS6qKbzgmIhtM+Mgch1XvY6Ji+BD7KiOl4vtDXfSuaakR0Z
X-Gm-Message-State: AOJu0Ywk39lXV4VUG9iYg9kE+Al3TJ9H9vPUqbBHEt53pwVHaoKaEIOy
	8CaCuQn8fHMsPpKNF5XN8ZiYEg0uuvh7QpsSETvh2JbPchcwwLvz1qV276YeGp0=
X-Google-Smtp-Source: AGHT+IF+QmlMUHUbNfrD2kv+iDjML6AmC07y8TOQtiZM/zf7m6a8QeErTQd5XG5kXJCXWcYj9Os99Q==
X-Received: by 2002:a05:622a:64b:b0:42e:c64f:91b2 with SMTP id a11-20020a05622a064b00b0042ec64f91b2mr363389qtb.17.1709235008095;
        Thu, 29 Feb 2024 11:30:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5c15:0:b0:42e:80e2:aad9 with SMTP id i21-20020ac85c15000000b0042e80e2aad9ls1757027qti.0.-pod-prod-04-us;
 Thu, 29 Feb 2024 11:30:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVPwgiDsrQqLnY7OpiaRJ4xhPn8JBcZvYLMP5s31PxohCd5BraQ8RcYAw8bz/3hEFJOOObNq5IY5ihhoFN0X9Z1BFz+nPVig3/JflyPALEW5kCk+pQ=
X-Received: by 2002:a05:620a:1a0a:b0:787:2d2d:1791 with SMTP id bk10-20020a05620a1a0a00b007872d2d1791mr3942105qkb.10.1709235007133;
        Thu, 29 Feb 2024 11:30:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709235007; cv=none;
        d=google.com; s=arc-20160816;
        b=H6MCjSah4LIDam0XRnRyy/84yl7qwsOEgODxfti20aYl3tu11WegRqxF9NvnKoFss6
         /KXmDYuLA+09mXsNgkmQfGnB2KhNbIJ1kjLw4xYOMqmcVYdfZw9F3rqfZrVPKYMk7Lfl
         d9ViD+QTMulNEIdQyLTh8hngKYxG+sFut3BuByr2Fz4G2DURgr0gHUtteAO57S+E1sje
         8Z37EI2lb3aO+P8ofqx72yFWyIDoVAX00RMfdFXV4lDAhT37z9akMlt4vIQHb1HcL4DF
         bGvAc/HxiikklqUrlQEzjALjsIB2AcMXjQqwjlVNKXVyAPyKUbqfNLciuTVsJoASR65H
         cGTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ICSB4xeDLeqFBFTH6yl+oSQ7QOnAEYnWtnT9I+eXmYI=;
        fh=0Y+E/WOvavyGJiV9+Dsjp/9pROdIE6oM6qmTFjjNljQ=;
        b=BN/MzRS2ziI2FEtjZSgdjYn503yoiti+vro+5Bc7VIL90UuvJZsIRLouhiCLmBPdZ/
         +3l6PMOm5YHCmcurJ6sSwLjy9BS9Qat4+g1+FteOP129AJbZkMtqF/qque0ottkkrreE
         q/PX5OwCDhj5zhr2P7qE+DDRA/9RSq5RGqCnRfRg3GBoOJHxQGhT2fVrxSiXSpg4SCGh
         S7ZzGwaztbTg9CJFCeNV5PvB3aoPj9juGwrXWPFsbG2b/XaHuK2Pi4d+AQJhiIz+c2R3
         mrqU30s0C0FQHtDHtPZirKHbN0awzJobr+DFCatB6TVGhcW6awPkTZiCcXiPZQQ2JUKX
         5GpQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id u7-20020a05620a454700b00787dfab7d41si2217317qkp.63.2024.02.29.11.30.06
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 29 Feb 2024 11:30:07 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 12670 invoked by uid 1000); 29 Feb 2024 14:30:06 -0500
Date: Thu, 29 Feb 2024 14:30:06 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>,
  bvanassche@acm.org, emilne@redhat.com, linux-kernel@vger.kernel.org,
  linux-usb@vger.kernel.org, martin.petersen@oracle.com, nogikh@google.com,
  syzkaller-bugs@googlegroups.com, tasos@tasossah.com,
  usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH] USB: usb-storage: Prevent divide-by-0 error in isd200_ata_command
Message-ID: <b1e605ea-333f-4ac0-9511-da04f411763e@rowland.harvard.edu>
References: <380909e4-6e0a-402f-b3ac-de07e520c910@rowland.harvard.edu>
 <000000000000102fe606127a67f6@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <000000000000102fe606127a67f6@google.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

The isd200 sub-driver in usb-storage uses the HEADS and SECTORS values
in the ATA ID information to calculate cylinder and head values when
creating a CDB for READ or WRITE commands.  The calculation involves
division and modulus operations, which will cause a crash if either of
these values is 0.  While this never happens with a genuine device, it
could happen with a flawed or subversive emulation, as reported by the 
syzbot fuzzer.

Protect against this possibility by refusing to bind to the device if
either the ATA_ID_HEADS or ATA_ID_SECTORS value in the device's ID
information is 0.  This requires isd200_Initialization() to return a
negative error code when initialization fails; currently it always
returns 0 (even when there is an error).

Signed-off-by: Alan Stern <stern@rowland.harvard.edu>
Reported-and-tested-by: syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com
Link: https://lore.kernel.org/linux-usb/0000000000003eb868061245ba7f@google.com/
Fixes: 1da177e4c3f4 ("v2.6.12-rc2")
Cc: <stable@vger.kernel.org>

---

 drivers/usb/storage/isd200.c |   23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

Index: usb-devel/drivers/usb/storage/isd200.c
===================================================================
--- usb-devel.orig/drivers/usb/storage/isd200.c
+++ usb-devel/drivers/usb/storage/isd200.c
@@ -1105,7 +1105,7 @@ static void isd200_dump_driveid(struct u
 static int isd200_get_inquiry_data( struct us_data *us )
 {
 	struct isd200_info *info = (struct isd200_info *)us->extra;
-	int retStatus = ISD200_GOOD;
+	int retStatus;
 	u16 *id = info->id;
 
 	usb_stor_dbg(us, "Entering isd200_get_inquiry_data\n");
@@ -1137,6 +1137,13 @@ static int isd200_get_inquiry_data( stru
 				isd200_fix_driveid(id);
 				isd200_dump_driveid(us, id);
 
+				/* Prevent division by 0 in isd200_scsi_to_ata() */
+				if (id[ATA_ID_HEADS] == 0 || id[ATA_ID_SECTORS] == 0) {
+					usb_stor_dbg(us, "   Invalid ATA Identify data\n");
+					retStatus = ISD200_ERROR;
+					goto Done;
+				}
+
 				memset(&info->InquiryData, 0, sizeof(info->InquiryData));
 
 				/* Standard IDE interface only supports disks */
@@ -1202,6 +1209,7 @@ static int isd200_get_inquiry_data( stru
 		}
 	}
 
+ Done:
 	usb_stor_dbg(us, "Leaving isd200_get_inquiry_data %08X\n", retStatus);
 
 	return(retStatus);
@@ -1481,22 +1489,27 @@ static int isd200_init_info(struct us_da
 
 static int isd200_Initialization(struct us_data *us)
 {
+	int rc = 0;
+
 	usb_stor_dbg(us, "ISD200 Initialization...\n");
 
 	/* Initialize ISD200 info struct */
 
-	if (isd200_init_info(us) == ISD200_ERROR) {
+	if (isd200_init_info(us) < 0) {
 		usb_stor_dbg(us, "ERROR Initializing ISD200 Info struct\n");
+		rc = -ENOMEM;
 	} else {
 		/* Get device specific data */
 
-		if (isd200_get_inquiry_data(us) != ISD200_GOOD)
+		if (isd200_get_inquiry_data(us) != ISD200_GOOD) {
 			usb_stor_dbg(us, "ISD200 Initialization Failure\n");
-		else
+			rc = -EINVAL;
+		} else {
 			usb_stor_dbg(us, "ISD200 Initialization complete\n");
+		}
 	}
 
-	return 0;
+	return rc;
 }
 
 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b1e605ea-333f-4ac0-9511-da04f411763e%40rowland.harvard.edu.
