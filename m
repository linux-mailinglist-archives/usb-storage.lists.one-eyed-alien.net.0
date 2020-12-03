Return-Path: <usb-storage+bncBAABBK47UT7AKGQEXM5B32A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC1B2CDAFF
	for <lists+usb-storage@lfdr.de>; Thu,  3 Dec 2020 17:17:51 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id f11sf1906035qth.23
        for <lists+usb-storage@lfdr.de>; Thu, 03 Dec 2020 08:17:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607012270; cv=pass;
        d=google.com; s=arc-20160816;
        b=pj5FJhmm8W2uBoJPCrGZBLUFUIr0zJ/bGC01Pu/IAlxmut4jJ5C1OBkaeJL8hBnyI7
         0SvRMkRFT5sairNRybNYE/HL3aCcykFGZhBTg+P3t3NeCxYAU/bEXD3ur7sovL1W+AD3
         /d+kKEdRLOJEKctS41FYgmUC501JeMy/zQpSok19stvR5ENlab2vEmGIsFJ+uGGiZRTy
         sCJRWRD1Ljx05yGwxyq8SuXG8PP2s6h6TUKR8T//orsVxPQkYrIYCg1qcAiU/bEBx7h6
         5WXcP2tEDtUvyRw5HDdaZ9oblnyn9ibCmRCYpJA8n9sekfH/NNeNDWsxzRP2GWaB4Wle
         2Wrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=cAT1pBOGEcLBkaycGljcQcVGcIqFOvha9C9otruSAEs=;
        b=fbgWQr4jZoEL4j+/YeO28zNniBJtcSlUOuz9gPE3q8/7W6R1IM6kv8MAKnFLfhVzNj
         AeWr4oKy8E2Fr7O8yAV+tnkTn2qqfG2T47G0Oa1zFFDQGdwsCacmRZzMSbLzkHGeOO5z
         ooTE7vjo2v1aEklVmurHZ+v9/D/b4M7qzK3yVO+vrMcvb5F2zq+by2UAVGz9zzbByVJ6
         KwvAoPcy0SAk9tC1LsQzRbQopO4KmjPrumiE3lZO622yNU9Znm+sVguMDovLIyhDZvop
         3yBVs5Y3L7o9OlvN6jaY4c0655FsmXl6qaROi8kwVLyUX/iLQuwLPY/Hk23HgXUyH69N
         CORA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of info@metux.net) smtp.mailfrom=info@metux.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cAT1pBOGEcLBkaycGljcQcVGcIqFOvha9C9otruSAEs=;
        b=jYFo/AQP2CGiy0jov1KsaF7Mv789gX3vwWS/wuw7C1dnEL06RRiwX+dVVfXaZublyt
         Q8MWth2EH9Zxcu/A4oV/Xq11MItpjUlErlaUJ5hH3n5fp2E0Zw5XPZ0HT1tKw34VIwuk
         tJYUqR3vDxj6gDwRx7b13PMXxWKUo2EI3KnQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cAT1pBOGEcLBkaycGljcQcVGcIqFOvha9C9otruSAEs=;
        b=HvgDp97zqa3MsEMtpGTDEG7UNIrm9xUdtjcB44fplmCbxcAtqiJq6r+cOQdCeghFXP
         x2IFN4qjc3ALc/Q/udLVTiY+xj0SQVvrOCrrSvfWk24aAkNqBop0S5Bnny87jdu4+Ik3
         I9hA5Cbn4GyRdRjn+lFgqE6erKf4laW7w1qkagyX6CyDCVCXDZV7QzgJJWPzG5cbnWrP
         X2Kj211D7PeMET68DM5JPaWQjNkao8Dg0F6/+s+78h7OmjwRthhcxKHL82ng4Ds9f8hT
         TSforOKGgBiTqJdj2FoeO6OUJnXrDiWaPK8Tdk7k+C/6C/3aGqFWybxmN7uumt3vUShZ
         dwdw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533zIT6zq894VxSgYXaWzAIntTXfqXR3CNUv9yOfVRfF8a0aoVNq
	ptSCcJVvRik+lXZtDqKRqU5GBQ==
X-Google-Smtp-Source: ABdhPJz+X4+oYkEOIsn2YOFPuLU6mF0XEiTTZA6Zq2GG9VWuEXdEn1pww6ORkku7km3sCR8fvFeVuQ==
X-Received: by 2002:a37:77c6:: with SMTP id s189mr3652196qkc.87.1607012268148;
        Thu, 03 Dec 2020 08:17:48 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:a2d1:: with SMTP id l200ls2743024qke.3.gmail; Thu, 03
 Dec 2020 08:17:47 -0800 (PST)
X-Received: by 2002:a37:6712:: with SMTP id b18mr3627031qkc.340.1607012267757;
        Thu, 03 Dec 2020 08:17:47 -0800 (PST)
Received: by 2002:ae9:e504:0:b029:15e:d70c:89db with SMTP id w4-20020ae9e5040000b029015ed70c89dbmsqkf;
        Thu, 3 Dec 2020 06:16:36 -0800 (PST)
X-Received: by 2002:a5d:4ccf:: with SMTP id c15mr4001378wrt.237.1607004996162;
        Thu, 03 Dec 2020 06:16:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607004996; cv=none;
        d=google.com; s=arc-20160816;
        b=PCsw7ztiH8K+aNHTbWJovvE9VZ95w9lZFp3MbPTNevCOXS1tMFhEpiWMpX/cWJ6iUw
         rahaNvmZf8RAaVdPHdo0Y2IRcw6KGNFVUwElwP5FcM5csDd3y6qfTTvkTBGO1Z06aiMX
         99S6A/NzAo3udQB93qhX5ENs4bm/yj+CG4gmVTPvbm8+UVx+VPiYepvM7d6C5IaMUa7y
         5ytWSg+Gy3Xhsbaq+LjoiPnn5Zl26Dtvi8+oKUnB2wt1bR2ggJWmdhD1vePzoWzlsR3h
         y9ulXMILmYWinLah7UlumqM5ca80sT4SLCMWcyTUCC0NIkqjFXAx2lsr3idk4wiAUPc8
         t/SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=nLZgtbJDjelLhufd1EIMaYMs/SOxcLEkhq3f6oRezdc=;
        b=Hyb3wsVqwfihVpk5J/A/RXS/ihE7oQN2kCuQ5s8UV+dsoV/phv198wREjUMnUgF45S
         f6TRrJ7LmKQ+Ht5agfl8RCBswGMmPLDfLAMc5J0/FF9bfEccZjXClMNFA84KexpaJ+kZ
         x7fRR8iApuqg4NjPu17wj/8zFmTLpd7itJ5sof+xCfvJJuECnvTwb8yH4uUna24km581
         cQEZdd78s13P90a7Yu7cN81vUNOTSv7u/L38RLGdfpPCZdE4nAEV0ThOXKI+grqbdvBZ
         bzPR0FXF9wzlwEBY8FZL+70o8uND5ljmuEsZgeaGjwasypIkUjKuXW1/tQJ/YrEw5eqH
         8VOA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of info@metux.net) smtp.mailfrom=info@metux.net
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by mx.google.com with ESMTPS id v7si2269514wro.230.2020.12.03.06.16.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 06:16:36 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of info@metux.net) client-ip=212.227.126.131;
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MkpjD-1kJzeW1171-00mMlA; Thu, 03 Dec 2020 15:16:35 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Cc: stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH v2] drivers: usb: storage: prefer pr_*() macros
 over bare printk()
Date: Thu,  3 Dec 2020 15:16:34 +0100
Message-Id: <20201203141634.28850-1-info@metux.net>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:0IyzrSuvDJ28ReRID7/NC+13Le5/zAHShoe9Gkgsblo6jV8cwAH
 tBFIdnuRIyRAwNoESHedkxxxLEzn2x3c402jVwpou+Q5ihhCtknYuJYeqyWdKW8ESXju7aa
 SkNoXh3MNe2LZHduIQfZ7j83IUbmDsfvOrDChbVzgTcgPhStMW3CmjjU009V+fIHW80kwOj
 GM5R3gAH7fgug0NQSv2zQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YFCmvjg2gBo=:L1zbnf8nGQC32hQRUI17EH
 gufYq5NdVWuw3oMnMR2VwLCNcN0iuJr/kX6LnhcgrWFMIFAkVJ9Mna4lzAnbcKPmY3T2ayr51
 05NfkZU40MCEube9mm1ejS3VTsGYm7Ohnk4p6cCF9OSk4X9dGbZIdRU8BBOIRclISihIXys1i
 nCLI+dtF3hBFYg5iDl/iCzdxnLCq+X8WAyo/CgElL4C0joRYbf49RBlURtMyp/3sWNemcjUps
 O1xqDUwCRqBYsgBlJwMKW4cD2bqIfBjq/e8Ac4Hb9PVyE5ksFWU8MLWIIfOSqfp7uKSWpLDBc
 PeGjAVWYEJVLyhKT3TYKULgkWxm2T/1Di+LSkSaGqlMhzbPOOSi0Oz0EaRcYeKTkxzHZtAp/O
 53LOoeFiDrdQl5mXVJ+ig6zmD32xBEZ14S1tESQZEXybjsx0C8bEyh1scoMVw
X-Original-Sender: info@metux.net
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of info@metux.net) smtp.mailfrom=info@metux.net
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

pr_*() printing helpers are preferred over using bare printk().

changes v2: fixed ugly typo

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 drivers/usb/storage/alauda.c     | 23 ++++++++------------
 drivers/usb/storage/ene_ub6250.c | 20 ++++++++---------
 drivers/usb/storage/freecom.c    |  2 +-
 drivers/usb/storage/sddr09.c     | 46 +++++++++++++++++-----------------------
 drivers/usb/storage/sddr55.c     |  7 +++---
 5 files changed, 43 insertions(+), 55 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 20b857e97e60..5806f1bee471 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -622,9 +622,8 @@ static int alauda_read_map(struct us_data *us, unsigned int zone)
 
 		/* check even parity */
 		if (parity[data[6] ^ data[7]]) {
-			printk(KERN_WARNING
-			       "alauda_read_map: Bad parity in LBA for block %d"
-			       " (%02X %02X)\n", i, data[6], data[7]);
+			pr_warn("alauda_read_map: Bad parity in LBA for block %d"
+				" (%02X %02X)\n", i, data[6], data[7]);
 			pba_to_lba[i] = UNUSABLE;
 			continue;
 		}
@@ -643,17 +642,15 @@ static int alauda_read_map(struct us_data *us, unsigned int zone)
 		 */
 
 		if (lba_offset >= uzonesize) {
-			printk(KERN_WARNING
-			       "alauda_read_map: Bad low LBA %d for block %d\n",
-			       lba_real, blocknum);
+			pr_warn("alauda_read_map: Bad low LBA %d for block %d\n",
+				lba_real, blocknum);
 			continue;
 		}
 
 		if (lba_to_pba[lba_offset] != UNDEF) {
-			printk(KERN_WARNING
-			       "alauda_read_map: "
-			       "LBA %d seen for PBA %d and %d\n",
-			       lba_real, lba_to_pba[lba_offset], blocknum);
+			pr_warn("alauda_read_map: "
+				"LBA %d seen for PBA %d and %d\n",
+				lba_real, lba_to_pba[lba_offset], blocknum);
 			continue;
 		}
 
@@ -820,15 +817,13 @@ static int alauda_write_lba(struct us_data *us, u16 lba,
 		 * Maybe it is impossible to write to PBA 1.
 		 * Fake success, but don't do anything.
 		 */
-		printk(KERN_WARNING
-		       "alauda_write_lba: avoid writing to pba 1\n");
+		pr_warn("alauda_write_lba: avoid writing to pba 1\n");
 		return USB_STOR_TRANSPORT_GOOD;
 	}
 
 	new_pba = alauda_find_unused_pba(&MEDIA_INFO(us), zone);
 	if (!new_pba) {
-		printk(KERN_WARNING
-		       "alauda_write_lba: Out of unused blocks\n");
+		pr_warn("alauda_write_lba: Out of unused blocks\n");
 		return USB_STOR_TRANSPORT_ERROR;
 	}
 
diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index 98c1aa594e6c..3d3d42c44570 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -1957,7 +1957,7 @@ static int ms_card_init(struct us_data *us)
 	u32 btBlk1stErred;
 	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
 
-	printk(KERN_INFO "MS_CardInit start\n");
+	pr_info("MS_CardInit start\n");
 
 	ms_lib_free_allocatedarea(us); /* Clean buffer and set struct us_data flag to 0 */
 
@@ -2064,7 +2064,7 @@ static int ms_card_init(struct us_data *us)
 	kfree(PageBuffer1);
 	kfree(PageBuffer0);
 
-	printk(KERN_INFO "MS_CardInit end\n");
+	pr_info("MS_CardInit end\n");
 	return result;
 }
 
@@ -2076,13 +2076,13 @@ static int ene_ms_init(struct us_data *us)
 	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
 	u8 *bbuf = info->bbuf;
 
-	printk(KERN_INFO "transport --- ENE_MSInit\n");
+	pr_info("transport --- ENE_MSInit\n");
 
 	/* the same part to test ENE */
 
 	result = ene_load_bincode(us, MS_INIT_PATTERN);
 	if (result != USB_STOR_XFER_GOOD) {
-		printk(KERN_ERR "Load MS Init Code Fail !!\n");
+		pr_err("Load MS Init Code Fail !!\n");
 		return USB_STOR_TRANSPORT_ERROR;
 	}
 
@@ -2095,18 +2095,18 @@ static int ene_ms_init(struct us_data *us)
 
 	result = ene_send_scsi_cmd(us, FDIR_READ, bbuf, 0);
 	if (result != USB_STOR_XFER_GOOD) {
-		printk(KERN_ERR "Execution MS Init Code Fail !!\n");
+		pr_err("Execution MS Init Code Fail !!\n");
 		return USB_STOR_TRANSPORT_ERROR;
 	}
 	/* the same part to test ENE */
 	info->MS_Status = *(struct MS_STATUS *) bbuf;
 
 	if (info->MS_Status.Insert && info->MS_Status.Ready) {
-		printk(KERN_INFO "Insert     = %x\n", info->MS_Status.Insert);
-		printk(KERN_INFO "Ready      = %x\n", info->MS_Status.Ready);
-		printk(KERN_INFO "IsMSPro    = %x\n", info->MS_Status.IsMSPro);
-		printk(KERN_INFO "IsMSPHG    = %x\n", info->MS_Status.IsMSPHG);
-		printk(KERN_INFO "WtP= %x\n", info->MS_Status.WtP);
+		pr_info("Insert     = %x\n", info->MS_Status.Insert);
+		pr_info("Ready      = %x\n", info->MS_Status.Ready);
+		pr_info("IsMSPro    = %x\n", info->MS_Status.IsMSPro);
+		pr_info("IsMSPHG    = %x\n", info->MS_Status.IsMSPHG);
+		pr_info("WtP= %x\n", info->MS_Status.WtP);
 		if (info->MS_Status.IsMSPro) {
 			MSP_BlockSize      = (bbuf[6] << 8) | bbuf[7];
 			MSP_UserAreaBlocks = (bbuf[10] << 8) | bbuf[11];
diff --git a/drivers/usb/storage/freecom.c b/drivers/usb/storage/freecom.c
index 3d5f7d0ff0f1..43183a815a66 100644
--- a/drivers/usb/storage/freecom.c
+++ b/drivers/usb/storage/freecom.c
@@ -480,7 +480,7 @@ static int init_freecom(struct us_data *us)
 
 static int usb_stor_freecom_reset(struct us_data *us)
 {
-	printk (KERN_CRIT "freecom reset called\n");
+	pr_crit("freecom reset called\n");
 
 	/* We don't really have this feature. */
 	return FAILED;
diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
index 51bcd4a43690..da1114ee865f 100644
--- a/drivers/usb/storage/sddr09.c
+++ b/drivers/usb/storage/sddr09.c
@@ -868,8 +868,7 @@ sddr09_write_lba(struct us_data *us, unsigned int lba,
 	if (pba == UNDEF) {
 		pba = sddr09_find_unused_pba(info, lba);
 		if (!pba) {
-			printk(KERN_WARNING
-			       "sddr09_write_lba: Out of unused blocks\n");
+			pr_warn("sddr09_write_lba: Out of unused blocks\n");
 			return -ENOSPC;
 		}
 		info->pba_to_lba[pba] = lba;
@@ -881,7 +880,7 @@ sddr09_write_lba(struct us_data *us, unsigned int lba,
 		 * Maybe it is impossible to write to PBA 1.
 		 * Fake success, but don't do anything.
 		 */
-		printk(KERN_WARNING "sddr09: avoid writing to pba 1\n");
+		pr_warn("sddr09: avoid writing to pba 1\n");
 		return 0;
 	}
 
@@ -1146,7 +1145,7 @@ sddr09_get_cardinfo(struct us_data *us, unsigned char flags) {
 
 	if (result) {
 		usb_stor_dbg(us, "Result of read_deviceID is %d\n", result);
-		printk(KERN_WARNING "sddr09: could not read card info\n");
+		pr_warn("sddr09: could not read card info\n");
 		return NULL;
 	}
 
@@ -1188,7 +1187,7 @@ sddr09_get_cardinfo(struct us_data *us, unsigned char flags) {
 		sprintf(blurbtxt + strlen(blurbtxt),
 			", WP");
 
-	printk(KERN_WARNING "%s\n", blurbtxt);
+	pr_warn("%s\n", blurbtxt);
 
 	return cardinfo;
 }
@@ -1236,7 +1235,7 @@ sddr09_read_map(struct us_data *us) {
 	info->pba_to_lba = kmalloc_array(numblocks, sizeof(int), GFP_NOIO);
 
 	if (info->lba_to_pba == NULL || info->pba_to_lba == NULL) {
-		printk(KERN_WARNING "sddr09_read_map: out of memory\n");
+		pr_warn("sddr09_read_map: out of memory\n");
 		result = -1;
 		goto done;
 	}
@@ -1276,7 +1275,7 @@ sddr09_read_map(struct us_data *us) {
 			if (ptr[j] != 0)
 				goto nonz;
 		info->pba_to_lba[i] = UNUSABLE;
-		printk(KERN_WARNING "sddr09: PBA %d has no logical mapping\n",
+		pr_warn("sddr09: PBA %d has no logical mapping\n",
 		       i);
 		continue;
 
@@ -1290,30 +1289,27 @@ sddr09_read_map(struct us_data *us) {
 	nonff:
 		/* normal PBAs start with six FFs */
 		if (j < 6) {
-			printk(KERN_WARNING
-			       "sddr09: PBA %d has no logical mapping: "
-			       "reserved area = %02X%02X%02X%02X "
-			       "data status %02X block status %02X\n",
-			       i, ptr[0], ptr[1], ptr[2], ptr[3],
-			       ptr[4], ptr[5]);
+			pr_warn("sddr09: PBA %d has no logical mapping: "
+				"reserved area = %02X%02X%02X%02X "
+				"data status %02X block status %02X\n",
+				i, ptr[0], ptr[1], ptr[2], ptr[3],
+				ptr[4], ptr[5]);
 			info->pba_to_lba[i] = UNUSABLE;
 			continue;
 		}
 
 		if ((ptr[6] >> 4) != 0x01) {
-			printk(KERN_WARNING
-			       "sddr09: PBA %d has invalid address field "
-			       "%02X%02X/%02X%02X\n",
-			       i, ptr[6], ptr[7], ptr[11], ptr[12]);
+			pr_warn("sddr09: PBA %d has invalid address field "
+				"%02X%02X/%02X%02X\n",
+				i, ptr[6], ptr[7], ptr[11], ptr[12]);
 			info->pba_to_lba[i] = UNUSABLE;
 			continue;
 		}
 
 		/* check even parity */
 		if (parity[ptr[6] ^ ptr[7]]) {
-			printk(KERN_WARNING
-			       "sddr09: Bad parity in LBA for block %d"
-			       " (%02X %02X)\n", i, ptr[6], ptr[7]);
+			pr_warn("sddr09: Bad parity in LBA for block %d"
+				" (%02X %02X)\n", i, ptr[6], ptr[7]);
 			info->pba_to_lba[i] = UNUSABLE;
 			continue;
 		}
@@ -1331,18 +1327,16 @@ sddr09_read_map(struct us_data *us) {
 		 */
 
 		if (lba >= 1000) {
-			printk(KERN_WARNING
-			       "sddr09: Bad low LBA %d for block %d\n",
-			       lba, i);
+			pr_warn("sddr09: Bad low LBA %d for block %d\n",
+				lba, i);
 			goto possibly_erase;
 		}
 
 		lba += 1000*(i/0x400);
 
 		if (info->lba_to_pba[lba] != UNDEF) {
-			printk(KERN_WARNING
-			       "sddr09: LBA %d seen for PBA %d and %d\n",
-			       lba, info->lba_to_pba[lba], i);
+			pr_warn("sddr09: LBA %d seen for PBA %d and %d\n",
+				lba, info->lba_to_pba[lba], i);
 			goto possibly_erase;
 		}
 
diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index 15dc25801cdc..9b5102a1cd9b 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -487,7 +487,7 @@ static int sddr55_write_data(struct us_data *us,
 
 		/* check that new_pba wasn't already being used */
 		if (info->pba_to_lba[new_pba] != UNUSED_BLOCK) {
-			printk(KERN_ERR "sddr55 error: new PBA %04X already in use for LBA %04X\n",
+			pr_err("sddr55 error: new PBA %04X already in use for LBA %04X\n",
 				new_pba, info->pba_to_lba[new_pba]);
 			info->fatal_error = 1;
 			set_sense_info (3, 0x31, 0);
@@ -741,9 +741,8 @@ static int sddr55_read_map(struct us_data *us) {
 		
 		if (info->lba_to_pba[lba + zone * 1000] != NOT_ALLOCATED &&
 		    !info->force_read_only) {
-			printk(KERN_WARNING
-			       "sddr55: map inconsistency at LBA %04X\n",
-			       lba + zone * 1000);
+			pr_warn("sddr55: map inconsistency at LBA %04X\n",
+				lba + zone * 1000);
 			info->force_read_only = 1;
 		}
 
-- 
2.11.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201203141634.28850-1-info%40metux.net.
