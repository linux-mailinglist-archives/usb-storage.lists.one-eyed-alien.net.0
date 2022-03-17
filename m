Return-Path: <usb-storage+bncBD6LRVPZ6YGRB35YZ2IQMGQERYX6K6I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6DA4DCF7D
	for <lists+usb-storage@lfdr.de>; Thu, 17 Mar 2022 21:39:12 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id e28-20020ac8415c000000b002c5e43ca6b7sf4366501qtm.9
        for <lists+usb-storage@lfdr.de>; Thu, 17 Mar 2022 13:39:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647549551; cv=pass;
        d=google.com; s=arc-20160816;
        b=PAbHUkFdB6jM64G8yBdQdxp2lJEZtzF44pYPhiOf/YigMAjsSTAZ3ODNSB5EzwXZ+2
         d3aXyfwcudYrkpqC7Hi9Y/XGf6hwl0qWAIQGOliV4b6VYnjrWK+mGqPlAs3Ucvc97NLR
         M07+KOIPtVzaS7zgvF+L4AitxJQNCM4rbmXcJlIiVY3PIN1UZzSgSBARlYYUB2MQd3NN
         /Fnh1soCwqU/3wWxX+WgPyKClz6IEa1ctpRFVly0b42ZmCsaC7Ie8HZoHOY1PKPx5/ft
         FB21SkAluuFgpdsLMhFGOC2bG/tB9mt24jwAFE8u66NpaTQ+r10heKeu+Br9OSiKa+LK
         9Lyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sckapN0HnA59pNTj94c8iGR+ahJ1979GzOl1DUX/MYQ=;
        b=v+qXA1jnh/157Hoew4QuVBayEp/XM60AoetIC60dVuXLRza7NeihlgIZYc/LYCjM1M
         bxmnbQ3WARpwp/1s3hDbKjtM2GgmYSJNycgxnP1hdZnTwtyw1s/y8LTH9+JFEPoczxWg
         ur/QynDJ60l3ALp6E1Y2GsNXfWP2/J2moFbQxbWC6ibd9EtQLkvfYQj06YKw5QlJnuYw
         GLCxG/rNA76wLU4pJoZTBHduZtpPtcyIEk4rKGCQYcix3TNiGOzRFTKGEryWzZpyvf/D
         A6tsqKdBSOa1QlkILeY8AzkNDmNod/A7bk595bmmSqbiT3X/ep3/g4j/MasiNaQ7E/Nk
         Pf7Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sckapN0HnA59pNTj94c8iGR+ahJ1979GzOl1DUX/MYQ=;
        b=kThW4s9rGXoC+BsMHmrQbAtk7kx+Ehfy5pHU8V2qtzQgfynVxpiFvZNvQ4KPqLV+t7
         delgjFnketSIYOpuAZaeh14DSJc3jGQoNHB+K3ze0ckz8gOLlTYWPcxV2Rtj+hIc2v9F
         nrhu5KyoR0lNyFZb0P2PCNZsAWUUglwN9km64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sckapN0HnA59pNTj94c8iGR+ahJ1979GzOl1DUX/MYQ=;
        b=wsEmhylrGsEbOKA9hfL1BAaFIu1TD2LgB9MbghtBhLMWvHhpJzUOUXyuj2c+1C82F3
         0yyTxNxcAA7P6EdK8c5P5G+IPjnxhXsjDuOPr/yr7oW3sEqa7SdfwfGRymCv/g0LXItV
         Bw1fJoQZUme57lO0pQtDNs4YNtqNR1TbjQ9847zlv8lvymLzqvF/HKrybBVA096JuRDF
         4oQBmG8acdKUe9tMg65531DYF0bRwYhnO21O1z8xJfHWsrHCQG3DWFtbrWVSqqELMjYX
         PdaVGiU72dyPyTkk1cyQ4OOdTbcjeP1qfdaG+V7xqE4OS5r5Oafr27aZpNPEHoZ2C18e
         CeRQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532QaUujtaaV/woZ7rRcOaHvI3f8kBM3vxP153VELhVp2o+DSByN
	EzFd+qX/zt06+nk/DTssbNjeFA==
X-Google-Smtp-Source: ABdhPJzbURq7wQy+h2vX5DRXkRO2Nmvj8piVA2nS0qEa1M34eHO84gUR1enoBA4oQMFNse8JmDor0w==
X-Received: by 2002:a05:6214:2a8c:b0:435:3386:5c19 with SMTP id jr12-20020a0562142a8c00b0043533865c19mr4578022qvb.105.1647549551561;
        Thu, 17 Mar 2022 13:39:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:18a2:b0:2e1:cc19:bb80 with SMTP id
 v34-20020a05622a18a200b002e1cc19bb80ls3417819qtc.3.gmail; Thu, 17 Mar 2022
 13:39:11 -0700 (PDT)
X-Received: by 2002:a05:622a:349:b0:2e1:b9e9:7598 with SMTP id r9-20020a05622a034900b002e1b9e97598mr5291702qtw.146.1647549551017;
        Thu, 17 Mar 2022 13:39:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647549551; cv=none;
        d=google.com; s=arc-20160816;
        b=Po4KiugGUHfxKmN1y3d+FuTH5kk+pG91grVUa1CK6DBdplKFyRALC5C/QF7rvy3YYU
         bTJ+0kQsg/XnKsi1x7aZpK2sYx83aEPIuqSdzDIBXcRYVTjjD+S3GJqAByOKK5CMiGkz
         E/l9FRAF/cUZ/jvTdK8shNhdkKOQB7Q0x89rHJWGjRAUwSDEyyKV44O6jHJ588ZO8ZQp
         5s4QXz0w/tXlhvuZfeptMYgH/rGvr0BNGAZkujlT00GomDz/04jsfcIa0NaEXR2+r4W5
         a+fdq8/Lu7YHA3EEzkz6DhgYXK2wXkmH/7HWALpQVl/3uqn01xf6GZwUj2Gj51MT5uSI
         V8RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=b6bYqn6saFDZyxFy1XqfvZSd7ww0H4QSlUWhXkkRnqY=;
        b=CsdWMhOCo8eHd39ypMMQYq3Zd6ZcbgPAGEvgRkKVNemze+PBtSgOwauyBD6SAkrmpL
         QOhZ7Eqt+riMnB5IzMjDTM5AXwKwmKdCvPpQ5slK2neJGeEvpurovx6w6WBSiqKTwzcu
         LNiFstHNY2n3I4xBvyKirrvaIlOGUvQfJ/pvMkJOjUkk4zY+bv8NYu2MwMsYc2Y0Wzqf
         CjQpEUUoI6BKel/JpeG0L7O8iZNeZt0iHd/ctc54tPPUhlBf/7bNVQrojMYbJIsGIpXZ
         iJE6PdOFAoHTn76XrIxbvWb+wF3GbZRvg4MVu46Z8oz7V8SkUrDZJjtcHFFB1awrm5b4
         SPAw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id u14-20020a05620a454e00b0067d5591ebb4si1996968qkp.124.2022.03.17.13.39.10
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 17 Mar 2022 13:39:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 9384 invoked by uid 1000); 17 Mar 2022 16:39:10 -0400
Date: Thu, 17 Mar 2022 16:39:10 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: kernel test robot <lkp@intel.com>,
  USB mailing list <linux-usb@vger.kernel.org>,
  USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH] USB: usb-storage: Fix use of bitfields for
 hardware data in ene_ub6250.c
Message-ID: <YjOcbuU106UpJ/V8@rowland.harvard.edu>
References: <6232d299.9omOW8g6S6l31UFc%lkp@intel.com>
 <YjNfHsqfjPqBMejZ@rowland.harvard.edu>
 <CAHk-=whkHmpA2FM6Ve8bUu7hcyWBLznQU8RJzOdpfa-0EVPCpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whkHmpA2FM6Ve8bUu7hcyWBLznQU8RJzOdpfa-0EVPCpQ@mail.gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
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

The kernel test robot found a problem with the ene_ub6250 subdriver in
usb-storage: It uses structures containing bitfields to represent
hardware bits in its SD_STATUS, MS_STATUS, and SM_STATUS bytes.  This
is not safe; it presumes a particular bit ordering and it assumes the
compiler will not insert padding, neither of which is guaranteed.

This patch fixes the problem by changing the structures to simple u8
values, with the bitfields replaced by bitmask constants.

Signed-off-by: Alan Stern <stern@rowland.harvard.edu>
CC: <stable@vger.kernel.org>

---

Compile-tested only; I do not have this hardware.  Probably almost 
nobody does, nowadays.  :-)


[as1975]


 drivers/usb/storage/ene_ub6250.c |  153 +++++++++++++++++++--------------------
 1 file changed, 75 insertions(+), 78 deletions(-)

Index: usb-devel/drivers/usb/storage/ene_ub6250.c
===================================================================
--- usb-devel.orig/drivers/usb/storage/ene_ub6250.c
+++ usb-devel/drivers/usb/storage/ene_ub6250.c
@@ -237,36 +237,33 @@ static struct us_unusual_dev ene_ub6250_
 #define memstick_logaddr(logadr1, logadr0) ((((u16)(logadr1)) << 8) | (logadr0))
 
 
-struct SD_STATUS {
-	u8    Insert:1;
-	u8    Ready:1;
-	u8    MediaChange:1;
-	u8    IsMMC:1;
-	u8    HiCapacity:1;
-	u8    HiSpeed:1;
-	u8    WtP:1;
-	u8    Reserved:1;
-};
-
-struct MS_STATUS {
-	u8    Insert:1;
-	u8    Ready:1;
-	u8    MediaChange:1;
-	u8    IsMSPro:1;
-	u8    IsMSPHG:1;
-	u8    Reserved1:1;
-	u8    WtP:1;
-	u8    Reserved2:1;
-};
-
-struct SM_STATUS {
-	u8    Insert:1;
-	u8    Ready:1;
-	u8    MediaChange:1;
-	u8    Reserved:3;
-	u8    WtP:1;
-	u8    IsMS:1;
-};
+/* SD_STATUS bits */
+#define SD_Insert	BIT(0)
+#define SD_Ready	BIT(1)
+#define SD_MediaChange	BIT(2)
+#define SD_IsMMC	BIT(3)
+#define SD_HiCapacity	BIT(4)
+#define SD_HiSpeed	BIT(5)
+#define SD_WtP		BIT(6)
+			/* Bit 7 reserved */
+
+/* MS_STATUS bits */
+#define MS_Insert	BIT(0)
+#define MS_Ready	BIT(1)
+#define MS_MediaChange	BIT(2)
+#define MS_IsMSPro	BIT(3)
+#define MS_IsMSPHG	BIT(4)
+			/* Bit 5 reserved */
+#define MS_WtP		BIT(6)
+			/* Bit 7 reserved */
+
+/* SM_STATUS bits */
+#define SM_Insert	BIT(0)
+#define SM_Ready	BIT(1)
+#define SM_MediaChange	BIT(2)
+			/* Bits 3-5 reserved */
+#define SM_WtP		BIT(6)
+#define SM_IsMS		BIT(7)
 
 struct ms_bootblock_cis {
 	u8 bCistplDEVICE[6];    /* 0 */
@@ -437,9 +434,9 @@ struct ene_ub6250_info {
 	u8		*bbuf;
 
 	/* for 6250 code */
-	struct SD_STATUS	SD_Status;
-	struct MS_STATUS	MS_Status;
-	struct SM_STATUS	SM_Status;
+	u8		SD_Status;
+	u8		MS_Status;
+	u8		SM_Status;
 
 	/* ----- SD Control Data ---------------- */
 	/*SD_REGISTER SD_Regs; */
@@ -602,7 +599,7 @@ static int sd_scsi_test_unit_ready(struc
 {
 	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
 
-	if (info->SD_Status.Insert && info->SD_Status.Ready)
+	if ((info->SD_Status & SD_Insert) && (info->SD_Status & SD_Ready))
 		return USB_STOR_TRANSPORT_GOOD;
 	else {
 		ene_sd_init(us);
@@ -622,7 +619,7 @@ static int sd_scsi_mode_sense(struct us_
 		0x0b, 0x00, 0x80, 0x08, 0x00, 0x00,
 		0x71, 0xc0, 0x00, 0x00, 0x02, 0x00 };
 
-	if (info->SD_Status.WtP)
+	if (info->SD_Status & SD_WtP)
 		usb_stor_set_xfer_buf(mediaWP, 12, srb);
 	else
 		usb_stor_set_xfer_buf(mediaNoWP, 12, srb);
@@ -641,9 +638,9 @@ static int sd_scsi_read_capacity(struct
 	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
 
 	usb_stor_dbg(us, "sd_scsi_read_capacity\n");
-	if (info->SD_Status.HiCapacity) {
+	if (info->SD_Status & SD_HiCapacity) {
 		bl_len = 0x200;
-		if (info->SD_Status.IsMMC)
+		if (info->SD_Status & SD_IsMMC)
 			bl_num = info->HC_C_SIZE-1;
 		else
 			bl_num = (info->HC_C_SIZE + 1) * 1024 - 1;
@@ -693,7 +690,7 @@ static int sd_scsi_read(struct us_data *
 		return USB_STOR_TRANSPORT_ERROR;
 	}
 
-	if (info->SD_Status.HiCapacity)
+	if (info->SD_Status & SD_HiCapacity)
 		bnByte = bn;
 
 	/* set up the command wrapper */
@@ -733,7 +730,7 @@ static int sd_scsi_write(struct us_data
 		return USB_STOR_TRANSPORT_ERROR;
 	}
 
-	if (info->SD_Status.HiCapacity)
+	if (info->SD_Status & SD_HiCapacity)
 		bnByte = bn;
 
 	/* set up the command wrapper */
@@ -1456,7 +1453,7 @@ static int ms_scsi_test_unit_ready(struc
 	struct ene_ub6250_info *info = (struct ene_ub6250_info *)(us->extra);
 
 	/* pr_info("MS_SCSI_Test_Unit_Ready\n"); */
-	if (info->MS_Status.Insert && info->MS_Status.Ready) {
+	if ((info->MS_Status & MS_Insert) && (info->MS_Status & MS_Ready)) {
 		return USB_STOR_TRANSPORT_GOOD;
 	} else {
 		ene_ms_init(us);
@@ -1476,7 +1473,7 @@ static int ms_scsi_mode_sense(struct us_
 		0x0b, 0x00, 0x80, 0x08, 0x00, 0x00,
 		0x71, 0xc0, 0x00, 0x00, 0x02, 0x00 };
 
-	if (info->MS_Status.WtP)
+	if (info->MS_Status & MS_WtP)
 		usb_stor_set_xfer_buf(mediaWP, 12, srb);
 	else
 		usb_stor_set_xfer_buf(mediaNoWP, 12, srb);
@@ -1495,7 +1492,7 @@ static int ms_scsi_read_capacity(struct
 
 	usb_stor_dbg(us, "ms_scsi_read_capacity\n");
 	bl_len = 0x200;
-	if (info->MS_Status.IsMSPro)
+	if (info->MS_Status & MS_IsMSPro)
 		bl_num = info->MSP_TotalBlock - 1;
 	else
 		bl_num = info->MS_Lib.NumberOfLogBlock * info->MS_Lib.blockSize * 2 - 1;
@@ -1650,7 +1647,7 @@ static int ms_scsi_read(struct us_data *
 	if (bn > info->bl_num)
 		return USB_STOR_TRANSPORT_ERROR;
 
-	if (info->MS_Status.IsMSPro) {
+	if (info->MS_Status & MS_IsMSPro) {
 		result = ene_load_bincode(us, MSP_RW_PATTERN);
 		if (result != USB_STOR_XFER_GOOD) {
 			usb_stor_dbg(us, "Load MPS RW pattern Fail !!\n");
@@ -1751,7 +1748,7 @@ static int ms_scsi_write(struct us_data
 	if (bn > info->bl_num)
 		return USB_STOR_TRANSPORT_ERROR;
 
-	if (info->MS_Status.IsMSPro) {
+	if (info->MS_Status & MS_IsMSPro) {
 		result = ene_load_bincode(us, MSP_RW_PATTERN);
 		if (result != USB_STOR_XFER_GOOD) {
 			pr_info("Load MSP RW pattern Fail !!\n");
@@ -1859,12 +1856,12 @@ static int ene_get_card_status(struct us
 
 	tmpreg = (u16) reg4b;
 	reg4b = *(u32 *)(&buf[0x14]);
-	if (info->SD_Status.HiCapacity && !info->SD_Status.IsMMC)
+	if ((info->SD_Status & SD_HiCapacity) && !(info->SD_Status & SD_IsMMC))
 		info->HC_C_SIZE = (reg4b >> 8) & 0x3fffff;
 
 	info->SD_C_SIZE = ((tmpreg & 0x03) << 10) | (u16)(reg4b >> 22);
 	info->SD_C_SIZE_MULT = (u8)(reg4b >> 7)  & 0x07;
-	if (info->SD_Status.HiCapacity && info->SD_Status.IsMMC)
+	if ((info->SD_Status & SD_HiCapacity) && (info->SD_Status & SD_IsMMC))
 		info->HC_C_SIZE = *(u32 *)(&buf[0x100]);
 
 	if (info->SD_READ_BL_LEN > SD_BLOCK_LEN) {
@@ -2076,6 +2073,7 @@ static int ene_ms_init(struct us_data *u
 	u16 MSP_BlockSize, MSP_UserAreaBlocks;
 	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
 	u8 *bbuf = info->bbuf;
+	unsigned int s;
 
 	printk(KERN_INFO "transport --- ENE_MSInit\n");
 
@@ -2100,15 +2098,16 @@ static int ene_ms_init(struct us_data *u
 		return USB_STOR_TRANSPORT_ERROR;
 	}
 	/* the same part to test ENE */
-	info->MS_Status = *(struct MS_STATUS *) bbuf;
+	info->MS_Status = bbuf[0];
 
-	if (info->MS_Status.Insert && info->MS_Status.Ready) {
-		printk(KERN_INFO "Insert     = %x\n", info->MS_Status.Insert);
-		printk(KERN_INFO "Ready      = %x\n", info->MS_Status.Ready);
-		printk(KERN_INFO "IsMSPro    = %x\n", info->MS_Status.IsMSPro);
-		printk(KERN_INFO "IsMSPHG    = %x\n", info->MS_Status.IsMSPHG);
-		printk(KERN_INFO "WtP= %x\n", info->MS_Status.WtP);
-		if (info->MS_Status.IsMSPro) {
+	s = info->MS_Status;
+	if ((s & MS_Insert) && (s & MS_Ready)) {
+		printk(KERN_INFO "Insert     = %x\n", !!(s & MS_Insert));
+		printk(KERN_INFO "Ready      = %x\n", !!(s & MS_Ready));
+		printk(KERN_INFO "IsMSPro    = %x\n", !!(s & MS_IsMSPro));
+		printk(KERN_INFO "IsMSPHG    = %x\n", !!(s & MS_IsMSPHG));
+		printk(KERN_INFO "WtP= %x\n", !!(s & MS_WtP));
+		if (s & MS_IsMSPro) {
 			MSP_BlockSize      = (bbuf[6] << 8) | bbuf[7];
 			MSP_UserAreaBlocks = (bbuf[10] << 8) | bbuf[11];
 			info->MSP_TotalBlock = MSP_BlockSize * MSP_UserAreaBlocks;
@@ -2169,17 +2168,17 @@ static int ene_sd_init(struct us_data *u
 		return USB_STOR_TRANSPORT_ERROR;
 	}
 
-	info->SD_Status =  *(struct SD_STATUS *) bbuf;
-	if (info->SD_Status.Insert && info->SD_Status.Ready) {
-		struct SD_STATUS *s = &info->SD_Status;
+	info->SD_Status = bbuf[0];
+	if ((info->SD_Status & SD_Insert) && (info->SD_Status & SD_Ready)) {
+		unsigned int s = info->SD_Status;
 
 		ene_get_card_status(us, bbuf);
-		usb_stor_dbg(us, "Insert     = %x\n", s->Insert);
-		usb_stor_dbg(us, "Ready      = %x\n", s->Ready);
-		usb_stor_dbg(us, "IsMMC      = %x\n", s->IsMMC);
-		usb_stor_dbg(us, "HiCapacity = %x\n", s->HiCapacity);
-		usb_stor_dbg(us, "HiSpeed    = %x\n", s->HiSpeed);
-		usb_stor_dbg(us, "WtP        = %x\n", s->WtP);
+		usb_stor_dbg(us, "Insert     = %x\n", !!(s & SD_Insert));
+		usb_stor_dbg(us, "Ready      = %x\n", !!(s & SD_Ready));
+		usb_stor_dbg(us, "IsMMC      = %x\n", !!(s & SD_IsMMC));
+		usb_stor_dbg(us, "HiCapacity = %x\n", !!(s & SD_HiCapacity));
+		usb_stor_dbg(us, "HiSpeed    = %x\n", !!(s & SD_HiSpeed));
+		usb_stor_dbg(us, "WtP        = %x\n", !!(s & SD_WtP));
 	} else {
 		usb_stor_dbg(us, "SD Card Not Ready --- %x\n", bbuf[0]);
 		return USB_STOR_TRANSPORT_ERROR;
@@ -2201,14 +2200,14 @@ static int ene_init(struct us_data *us)
 
 	misc_reg03 = bbuf[0];
 	if (misc_reg03 & 0x01) {
-		if (!info->SD_Status.Ready) {
+		if (!(info->SD_Status & SD_Ready)) {
 			result = ene_sd_init(us);
 			if (result != USB_STOR_XFER_GOOD)
 				return USB_STOR_TRANSPORT_ERROR;
 		}
 	}
 	if (misc_reg03 & 0x02) {
-		if (!info->MS_Status.Ready) {
+		if (!(info->MS_Status & MS_Ready)) {
 			result = ene_ms_init(us);
 			if (result != USB_STOR_XFER_GOOD)
 				return USB_STOR_TRANSPORT_ERROR;
@@ -2307,14 +2306,14 @@ static int ene_transport(struct scsi_cmn
 
 	/*US_DEBUG(usb_stor_show_command(us, srb)); */
 	scsi_set_resid(srb, 0);
-	if (unlikely(!(info->SD_Status.Ready || info->MS_Status.Ready)))
+	if (unlikely(!(info->SD_Status & SD_Ready) || (info->MS_Status & MS_Ready)))
 		result = ene_init(us);
 	if (result == USB_STOR_XFER_GOOD) {
 		result = USB_STOR_TRANSPORT_ERROR;
-		if (info->SD_Status.Ready)
+		if (info->SD_Status & SD_Ready)
 			result = sd_scsi_irp(us, srb);
 
-		if (info->MS_Status.Ready)
+		if (info->MS_Status & MS_Ready)
 			result = ms_scsi_irp(us, srb);
 	}
 	return result;
@@ -2378,7 +2377,6 @@ static int ene_ub6250_probe(struct usb_i
 
 static int ene_ub6250_resume(struct usb_interface *iface)
 {
-	u8 tmp = 0;
 	struct us_data *us = usb_get_intfdata(iface);
 	struct ene_ub6250_info *info = (struct ene_ub6250_info *)(us->extra);
 
@@ -2390,17 +2388,16 @@ static int ene_ub6250_resume(struct usb_
 	mutex_unlock(&us->dev_mutex);
 
 	info->Power_IsResum = true;
-	/*info->SD_Status.Ready = 0; */
-	info->SD_Status = *(struct SD_STATUS *)&tmp;
-	info->MS_Status = *(struct MS_STATUS *)&tmp;
-	info->SM_Status = *(struct SM_STATUS *)&tmp;
+	/* info->SD_Status &= ~SD_Ready; */
+	info->SD_Status = 0;
+	info->MS_Status = 0;
+	info->SM_Status = 0;
 
 	return 0;
 }
 
 static int ene_ub6250_reset_resume(struct usb_interface *iface)
 {
-	u8 tmp = 0;
 	struct us_data *us = usb_get_intfdata(iface);
 	struct ene_ub6250_info *info = (struct ene_ub6250_info *)(us->extra);
 
@@ -2412,10 +2409,10 @@ static int ene_ub6250_reset_resume(struc
 	 * the device
 	 */
 	info->Power_IsResum = true;
-	/*info->SD_Status.Ready = 0; */
-	info->SD_Status = *(struct SD_STATUS *)&tmp;
-	info->MS_Status = *(struct MS_STATUS *)&tmp;
-	info->SM_Status = *(struct SM_STATUS *)&tmp;
+	/* info->SD_Status &= ~SD_Ready; */
+	info->SD_Status = 0;
+	info->MS_Status = 0;
+	info->SM_Status = 0;
 
 	return 0;
 }

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YjOcbuU106UpJ/V8%40rowland.harvard.edu.
