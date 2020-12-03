Return-Path: <usb-storage+bncBAABBK47UT7AKGQEXM5B32A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD152CDAFE
	for <lists+usb-storage@lfdr.de>; Thu,  3 Dec 2020 17:17:49 +0100 (CET)
Received: by mail-qk1-x747.google.com with SMTP id q206sf2354380qka.14
        for <lists+usb-storage@lfdr.de>; Thu, 03 Dec 2020 08:17:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607012268; cv=pass;
        d=google.com; s=arc-20160816;
        b=LbcrqiMncyodL0LlqnBGMtN7byK4HK1aiEVKtjH2mi51XawnrwGD4NZ3O8uc+6edG/
         CeL10b3lauEvwpKIay2jtlgAp2nwdDgdaMIK5lRHY8sFW2OM31yc8ovrB+xBeF9pjNoW
         i5Hd/IHMGY8RRGfEHUn4+3xYkAvvdaQur1jYQYEvD3xjUIg63kyLXy95M2FHW8YiAcBQ
         bRvA517lAIASTEuiE2rwW7WeBQrWUFOgOy8rRCrOyECOzM3+FFffgF/5zXaJWVy4rKTR
         s33dphZS0DdBr869cSmEk9RZ5gUCfQSpnOrcAKKF4kw0EPSpXADn/RgdHg6G+1nSIY4V
         Vlmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=wL46pN5Kwf4kWcKic9d3T6j68icquMXB/8SDBFJ/3dY=;
        b=MYmqOyd6uSgA4cnfNadmBG2aTnb/dQ90i5CNsGe63OXUDze3AkTV227NEbFHdkKmCL
         hl3p0YnSr4WeyillLH+TWHMOcvOBzi8Iw5Ga03MbLJ2RKu1EsIGbFxQF3TZuq3MkLL0Z
         TgY4oP9/5O6l1yyOGwys53gyPNe3QrNhZYnzEnz02vWZWAWNERPuv2AlV2NOxJvJV4uw
         5be7tQHBgFEeAy8aU9LuMWq7viJdkowN7AiGlZn5USnW+NiGc6ABUx1nIGdAzLcIvHOy
         uU59/7+teu1ag/7R8fpotXLl3OU2JMxGjJqdVn4M7vAmNLptVxGqFrjxLRRXHCZ9DF3I
         Ql3w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of info@metux.net) smtp.mailfrom=info@metux.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wL46pN5Kwf4kWcKic9d3T6j68icquMXB/8SDBFJ/3dY=;
        b=KhqNal/a59XsrjqyzmVFis7sGq0Yp09rZ2FFiVBOxWl1zwaSsg75Dn8tcCDCN34CRA
         r5ViW3urDx2cJlgwdkvr/T6ptezhV+OgNnQBOFyrPcBRt+8Rpujlm0Vs1vslLCWj4DY6
         8Xh48/nsdgvg9R7ZpPHN77gvtV60WYVF1fsVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wL46pN5Kwf4kWcKic9d3T6j68icquMXB/8SDBFJ/3dY=;
        b=blHQne1HOHgtKkZbkv7htX1fla/UhL/7h5vsL73cD7/pSHCMxdR3aPtK3aVIt95lLu
         HUxtjG9ifWlwCXoSrGNrdKrLOUuZn5aYONkyJd+W4VPXzpHC74hrUR37qmYTSoV6eT8S
         8pA1gbRkT4MwI7eeKqKyb2rE4boVZ/G//6FHpObdV/xlqjIs4GW/fDO4dGcXYm89kYAx
         PqFGi4Kb5DmasF/HC5SlSwOEDc97hP/CRm4234RV59lmVyCRqYWHSwqy5hzezzLkLtcs
         PdGUWi8V41EXU7hsf3NHVfPdzVkgmCYp0odPX6Z4EiCB7zCjHwYQErZSg95tpgQBm66N
         mcSQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5313eP1bivuiq/qb9howDgssDuBW2EXfr1FY/oDC5kYOK6GlK8Zt
	Pnt/L5zsdtvIfX9lODI5J03IIQ==
X-Google-Smtp-Source: ABdhPJzv2f7x3mNrZluAgRkbTHUOARCkPxOzX9JOixbVZnUsSnQYBe4UvQQU/o29O+4BNwTo9E5I5A==
X-Received: by 2002:ac8:c2:: with SMTP id d2mr3953180qtg.207.1607012268044;
        Thu, 03 Dec 2020 08:17:48 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:36ea:: with SMTP id f97ls2157088qtb.4.gmail; Thu, 03 Dec
 2020 08:17:47 -0800 (PST)
X-Received: by 2002:ac8:58c7:: with SMTP id u7mr4009001qta.54.1607012267679;
        Thu, 03 Dec 2020 08:17:47 -0800 (PST)
Received: by 2002:a37:56c3:0:b029:169:4fb4:6593 with SMTP id k186-20020a3756c30000b02901694fb46593msqkb;
        Thu, 3 Dec 2020 06:11:18 -0800 (PST)
X-Received: by 2002:adf:eb88:: with SMTP id t8mr4084234wrn.105.1607004677510;
        Thu, 03 Dec 2020 06:11:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607004677; cv=none;
        d=google.com; s=arc-20160816;
        b=hSQ41Y1v4BTzGh15N96/jwaWga/cLHWaHvfGJaMsIYB0tcsMak6r5NHWCEzjHhNZ1d
         40chVXcUN/Dsv4gfxNH/50OePOmcR2pqphHasASBVtbgkNOWt8JU61jVb8zKFEmx3g5Z
         PVZ0sB6Bvs3XYU2TWcmaqVM8nbbMCf5nro6TFy7pq+S5TxOZ9lz1W6CWWUaHTeqAiBna
         pC/axiPBHC0Zt+VweIRmCinPjizmcPqit9kwl2LSkgUNC/jXMDy3L+PN/8xY6BpzcVlC
         AXyqY5WknFw+NV/PZNzuuT95NmCXBgwqsAPOzQRSp4SEnwzs5D7FzU5ZToM6qaQsrlL3
         VWyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=Jzb6VOKq0K5ZwXVwfsOOiSOYgWYmEvFyYV62hn8v7r4=;
        b=uZkwm5r5d19SDoz9SWiGzS3x21K92/PvnVfx9AG5yI8xg42F4QJhOVQVmwZhAM5Bjh
         Ct+Zkj6+ac7xT3pv15ntDzPRpKr1xu2tg5qdGCxL8Ol7A1SnzaZWPNowhEYnWljwA2Ve
         t+d8DopGzHKeE+VyXgdK7Cb/MLdK3nEdAd0r7cFNPuVS1P+0NpD6EZ5zy3DJ207KTRRH
         ppnf1FwCu2/O3icAN0C6qx18nAKN9OH+sg6GYxI56IBhdHy2NHlWKij56MEdEZIr6oV3
         K0HQoWuAa9fDX1quYxUaINnTIPii5W+tbKec23OZcmITWNYvFpT8cAWT/6DZ6aPwwD5M
         xROw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of info@metux.net) smtp.mailfrom=info@metux.net
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by mx.google.com with ESMTPS id d11si1948145wmb.153.2020.12.03.06.11.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 06:11:17 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of info@metux.net) client-ip=212.227.17.24;
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MBDvU-1kt3L02W7C-00Ckxa; Thu, 03 Dec 2020 15:11:16 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Cc: stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH] drivers: usb: storage: prefer pr_*() macros
 over bare printk()
Date: Thu,  3 Dec 2020 15:11:15 +0100
Message-Id: <20201203141115.27460-1-info@metux.net>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:CshpX7hZEewVcaFB8kcooUP1ZHO0PPNEYfdAveGlqlWiHRjsd8L
 Y7OGyOKqjyXHAFaPdeRJ4qTRI+GFJDqW45gwX50pBYrwZnL7AXD+40fn1rTXSRJjsX3dI61
 ULqs5bDcz1NLcMrkTqG5okvsg8hpZFzTAZO8uqplA6KTv/2RGwBi+khEPPIJmm7z9DwYG69
 ktz+8/cI3k0+pCPniXhYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vRNhfSVrySI=:bdtI/6JUDpCUBwWju7l8q0
 MkZE0NAbLCLkdoBSPQuJZwC8OYzXBZpeYx3faVBRdpT83DDiyNffq+QYdjpUtd/nNQiJ3FQAu
 0nNkLoLBmvwFMtvFJ0ntmTV+ugxUBEojDbFZ93Soxdw7lW6ZNf4pk2vkeXWaK7bkFdyn2+RwG
 sNP2g2D1W1vbp90hZxQBo408L96vHdakrv1Sbu21bl2JE8NIpxqpBMTeDmWP5MOL44U4XJZNp
 h3kJQS8RivpxXgkL7Hemh6RYVuJiHuNRXuX+SqgbplVLRcuYXaleWDNKy5Hctn8VExujCUj5c
 MU8y2VPEepOWuxHLs51+M5y0s/l8/zSgRIcoRu9KM1ecIM9iWDVaLnpFADfOnbO6PaTnGjWEl
 j7yCAgsddi3kZCijfvE2I4d+cclMm8K4z+hDN5viySqfY2XMk3OqcDSOdFc7X
X-Original-Sender: info@metux.net
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
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

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 drivers/usb/storage/alauda.c     | 23 ++++++++------------
 drivers/usb/storage/ene_ub6250.c | 20 ++++++++---------
 drivers/usb/storage/freecom.c    |  2 +-
 drivers/usb/storage/sddr09.c     | 46 +++++++++++++++++-----------------------
 drivers/usb/storage/sddr55.c     |  7 +++---
 5 files changed, 43 insertions(+), 55 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 20b857e97e60..4453238da87e 100644
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
+		pr_arn("alauda_write_lba: Out of unused blocks\n");
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201203141115.27460-1-info%40metux.net.
