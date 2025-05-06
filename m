Return-Path: <usb-storage+bncBD4N5C5IZAFBB3OI5HAAMGQEB6ENZOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 1651DAACE25
	for <lists+usb-storage@lfdr.de>; Tue,  6 May 2025 21:35:22 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id af79cd13be357-7c543ab40d3sf337124585a.2
        for <lists+usb-storage@lfdr.de>; Tue, 06 May 2025 12:35:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746560121; cv=pass;
        d=google.com; s=arc-20240605;
        b=ag7SciB5lPpGXfjFlBa9GONyh1qW8wOc3hy68WUJhNsd6sGKlFC9UZ7wF0SWeu3GzH
         YkLgX2GIL6thppKdAmtTMyhjTmdKnuImQ6SkhDYcyIPf6TkLtMzXQO9BQPkaE28MAlfF
         PolKdbZL05CU9rC9W0gYCfkkJGuJt0dsvuB3vLkoCK5Pu1/K4kwgcvHuuWhMrq+ktOBk
         AVyZC2LeHCplLJ+KAvrLIGRC3iseOGHmuG3u1mQkZsjBV+zq9scuHJbL9DQWDKLWgxKk
         BfrFrpQVPye2ksbogcb6f+TBk1sC8UFX90rf5cxpOvKzDbsr/AK9Gl3/W0Zf++KMBkNq
         s/tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=TLayJTUlX9z91M+G0+RLAcdxS/Zbz0W5DH5E7Ezkz1E=;
        fh=80kVwD0d7g2Cie3CvmS0w0Zl901nKIOP1ST0pH60AKE=;
        b=HxyjAFtWZL9B0domXEcaUyms1oDBWChuE7nZT/A9RAzsH+5+sgOnILkiMRvodXBUd+
         1e9q1RJUCTpYzlBi2JxbTgHAJDol2CnlqOfmdJBGNWNyEaLcg9swI+PrAyDZmF+X7Bk+
         TDi0XFSuP7d1KrSviuqXopl6ckHG0e7bBPV2PhsZCGkyZwbBsjN59z1eb3X5Ohc3MfXZ
         EVKASGHbjXIudnAilDwTY98uj6GEl4d6eRRK3LFYGtG4sI78ypeEoUSXBc0DejSDmwqU
         K6AQFjOS60mKVJTJSoTvi8KI5gAhGTZoRWl4q6B6/WUgYcF/EUJ/W6TnD46ikcqpKJ9L
         Irow==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@jakerice-dev.20230601.gappssmtp.com header.s=20230601 header.b=h20A4G2I;
       spf=pass (google.com: domain of jake@jakerice.dev designates 209.85.220.41 as permitted sender) smtp.mailfrom=jake@jakerice.dev;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746560121; x=1747164921; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=TLayJTUlX9z91M+G0+RLAcdxS/Zbz0W5DH5E7Ezkz1E=;
        b=elmfGXllTrxp0g1053keUMYymw+E6P+qFB3EAHW/lRcKHa8cQN6xwCUv6Kk90ckIeo
         LSxbe9wAQkgIiGpZfz8i7hSu9GgZ55pCX73nVAWYLkhs6TOEYxVDNVSh318+7Kc8Quwc
         0ton5k4eAi9y+VU8ldo7WW3aVWOwXpYNaj6S0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746560121; x=1747164921;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TLayJTUlX9z91M+G0+RLAcdxS/Zbz0W5DH5E7Ezkz1E=;
        b=aL8Z/6VKl+H5mREotGLjiE65VJ2OPX9wY8qwng5NrnkM+Ve/1C92tp8UlxmJbcCsNe
         GG6s/KHLywsEUIg9fACip58E30VS85QajwN1zCdEQB4Znxar45ju6d4If6yjI+hCqObR
         OOOsJ9+AcjkLTYN+RxTeEyRMBYZMnCp9qTIAVhMIhefyMFpeHxQPgSd5bdY6ofnrdDTS
         lFxJSBFW1z6xL1ZQg3Rx/+mvzDZnxw3L1S094FYqe4wJd/avXuL8cQqlg/MUkSOIIo0t
         rkNz8mN1HGsJqJi703TwiGy2H01ZtTvbia+0m7iYGi9cOT6PXbSmxHuPwV8ZqxQYTUtp
         94Lw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUK1w0rkmgi74sP+2oeh1V86+Eev2DFNEE3uiHJEjzx5IeO+ZRO+UQMFk3KnVqtMpmxaUXASQ==@lfdr.de
X-Gm-Message-State: AOJu0YwLn5g0w+N1D2Ql44gUQofx/7cXN9gwC+ys1p4HPxTwqyalZgfn
	/HghsrtZ+tnG0q5tiQJbP5/+R42SB7hDap24XxhOGC5aupJjkFGgOwLF3ppqlSQ=
X-Google-Smtp-Source: AGHT+IHlBwnlZVIqAr7mnTl5hu+/oleO9I3ZJXzY/VIcvXzvOWPjiBFtKMQoD+E6MXU1f8sZ2sxaww==
X-Received: by 2002:ad4:5c4b:0:b0:6e6:6713:3ea8 with SMTP id 6a1803df08f44-6f542a16398mr7702456d6.23.1746560109678;
        Tue, 06 May 2025 12:35:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBHif6DmejuzTZyS0X82vKgVhgqPOoXp5fmb3jJvbA8jIA==
Received: by 2002:a05:6214:248a:b0:6e8:fa98:8af6 with SMTP id
 6a1803df08f44-6f5084e1c07ls22661616d6.1.-pod-prod-03-us; Tue, 06 May 2025
 12:35:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXbIUMXmqAVwAKYD30VfFFIUYk4esIc2EeQVQtt5L6bWxeDIVZ4GRYoXXT5mwO6B7JMPRWJLcF/MFJh5w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:4592:b0:7c8:e67b:8076 with SMTP id af79cd13be357-7caf741986amr85500485a.50.1746560109106;
        Tue, 06 May 2025 12:35:09 -0700 (PDT)
Received: by 2002:a05:620a:8415:b0:7b6:d2da:e6ae with SMTP id af79cd13be357-7caf78d4af6ms85a;
        Tue, 6 May 2025 12:15:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX7kAObwGvbSunTh+ZuMv0Zx2NHTK/hKUSWoU/mnJ22EhNZPmhWIh2o08sAusgb+k2jrDMwHxJNmDDYrA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:439e:b0:7c5:5883:8fbf with SMTP id af79cd13be357-7caf739b2f3mr89743585a.21.1746558947816;
        Tue, 06 May 2025 12:15:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746558947; cv=none;
        d=google.com; s=arc-20240605;
        b=KbW8NZs3eMNeaepTeUkimo08T09YbtSUAWpPz6Tf9cmF25y61kR42NE3RHq4v1stxC
         2p/lar3vwJX5humI894ny7vJrxc4lDf6+x2KjszNGxhw0npb9G1K0M0lkNrwRwW0d/jh
         2q85+KC//VFlZyL1QGeO7iZAJPCjZSM8VsMt5hZKU+k8CUWEaAGBGGazE7lRLlq1D2sC
         iHY+8/kFY+9muaZsZCOcoJqfMtAZNCLXp4hCbPizx8W/UDzvMydoMOgolmT2lmOetBL2
         1fcioRvnxD0prl+V0gpj+4D12Wj6+XzxvcJNex5iBvoJx2hKBSkcKucWL9BP5n0eatgE
         XM7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7taY46IGc0mDFv9NltJivBJOSYvv+pAntv3/xJ8NA4w=;
        fh=HXH7UsZCs0fXZ4wjWZmDA9dYgqDkgfM6AfYmOTtyIQA=;
        b=W/Zmh/0iuf8jizb0TTa8f5U6syb/I5G9OfEc5eDQDBrYkQvQOj50g79o3E6nhAiFE3
         jCw1yPSIrr+8trkr4vOMS46Qh3MLJ+YkqgbtCmXw1tP0n8kzEORApnkSNwAwBvCVtrx6
         k4lwwubTiHBQfTimkRYuuuP8K7rEmjLneLmPxN0pzxi25fq53iY8/OzADO0Tn0TauZM9
         fIdBaRwg3XAVy780BVTFYiqkuBxhAf1zWEUDUYwoJey2bkfvlRk5b/Y2nBIL4yPRmfdR
         9TicAx8pG5GKurbox8l3vQZP5Ww/421CxNcpNPsx0xtno/b++KnZanGJq4c7hXMBiMQl
         3/fQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@jakerice-dev.20230601.gappssmtp.com header.s=20230601 header.b=h20A4G2I;
       spf=pass (google.com: domain of jake@jakerice.dev designates 209.85.220.41 as permitted sender) smtp.mailfrom=jake@jakerice.dev;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7cad23c5ab0sor958783585a.5.2025.05.06.12.15.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 06 May 2025 12:15:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jake@jakerice.dev designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVX09AAjBRGwO/WH7wlysg/HxD6fmb9APfCmM+dD5wh1K8EpygztJOjeIx6cTcIecUimnE69mEVVaJUtA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnct2obsgjnGtRTrPa06wJ5ed7m8jPHpxd/Qy16JneeZRkzCB49NHFYNUZKkv49A
	naZUTNwaX8CY3Ie20zv9eviGuutRBTh8NagXuLFBWB/lZ/O2fja1H8pYvGDNKA45syHSnOthWGh
	UlwHp3FQ5MbbPNmo2WYZGTAImblHUWl9ejfJYCaS6ep4NtapEEL/DmR2Vyw5JjZsIjIKg/gK6Na
	4CmBOD35RV3sB6E3U+fiUE/iPswLOWBqqVRVzH5qh/B/TLQa6cOddYiMMGHNPG2pXwC0SKBxDPL
	auc7ckTmlCQoPgg9oNaj5uSbofRBulTJrE1TdbJm6Ng8Vfsj7EOTW3xUzIn/gTJxK/dOnnwlnQ0
	AnZsonCKa/w==
X-Received: by 2002:a05:620a:40c7:b0:7c5:af73:4f72 with SMTP id af79cd13be357-7caf74020bbmr76661085a.42.1746558943029;
        Tue, 06 May 2025 12:15:43 -0700 (PDT)
Received: from localhost (c-67-162-238-230.hsd1.md.comcast.net. [67.162.238.230])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7caf75b884csm14778485a.86.2025.05.06.12.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 12:15:42 -0700 (PDT)
From: Jake Rice <jake@jakerice.dev>
To: linux-usb@vger.kernel.org
Cc: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Jake Rice <jake@jakerice.dev>
Subject: [usb-storage] [RFC PATCH] usb: storage: Add blockbuffer ptr to info
 struct of sddr09 driver
Date: Tue,  6 May 2025 15:15:31 -0400
Message-Id: <20250506191531.3326-1-jake@jakerice.dev>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: jake@jakerice.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@jakerice-dev.20230601.gappssmtp.com header.s=20230601
 header.b=h20A4G2I;       spf=pass (google.com: domain of jake@jakerice.dev
 designates 209.85.220.41 as permitted sender) smtp.mailfrom=jake@jakerice.dev;
       dara=pass header.i=@lists.one-eyed-alien.net
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

Hi all,

This patch updates the sddr09 driver to allocate a reusable block
buffer. Unfortunately, I don't have access to the SDDR-00 hardware
(which I know is pretty ancient), so I'm requesting testing from anyone who does. 
Please let me now if the patch causes any issues or improves performance.

Best,
Jake

---
Currently, upon every write the block buffer is allocated and freed which is
computationally expensive. With this implementation, a buffer pointer
is added as a member to the info struct and allocated when the card
information is read. The buffer is freed during desconstruction if
necessary.

Signed-off-by: Jake Rice <jake@jakerice.dev>
---
 drivers/usb/storage/sddr09.c | 60 +++++++++++++++++++-----------------
 1 file changed, 31 insertions(+), 29 deletions(-)

diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
index e66b920e99e2..1d75b1a88c17 100644
--- a/drivers/usb/storage/sddr09.c
+++ b/drivers/usb/storage/sddr09.c
@@ -255,6 +255,7 @@ struct sddr09_card_info {
 	int		*pba_to_lba;	/* physical to logical map */
 	int		lbact;		/* number of available pages */
 	int		flags;
+	unsigned char   *blockbuffer;
 #define	SDDR09_WP	1		/* write protected */
 };
 
@@ -850,7 +851,7 @@ sddr09_find_unused_pba(struct sddr09_card_info *info, unsigned int lba) {
 static int
 sddr09_write_lba(struct us_data *us, unsigned int lba,
 		 unsigned int page, unsigned int pages,
-		 unsigned char *ptr, unsigned char *blockbuffer) {
+		 unsigned char *ptr) {
 
 	struct sddr09_card_info *info = (struct sddr09_card_info *) us->extra;
 	unsigned long address;
@@ -890,13 +891,13 @@ sddr09_write_lba(struct us_data *us, unsigned int lba,
 	/* read old contents */
 	address = (pba << (info->pageshift + info->blockshift));
 	result = sddr09_read22(us, address>>1, info->blocksize,
-			       info->pageshift, blockbuffer, 0);
+			       info->pageshift, info->blockbuffer, 0);
 	if (result)
 		return result;
 
 	/* check old contents and fill lba */
 	for (i = 0; i < info->blocksize; i++) {
-		bptr = blockbuffer + i*pagelen;
+		bptr = info->blockbuffer + i*pagelen;
 		cptr = bptr + info->pagesize;
 		nand_compute_ecc(bptr, ecc);
 		if (!nand_compare_ecc(cptr+13, ecc)) {
@@ -917,7 +918,7 @@ sddr09_write_lba(struct us_data *us, unsigned int lba,
 	/* copy in new stuff and compute ECC */
 	xptr = ptr;
 	for (i = page; i < page+pages; i++) {
-		bptr = blockbuffer + i*pagelen;
+		bptr = info->blockbuffer + i*pagelen;
 		cptr = bptr + info->pagesize;
 		memcpy(bptr, xptr, info->pagesize);
 		xptr += info->pagesize;
@@ -930,7 +931,7 @@ sddr09_write_lba(struct us_data *us, unsigned int lba,
 	usb_stor_dbg(us, "Rewrite PBA %d (LBA %d)\n", pba, lba);
 
 	result = sddr09_write_inplace(us, address>>1, info->blocksize,
-				      info->pageshift, blockbuffer, 0);
+				      info->pageshift, info->blockbuffer, 0);
 
 	usb_stor_dbg(us, "sddr09_write_inplace returns %d\n", result);
 
@@ -961,8 +962,6 @@ sddr09_write_data(struct us_data *us,
 
 	struct sddr09_card_info *info = (struct sddr09_card_info *) us->extra;
 	unsigned int lba, maxlba, page, pages;
-	unsigned int pagelen, blocklen;
-	unsigned char *blockbuffer;
 	unsigned char *buffer;
 	unsigned int len, offset;
 	struct scatterlist *sg;
@@ -975,21 +974,6 @@ sddr09_write_data(struct us_data *us,
 	if (lba >= maxlba)
 		return -EIO;
 
-	/*
-	 * blockbuffer is used for reading in the old data, overwriting
-	 * with the new data, and performing ECC calculations
-	 */
-
-	/*
-	 * TODO: instead of doing kmalloc/kfree for each write,
-	 * add a bufferpointer to the info structure
-	 */
-
-	pagelen = (1 << info->pageshift) + (1 << CONTROL_SHIFT);
-	blocklen = (pagelen << info->blockshift);
-	blockbuffer = kmalloc(blocklen, GFP_NOIO);
-	if (!blockbuffer)
-		return -ENOMEM;
 
 	/*
 	 * Since we don't write the user data directly to the device,
@@ -999,10 +983,8 @@ sddr09_write_data(struct us_data *us,
 
 	len = min_t(unsigned int, sectors, info->blocksize) * info->pagesize;
 	buffer = kmalloc(len, GFP_NOIO);
-	if (!buffer) {
-		kfree(blockbuffer);
+	if (!buffer)
 		return -ENOMEM;
-	}
 
 	result = 0;
 	offset = 0;
@@ -1028,7 +1010,7 @@ sddr09_write_data(struct us_data *us,
 				&sg, &offset, FROM_XFER_BUF);
 
 		result = sddr09_write_lba(us, lba, page, pages,
-				buffer, blockbuffer);
+				buffer);
 		if (result)
 			break;
 
@@ -1037,9 +1019,6 @@ sddr09_write_data(struct us_data *us,
 		sectors -= pages;
 	}
 
-	kfree(buffer);
-	kfree(blockbuffer);
-
 	return result;
 }
 
@@ -1405,6 +1384,7 @@ sddr09_card_info_destructor(void *extra) {
 
 	kfree(info->lba_to_pba);
 	kfree(info->pba_to_lba);
+	kfree(info->blockbuffer);
 }
 
 static int
@@ -1585,6 +1565,8 @@ static int sddr09_transport(struct scsi_cmnd *srb, struct us_data *us)
 
 	if (srb->cmnd[0] == READ_CAPACITY) {
 		const struct nand_flash_dev *cardinfo;
+		unsigned int pagelen;
+		unsigned int blocklen;
 
 		sddr09_get_wp(us, info);	/* read WP bit */
 
@@ -1603,6 +1585,26 @@ static int sddr09_transport(struct scsi_cmnd *srb, struct us_data *us)
 		info->blockshift = cardinfo->blockshift;
 		info->blocksize = (1 << info->blockshift);
 		info->blockmask = info->blocksize - 1;
+		
+		pagelen = (1 << info->pageshift) + (1 << CONTROL_SHIFT);
+		blocklen = (pagelen << info->blockshift);
+
+		/*
+		 * If it has already been allocated and is changed 
+		 * (i.e. a new card is inserted), we want to free
+		 * it and reallocate it with the updates size
+		 */
+
+		kfree(info->blockbuffer);
+
+		/*
+		 * blockbuffer is used for reading in the old data, overwriting
+		 * with the new data, and performing ECC calculations
+		 */
+
+		info->blockbuffer = kmalloc(blocklen, GFP_NOIO);
+		if (!info->blockbuffer)
+			return -ENOMEM;
 
 		// map initialization, must follow get_cardinfo()
 		if (sddr09_read_map(us)) {
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250506191531.3326-1-jake%40jakerice.dev.
