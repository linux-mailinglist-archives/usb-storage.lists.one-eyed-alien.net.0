Return-Path: <usb-storage+bncBDGP7FPRWUNBBO6W2LCQMGQEVODODIQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DADAB3D511
	for <lists+usb-storage@lfdr.de>; Sun, 31 Aug 2025 22:06:21 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-4b31ba138f7sf26653091cf.2
        for <lists+usb-storage@lfdr.de>; Sun, 31 Aug 2025 13:06:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1756670780; cv=pass;
        d=google.com; s=arc-20240605;
        b=kw9wu2U1uxFYRiyRG1fRz+WEBB14DoxeVQjG2Q23+cyNNCTouiAlXqSk4M24jIBi+2
         PEMDusvgdQZOjyMfQKUeKJDGNeDTvd+6c8MJTTRGvn4jav5a7Fdu9+VcHhqttzlFoEF8
         1x6UEa2VewzBG/1suG9YAwGdi67le7hfvs73Iyf86qMJgM52ahPQPy89EdqVZCz0SDk/
         dDCo+6C9XCXQ+JFpDZvSx+AXh5+SP7HonOA4MG7ZlieYSBBWHFACWLIdawecHoofecMs
         /3Fm9zswD7Z2E/g1eikKZYuWxmbr31B+kJibiSyWiHSbUjNR9wu7+W1GZcHomUNOZYhs
         VqKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=jYbrLzQoosJ6Tr+u0WQBVynlOMRBEO9kFL4X2N2uHXE=;
        fh=/eLg1WRSMCUZDSWP1pQ1tiEX9xsw6hCej8g888v2+f0=;
        b=ONosiLB2kSFWpuSo4Jkkvci0AwyJ2OL4qsVzJFMibfAUpyKRTiHYfdBvFYvPgu7VHM
         Uh+X0y+3Xzi9pwcgd+QYKDnMakka+/snjSLph62x5mJR36D4DgGBWPHtPyfxu2lBZbEY
         nGOT4SavTWGu5oNgPH9IlOB+CguaeKLUZPgeCVQW6NGlS1bzpCcYk9eJ43mwIONmKcPw
         OLC6Qf9+QXyoF87sHY6UGWRGVu1CMNOl8twWbxpLRMhBbnX8/eIzXZR3hJvplInYmpQo
         +Bebh7UPwehsT0oebxafuTFhSv9QaBViwNSAHQULw3mHmPDQymyKeuQ0xCDuXM2GNJuj
         TkbQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="KxpP/WfB";
       spf=pass (google.com: domain of alex.t.tran@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=alex.t.tran@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1756670780; x=1757275580; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jYbrLzQoosJ6Tr+u0WQBVynlOMRBEO9kFL4X2N2uHXE=;
        b=jwPChTUv9OjAfmNO7M3oZ4d4AiVLhMCqxxB7YtEdCXHZB3l2jpCgSjY15i5mdpNdfd
         XFfdJmJK1WFXJPC2dbnn+tYILhU6ABruA5QVs7DM0E2V/B4kPpkk+JMMY577GvPCeOGi
         GXKLfC0ftXAcPpTDrkW3C5M2FHa6eQjYmm/rI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756670780; x=1757275580;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jYbrLzQoosJ6Tr+u0WQBVynlOMRBEO9kFL4X2N2uHXE=;
        b=l9gy90ckmBIXkP/ndEEbFpNFQsJ/fass+MMLXr5g65AZmrphiF/b1Y3y0WdqjMNwIS
         Lw/2vhnAxRS8Hop6mzcOD/89qSahm+NzwiQxJwCrC8I8yFCx+Kmbqw+IvIvj66SFb1iG
         0B0F/mU65Ir/l86YqRLg07i4T35lV469e5snRkmQuvB8yIdWgSO4Y3M/34OcpTQTANeN
         Sip1przEIuYBaD1XGTSbjTeXMfVqcPdaTe2+Mfd+eCjW/c/ffthqVHC8dK2EE21tDlX2
         U7ETZ0npmazFOLGfDdrtaS1DaDENOYceQMez+IAiA5D4vuYvlhCXDPh0TXNAz+uxt3YO
         lXlQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXfAcrrdPE+zTWTL1iZrS33F/rI13iDsTU1781teVqTovVC01zxDvjpw1ppOYH9pYaQOsbMPw==@lfdr.de
X-Gm-Message-State: AOJu0YxDL47RcWMVMlN8nkDo4xhnmpOBBpi33Fqstk77E4vdjIjV7t3s
	hHwgoBiyhmtkmIHrKl0q3QUn2OGR2eaQZUiVZauDPzM6xdGOwQrA1T5KT7DypdvMc70=
X-Google-Smtp-Source: AGHT+IE0S+zxkM6F42O0QQJErYbUdiiwPBbeArxPzVSp1hz1epQIO0gtR9RBqgALawuimV5B5hqQKQ==
X-Received: by 2002:a05:622a:2987:b0:4b2:d357:7a21 with SMTP id d75a77b69052e-4b31d844b87mr64611831cf.26.1756670779744;
        Sun, 31 Aug 2025 13:06:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZeOc1EmwlnqdK8cAtEe3AjmGtommtIeXnCs3SwoDSGR4Q==
Received: by 2002:a05:622a:11d6:b0:4b0:7b0a:5903 with SMTP id
 d75a77b69052e-4b2fe87a378ls66976791cf.2.-pod-prod-07-us; Sun, 31 Aug 2025
 13:06:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXEehjfpbYgLCGDfbv/1sYsg9AXEh/cQKD40VwFb3UhSlT8+UT0OGXmwrUVjEmKXd/nginStMsNF1nmxg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:1aa0:b0:4b3:d6e:c830 with SMTP id d75a77b69052e-4b31d841568mr68813511cf.22.1756670778962;
        Sun, 31 Aug 2025 13:06:18 -0700 (PDT)
Received: by 2002:a05:6808:898d:b0:3f9:f009:458e with SMTP id 5614622812f47-438026eb8f0msb6e;
        Sun, 31 Aug 2025 12:23:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUtxLrI0TxP/aw5gwtGvUbdN5cB1zd9nfAlNgRGj6gnspXbidGlhXUBZ8qi3nv0tWky9SxqspR4IzpTeA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:2f85:b0:327:cec7:b8c6 with SMTP id 98e67ed59e1d1-328156df7acmr6688262a91.32.1756668180112;
        Sun, 31 Aug 2025 12:23:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1756668180; cv=none;
        d=google.com; s=arc-20240605;
        b=TdStMvWmhOH/m2ZUAuFO6nWdUnrdwCsP8dJO9sbhr1XubT9HQ/tlc3z7bwepUBuIvf
         xPKz91sU+CTOezScRr78i6lNBZp+9N6J0qPFqnhIHl1oTm3PT+Y39gWm3Lv9LGGN2Fj+
         /44ldwBGPccnzuOXTFqy+LlIhgGX5d4j+W7m33n6PJC5Gdy8Cd3jb1aAcUQB2B4ypmqN
         N0ftIJLVsfaOlliQuUKXp5T8cws5QFBKLsJRL99eDhYxaF448OhmIznI8YW4Ywhn2nUO
         jd5qRjqMgCKL8ViefmMD51h7Bcow5Dwt4bLXLffx2JJzy00rc9Psh4GagvJsOzbs2LU+
         elPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LYdqga2UZn0l7KZz7GVGu4hJVZ86hvaVSdUZ6IyURfo=;
        fh=Bk8B2w8r6CgAzh/yWrBp0cjw7bPKF3QV8O0ja8nyzWE=;
        b=TGEaTWRiabbAHiPGRSmikkQAd4vV2uTZzTbIY2eGh40t8UltuWWJ0vfpKr/a50w7J6
         p2bMTa5WJjUcIW29HrmDRJW5IkUWsPIa7Iq6VQ7x3vlGc/Xe811mXmlzRPkyH+5/o+d8
         L5e5OWiHgjNL9Sty3FQgHw/5om3uAfRwjv+Lj9LFzadK0HCTf+3qX3HTAP3WscbEM77u
         sA+EMYfNd2mInRBX2H4RJMiTKwLw8wV9PT4FFFouEL2eM8+4UA33BnV+rV1Rmvx68dCY
         M+YJ3txCDKRJ8ci5iCiCQ6rp94qZgxMyvs+t7TdsGTTb9idwd4/xoeL1hUHz6Rk2Pc0T
         CnEQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="KxpP/WfB";
       spf=pass (google.com: domain of alex.t.tran@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=alex.t.tran@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 98e67ed59e1d1-327db2cac29sor5885859a91.8.2025.08.31.12.23.00
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 31 Aug 2025 12:23:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of alex.t.tran@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXZdNbC3Pz9rlCNzkh3yM8rkd4IWXbMBmUf5SSAlckQr/zzU6aiu6KfxJa6AxZnafmlvg/7n1MQy4/YPQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncset2ZzrSkYHtgw2+XtiZMozHkoy+JB0v8VQQmYF8cxB7Qsll1QyG2aHVJa7iJ
	P2iF8ucxSw4asOza9DTIOUIUFKVaWFdHDf/746kyEW69OR+rB5CZcfn2FERvXzhVey9iP32dCGc
	X3pQ23G5pPZRoEMVl7G75GBiFhpheRqBO8+1/gOdow61KQOWROjFO7rA4FF+otUV52WJwRgVGBl
	9rhdFYL4CJjzbaLBLti+1gszEuIePxSfbfGMKl60ne5C1nJ9RpW0b9DH/pjpP8rT8/WhLHQJGa0
	qWcXDlAEKQijdoqtU08Ju00M62gNB/hvqH5MxASNmHfK0hgA37PKvj0NUGQdkS4dYb9u2XcaZDz
	jMR6qaFYqCiHc3ojqRVkYlgUNsSc9FJqndOztw6Lasq2acu/10SxlOJ6zN8ep2y0=
X-Received: by 2002:a17:90b:58a6:b0:327:fb42:2472 with SMTP id 98e67ed59e1d1-328156cc767mr4506361a91.28.1756668179516;
        Sun, 31 Aug 2025 12:22:59 -0700 (PDT)
Received: from fedora ([172.59.162.44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a2b65a2sm8402069b3a.34.2025.08.31.12.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 12:22:59 -0700 (PDT)
From: Alex Tran <alex.t.tran@gmail.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Alex Tran <alex.t.tran@gmail.com>
Subject: [usb-storage] [PATCH v1] usb: storage: sddr09: move write buffers
 into info struct
Date: Sun, 31 Aug 2025 12:22:47 -0700
Message-ID: <20250831192247.1120619-1-alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Original-Sender: Alex.T.Tran@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="KxpP/WfB";       spf=pass
 (google.com: domain of alex.t.tran@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=alex.t.tran@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Changelog:
- Moved allocation of buffers ('blockbuffer', 'buffer') in 
  'sddr09_write_data' into info struct and freeing into 
  'sddr09_card_info_destructor' so that the operations are only 
  performed once.
- 'buffer' length is now size of a full block instead of being 
  dependent on sectors.

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 drivers/usb/storage/sddr09.c | 100 ++++++++++++++++++-----------------
 1 file changed, 51 insertions(+), 49 deletions(-)

diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
index e66b920e9..27c318266 100644
--- a/drivers/usb/storage/sddr09.c
+++ b/drivers/usb/storage/sddr09.c
@@ -255,6 +255,8 @@ struct sddr09_card_info {
 	int		*pba_to_lba;	/* physical to logical map */
 	int		lbact;		/* number of available pages */
 	int		flags;
+	unsigned char	*buffer; /* staging buffer */
+	unsigned char	*blockbuffer; /* bounce buffer */
 #define	SDDR09_WP	1		/* write protected */
 };
 
@@ -847,11 +849,9 @@ sddr09_find_unused_pba(struct sddr09_card_info *info, unsigned int lba) {
 	return 0;
 }
 
-static int
-sddr09_write_lba(struct us_data *us, unsigned int lba,
-		 unsigned int page, unsigned int pages,
-		 unsigned char *ptr, unsigned char *blockbuffer) {
-
+static int sddr09_write_lba(struct us_data *us, unsigned int lba,
+			    unsigned int page, unsigned int pages)
+{
 	struct sddr09_card_info *info = (struct sddr09_card_info *) us->extra;
 	unsigned long address;
 	unsigned int pba, lbap;
@@ -890,13 +890,13 @@ sddr09_write_lba(struct us_data *us, unsigned int lba,
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
+		bptr = info->blockbuffer + i * pagelen;
 		cptr = bptr + info->pagesize;
 		nand_compute_ecc(bptr, ecc);
 		if (!nand_compare_ecc(cptr+13, ecc)) {
@@ -915,9 +915,9 @@ sddr09_write_lba(struct us_data *us, unsigned int lba,
 	}
 
 	/* copy in new stuff and compute ECC */
-	xptr = ptr;
+	xptr = info->buffer;
 	for (i = page; i < page+pages; i++) {
-		bptr = blockbuffer + i*pagelen;
+		bptr = info->blockbuffer + i * pagelen;
 		cptr = bptr + info->pagesize;
 		memcpy(bptr, xptr, info->pagesize);
 		xptr += info->pagesize;
@@ -930,7 +930,7 @@ sddr09_write_lba(struct us_data *us, unsigned int lba,
 	usb_stor_dbg(us, "Rewrite PBA %d (LBA %d)\n", pba, lba);
 
 	result = sddr09_write_inplace(us, address>>1, info->blocksize,
-				      info->pageshift, blockbuffer, 0);
+				      info->pageshift, info->blockbuffer, 0);
 
 	usb_stor_dbg(us, "sddr09_write_inplace returns %d\n", result);
 
@@ -961,9 +961,6 @@ sddr09_write_data(struct us_data *us,
 
 	struct sddr09_card_info *info = (struct sddr09_card_info *) us->extra;
 	unsigned int lba, maxlba, page, pages;
-	unsigned int pagelen, blocklen;
-	unsigned char *blockbuffer;
-	unsigned char *buffer;
 	unsigned int len, offset;
 	struct scatterlist *sg;
 	int result;
@@ -975,35 +972,6 @@ sddr09_write_data(struct us_data *us,
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
-
-	/*
-	 * Since we don't write the user data directly to the device,
-	 * we have to create a bounce buffer and move the data a piece
-	 * at a time between the bounce buffer and the actual transfer buffer.
-	 */
-
-	len = min_t(unsigned int, sectors, info->blocksize) * info->pagesize;
-	buffer = kmalloc(len, GFP_NOIO);
-	if (!buffer) {
-		kfree(blockbuffer);
-		return -ENOMEM;
-	}
-
 	result = 0;
 	offset = 0;
 	sg = NULL;
@@ -1024,11 +992,10 @@ sddr09_write_data(struct us_data *us,
 		}
 
 		/* Get the data from the transfer buffer */
-		usb_stor_access_xfer_buf(buffer, len, us->srb,
-				&sg, &offset, FROM_XFER_BUF);
+		usb_stor_access_xfer_buf(info->buffer, len, us->srb, &sg,
+					 &offset, FROM_XFER_BUF);
 
-		result = sddr09_write_lba(us, lba, page, pages,
-				buffer, blockbuffer);
+		result = sddr09_write_lba(us, lba, page, pages);
 		if (result)
 			break;
 
@@ -1037,9 +1004,6 @@ sddr09_write_data(struct us_data *us,
 		sectors -= pages;
 	}
 
-	kfree(buffer);
-	kfree(blockbuffer);
-
 	return result;
 }
 
@@ -1193,6 +1157,36 @@ sddr09_get_cardinfo(struct us_data *us, unsigned char flags) {
 	return cardinfo;
 }
 
+static int sddr09_init_card_buffers(struct us_data *us)
+{
+	struct sddr09_card_info *info = (struct sddr09_card_info *)us->extra;
+	unsigned int pagelen, blocklen, len;
+
+	/*
+	 * blockbuffer is used for reading in the old data, overwriting
+	 * with the new data, and performing ECC calculations
+	 */
+	pagelen = (1 << info->pageshift) + (1 << CONTROL_SHIFT);
+	blocklen = (pagelen << info->blockshift);
+	info->blockbuffer = kmalloc(blocklen, GFP_NOIO);
+	if (!info->blockbuffer)
+		return -ENOMEM;
+
+	/*
+	 * Since we don't write the user data directly to the device,
+	 * we have to create a bounce buffer and move the data a piece
+	 * at a time between the bounce buffer and the actual transfer buffer.
+	 */
+	len = info->blocksize * info->pagesize;
+	info->buffer = kmalloc(len, GFP_NOIO);
+	if (!info->buffer) {
+		kfree(info->blockbuffer);
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
 static int
 sddr09_read_map(struct us_data *us) {
 
@@ -1403,6 +1397,8 @@ sddr09_card_info_destructor(void *extra) {
 	if (!info)
 		return;
 
+	kfree(info->buffer);
+	kfree(info->blockbuffer);
 	kfree(info->lba_to_pba);
 	kfree(info->pba_to_lba);
 }
@@ -1592,6 +1588,8 @@ static int sddr09_transport(struct scsi_cmnd *srb, struct us_data *us)
 		if (!cardinfo) {
 			/* probably no media */
 		init_error:
+			kfree(info->buffer);
+			kfree(info->blockbuffer);
 			sensekey = 0x02;	/* not ready */
 			sensecode = 0x3a;	/* medium not present */
 			return USB_STOR_TRANSPORT_FAILED;
@@ -1604,6 +1602,10 @@ static int sddr09_transport(struct scsi_cmnd *srb, struct us_data *us)
 		info->blocksize = (1 << info->blockshift);
 		info->blockmask = info->blocksize - 1;
 
+		if (sddr09_init_card_buffers(us)) {
+			goto init_error;
+		}
+
 		// map initialization, must follow get_cardinfo()
 		if (sddr09_read_map(us)) {
 			/* probably out of memory */
-- 
2.51.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250831192247.1120619-1-alex.t.tran%40gmail.com.
